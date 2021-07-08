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
    def self.initialize(method, name, value)
      if !@@is_initialized
        version = ""
        begin
          version = SpecUtils.api.download_file("TempTests/version.txt")
        rescue AsposeSlidesCloud::ApiError => e
          if e.code != 404
            fail "Could not read from storage"
          end
        end
        if version != EXPECTED_TEST_DATA_VERSION
          Dir.entries(TEST_DATA_PATH).each { |f|
            if !File.directory? File.join(TEST_DATA_PATH, f)
              fd = File.binread(File.join(TEST_DATA_PATH, f))
              SpecUtils.api.upload_file("TempTests/" + f, fd)
            end
          }
          SpecUtils.api.upload_file("TempTests/version.txt", EXPECTED_TEST_DATA_VERSION)
        end
        @@is_initialized = true
      end
      files = Hash.new
      SpecUtils.test_rules["Files"].each do |rule|
        if SpecUtils.good_rule?(rule, name, method)
          actual_name = SpecUtils.untemplatize(rule["File"], value)
          path = "TempSlidesSDK"
          if rule.key?("Folder")
            path = SpecUtils.untemplatize(rule["Folder"], value)
          end
          path = path + "/" + actual_name
          files[path] = rule
          rule["ActualName"] = actual_name
        end
      end
      files.each do |path, rule|
        if rule["Action"] == "Put"
          SpecUtils.api.copy_file("TempTests/" + rule['ActualName'], path)
        elsif rule["Action"] == "Delete"
          SpecUtils.api.delete_file(path)
        end
      end
    end

    def self.get_param_value(name, method, type)
      if type == 'File'
        fileName = "test.pptx"
        if method.casecmp("ImportFromPdf") == 0
          fileName = "test.pdf"
        elsif name.casecmp("Image") == 0
          fileName = "watermark.png"
        end
        return File.binread(File.join(TEST_DATA_PATH, fileName))
      end
      if type == 'File[]'
        files = []
        files.push(File.binread(File.join(AsposeSlidesCloud::SpecUtils::TEST_DATA_PATH, "test.pptx")))
        files.push(File.binread(File.join(AsposeSlidesCloud::SpecUtils::TEST_DATA_PATH, "test-unprotected.pptx")))
        return files
      end
      value = "test" + name
      SpecUtils.test_rules["Values"].each do |rule|
        if SpecUtils.good_rule?(rule, name, method) and rule.key?("Value")
          value = rule["Value"]
        end
      end
      value
    end

    def self.invalidize_param_value(name, method, value, type)
      if type == 'File'
        return nil
      end
      invalid_value = nil
      SpecUtils.test_rules["Values"].each do |rule|
        if SpecUtils.good_rule?(rule, name, method) and rule.key?("InvalidValue")
          invalid_value = rule["InvalidValue"]
        end
      end
      SpecUtils.untemplatize(invalid_value, value)
    end

    def self.get_expected_error(method, name, value)
      code = 0
      message = "Unexpeceted message"
      SpecUtils.test_rules["Results"].each do |rule|
        if SpecUtils.good_rule?(rule, name, method)
          if rule.key?("Code")
            code = rule["Code"]
          end
          if rule.key?("Message")
            message = SpecUtils.untemplatize(rule["Message"], value)
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

    def self.good_rule?(rule, name, method)
      (not rule.key?("Language") or rule["Language"].casecmp("Ruby") == 0) \
        and (not rule.key?("Invalid") or ((name != nil) == rule["Invalid"])) \
        and (not rule.key?("Parameter") or (name != nil and rule["Parameter"].casecmp(name) == 0)) \
        and (not rule.key?("Method") or (method != nil and rule["Method"].casecmp(method) == 0))
    end

    def self.untemplatize(template, value)
      if template == nil
        value
      else
        result = template
        if template.is_a? String and template.match("%v")
          result = "" + template
          if value != nil
            result["%v"] = value.to_s
          else
            result["%v"] = ""
          end
        end
        result
      end
    end

    def self.test_rules
      unless @@test_rules
        @@test_rules = JSON.parse(File.read('testRules.json'))
      end
      @@test_rules
    end

    @@test_rules = nil

    def self.api
      unless @@api
        config = JSON.parse(File.read('testConfig.json'))
        configuration = AsposeSlidesCloud::Configuration.new
        configuration.base_url = config["BaseUrl"]
        configuration.auth_base_url = config["AuthBaseUrl"] ? config["AuthBaseUrl"] : config["BaseUrl"]
        configuration.app_sid = config["ClientId"]
        configuration.app_key = config["ClientSecret"]
        configuration.debugging = config["Debug"]
        @@api = AsposeSlidesCloud::SlidesApi.new(configuration)
      end
      @@api
    end

    @@api = nil
    @@is_initialized = false

    TEST_DATA_PATH = "TestData"
    EXPECTED_TEST_DATA_VERSION = "1"
  end
end
