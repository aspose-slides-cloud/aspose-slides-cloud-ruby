=begin
Copyright (c) 2019 Aspose Pty Ltd

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
=end

module AsposeSlidesCloud
  class SpecUtils
    def self.getOperationId()
      unless @@operation_id
        source_file = File.binread("TestData/test.pptx")
        @@operation_id = SpecUtils.testSlidesAsyncApi.start_convert(source_file, AsposeSlidesCloud::ExportFormat::PDF, "password")
        sleep(10)
      end
      @@operation_id
    end

    def self.initialize(method, name, value)
      if !@@is_initialized
        version = ""
        begin
          version = SpecUtils.testSlidesApi.download_file("TempTests/version.txt")
        rescue AsposeSlidesCloud::ApiError => e
          if e.code != 404
            fail "Could not read from storage"
          end
        end
        if version != EXPECTED_TEST_DATA_VERSION
          Dir.entries(TEST_DATA_PATH).each { |f|
            if !File.directory? File.join(TEST_DATA_PATH, f)
              fd = File.binread(File.join(TEST_DATA_PATH, f))
              SpecUtils.testSlidesApi.upload_file("TempTests/" + f, fd)
            end
          }
          SpecUtils.testSlidesApi.upload_file("TempTests/version.txt", EXPECTED_TEST_DATA_VERSION)
        end
        @@is_initialized = true
      end
      files = Hash.new
      SpecUtils.test_rules["Files"].each do |rule|
        if SpecUtils.good_rule?(rule, name, method, nil)
          actual_name = SpecUtils.untemplatize(rule["File"], name, value)
          path = "TempSlidesSDK"
          if rule.key?("Folder")
            path = SpecUtils.untemplatize(rule["Folder"], name, value)
          end
          path = path + "/" + actual_name
          files[path] = rule
          rule["ActualName"] = actual_name
        end
      end
      files.each do |path, rule|
        if rule["Action"] == "Put"
          SpecUtils.testSlidesApi.copy_file("TempTests/" + rule['ActualName'], path)
        elsif rule["Action"] == "Delete"
          SpecUtils.testSlidesApi.delete_file(path)
          SpecUtils.testSlidesApi.delete_folder(path)
        end
      end
    end

    def self.get_param_value(name, method, type)
      value = nil
      SpecUtils.test_rules["Values"].each do |rule|
        if SpecUtils.good_rule?(rule, name, method, type) and rule.key?("Value")
          value = rule["Value"]
        end
      end
      SpecUtils.untemplatize(value, name, nil)
    end

    def self.invalidize_param_value(name, method, value, type)
      invalid_value = nil
      SpecUtils.test_rules["Values"].each do |rule|
        if SpecUtils.good_rule?(rule, name, method, type) and rule.key?("InvalidValue")
          invalid_value = rule["InvalidValue"]
        end
      end
      SpecUtils.untemplatize(invalid_value, name, value)
    end

    def self.get_expected_error(method, name, value, type)
      code = 0
      message = "Unexpeceted message"
      SpecUtils.test_rules["Results"].each do |rule|
        if SpecUtils.good_rule?(rule, name, method, type)
          if rule.key?("Code")
            code = rule["Code"]
          end
          if rule.key?("Message")
            message = SpecUtils.untemplatize(rule["Message"], name, value)
          end
        end
      end
      return code, message
    end

    def self.no_exception?(method, name)
      SpecUtils.test_rules["OKToNotFail"].each do |rule|
        return true
      end
      return false
    end

    def self.good_rule?(rule, name, method, type)
      SpecUtils.good_rule_key?(rule, "Language", "Ruby") \
        and (not rule.key?("Invalid") or ((name != nil) == rule["Invalid"])) \
        and SpecUtils.good_rule_key?(rule, "Parameter", name) \
        and SpecUtils.good_rule_key?(rule, "Method", method) \
        and SpecUtils.good_rule_type?(rule, type)
    end

    def self.good_rule_key?(rule, key, value)
      if not rule.key?(key)
        return true
      end
      if not value
        return false
      end
      if rule[key].start_with?("/") and rule[key].end_with?("/")
        return value =~ /#{rule[key][1..-2]}/i
      end
      return rule[key].casecmp(value) == 0
    end

    def self.good_rule_type?(rule, type)
      if not rule.key?("Type")
        return true
      end
      if not type
        return false
      end
      if rule["Type"] == "bool"
        return type == "BOOLEAN"
      end
      if rule["Type"] == "number"
        return type == "Integer" || type == "Float"
      end
      if rule["Type"] == "int"
        return type == "Integer"
      end
      if rule["Type"] == "int[]"
        return type == "Integer[]"
      end
      if rule["Type"] == "stream"
        return type == "File"
      end
      if rule["Type"] == "stream[]"
        return type == "File[]"
      end
      if rule["Type"] == "model"
        return !TypeRegistry.type_determiners[type.to_sym].nil?
      end
      if !TypeRegistry.type_determiners[rule["Type"].to_sym].nil?
        return TypeRegistry.subclass?(rule["Type"], type)
      end
      return false
    end

    def self.untemplatize(template, name, value)
      if template == nil
        value
      else
        result = template
        if template.is_a? String
          result = "" + template
          if template.start_with?("@")
            file_name = result[1..-1]
            if file_name.start_with?("(") and file_name.end_with?(")")
              result = file_name[1..-2].split(",").map {|f| File.binread(File.join(AsposeSlidesCloud::SpecUtils::TEST_DATA_PATH, f)) }
            else
              result = File.binread(File.join(AsposeSlidesCloud::SpecUtils::TEST_DATA_PATH, file_name))
            end
          elsif template == "#OperationId"
            return SpecUtils.getOperationId()
          elsif template == "#NewId"
            return "96b0a57c-d9ae-453f-b56f-3b154eb10cda"
          else
            result = SpecUtils.replace(result, "%n", name)
            result = SpecUtils.replace(result, "%v", value)
          end
        end
        result
      end
    end

    def self.replace(template, oldValue, newValue)
      if template.match(oldValue)
        if newValue != nil
          template[oldValue] = newValue.to_s
        else
          template[oldValue] = ""
        end
      end
      template
    end

    def self.test_rules
      unless @@test_rules
        @@test_rules = JSON.parse(File.read('testRules.json'))
      end
      @@test_rules
    end

    @@test_rules = nil

    def self.testSlidesApi
      unless @@api
        config = JSON.parse(File.read('testConfig.json'))
        configuration = AsposeSlidesCloud::Configuration.new
        configuration.base_url = config["BaseUrl"]
        configuration.auth_base_url = config["AuthBaseUrl"] ? config["AuthBaseUrl"] : config["BaseUrl"]
        configuration.app_sid = config["ClientId"]
        configuration.app_key = config["ClientSecret"]
        configuration.debugging = config["Debug"]
        configuration.verify_ssl = !config["AllowInsecureRequests"]
        @@api = AsposeSlidesCloud::SlidesApi.new(configuration)
      end
      @@api
    end

    def self.testSlidesAsyncApi
      unless @@asyncApi
        config = JSON.parse(File.read('testConfig.json'))
        configuration = AsposeSlidesCloud::Configuration.new
        configuration.base_url = config["AsyncBaseUrl"] ? config["AsyncBaseUrl"] : config["BaseUrl"]
        configuration.auth_base_url = config["AuthBaseUrl"] ? config["AuthBaseUrl"] : config["BaseUrl"]
        configuration.app_sid = config["ClientId"]
        configuration.app_key = config["ClientSecret"]
        configuration.debugging = config["Debug"]
        configuration.verify_ssl = !config["AllowInsecureRequests"]
        @@asyncApi = AsposeSlidesCloud::SlidesAsyncApi.new(configuration)
      end
      @@asyncApi
    end

    @@api = nil
    @@asyncApi = nil
    @@is_initialized = false
    @@operation_id = nil

    TEST_DATA_PATH = "TestData"
    EXPECTED_TEST_DATA_VERSION = "1"
  end
end
