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

require 'date'
require 'json'
require 'logger'
require 'tempfile'
require 'faraday'
require 'faraday/httpclient'
require 'uri'
require 'warning'

Faraday.default_adapter = :httpclient
# Suppress warning on unknown cookie from httpclient.webagent-cookie
Warning.ignore(/Unknown key: SameSite =/)

module AsposeSlidesCloud
  class ApiClient
    # The Configuration object holding settings to be used in the API client.
    attr_accessor :config

    # Defines the headers to be used in HTTP requests of all API calls by default.
    #
    # @return [Hash]
    attr_accessor :default_headers

    # Initializes the ApiClient
    # @option config [Configuration] Configuration for initializing the object, default to Configuration.default
    def initialize(config = Configuration.default)
      @config = config
    end

    def self.default
      @@default ||= ApiClient.new
    end

    # Call an API with given options.
    #
    # @return [Array<(Object, Fixnum, Hash)>] an array of 3 elements:
    #   the data deserialized from response body (could be nil), response status code and response headers.
    def call_api(http_method, path, opts = {})
      response = call_api_method(http_method, path, opts)
      if @config.debugging
        @config.logger.debug "HTTP response\nHeaders: #{response.headers}\nStatus: #{response.status}\n"
        if response.headers.has_key?("Content-Type") && (response.headers["Content-Type"].include?("text") || response.headers["Content-Type"].include?("json"))
          @config.logger.debug "Body: #{response.body}\n"
        end
      end

      if (response.status == 401 || (response.status == 500 && response.body.length == 0)) and @config.access_token
        @config.access_token = nil
        return repeat_call_api(http_method, path, opts)
      end

      return process_response(response, opts)
    end

    # Call an API with given options.
    #
    # @return [Array<(Object, Fixnum, Hash)>] an array of 3 elements:
    #   the data deserialized from response body (could be nil), response status code and response headers.
    def repeat_call_api(http_method, path, opts = {})
      response = call_api_method(http_method, path, opts)
      if @config.debugging
        @config.logger.debug "HTTP response\nHeaders: #{response.headers}\nStatus: #{response.status}\n"
        if response.headers.has_key?("Content-Type") && (response.headers["Content-Type"].include?("text") || response.headers["Content-Type"].include?("json"))
          @config.logger.debug "Body: #{response.body}\n"
        end
      end

      return process_response(response, opts)
    end

    # Call an API with given options.
    #
    # @return [Array<(Object, Fixnum, Hash)>] an array of 3 elements:
    #   the data deserialized from response body (could be nil), response status code and response headers.
    def process_response(response, opts)
      unless response.success?
        if response.status == 0
          # Errors from libcurl will be made visible here
          fail ApiError.new(:code => 0,
                            :message => response.return_message)
        else
          fail ApiError.new(:code => response.status,
                            :response_headers => response.headers,
                            :response_body => response.body && !response.body.empty? ? response.body : response.reason_phrase)
        end
      end

      if opts[:return_type]
        data = deserialize(response, opts[:return_type])
      else
        data = nil
      end

      return data, response.status, response.headers
    end

    # Call an API with given options.
    #
    # @return [Array<(Object, Fixnum, Hash)>] an array of 3 elements:
    #   the data deserialized from response body (could be nil), response status code and response headers.
    def call_api_method(http_method, path, opts = {})
      connection = Faraday.new(:url => @config.base_path, ssl: { verify: @config.verify_ssl })
      case http_method
      when :GET
        response = connection.get do |req|
          build_request(req, http_method, path, opts)
        end
      when :POST
        response = connection.post do |req|
          build_request(req, http_method, path, opts)
        end
      when :PUT
        response = connection.put do |req|
          build_request(req, http_method, path, opts)
        end
      when :DELETE
        response = connection.delete do |req|
          build_request(req, http_method, path, opts)
        end
      end
      response
    end

    # Builds the HTTP request
    #
    # @param [String] http_method HTTP method/verb (e.g. POST)
    # @param [String] path URL path (e.g. /account/new)
    # @option opts [Hash] :header_params Header parameters
    # @option opts [Hash] :query_params Query parameters
    # @option opts [Object] :body HTTP body (JSON/XML)
    # @return [Typhoeus::Request] A Typhoeus Request
    def build_request(req, http_method, path, opts = {})
      opts[:query_params].each_key do |key|
        if opts[:query_params][key].kind_of?(Array)
          opts[:query_params][key] = opts[:query_params][key].join[","]
        end
      end
      if @config.http_request_timeout > 0
          req.options.timeout = @config.http_request_timeout
      end
      req.url path.sub(/^\/+/, '')
      req.headers = opts[:header_params]
      req.params = opts[:query_params]
      req.body = build_request_body(req.headers, opts[:body], opts[:files])
      set_headers(req.headers)
      if @config.debugging
        @config.logger.debug "HTTP request\nMethod: #{req.method}\nPath: #{req.path}\nParams: #{req.params}\nHeaders: #{req.headers}\n"
        if (!req.headers.has_key?("Content-Type") || !req.headers["Content-Type"].include?("multipart")) && req.body
          @config.logger.debug "Body: #{req.body}\n"
        end
      end
    end

    def set_headers(headers)
      headers['x-aspose-client'] = "ruby sdk v#{AsposeSlidesCloud::VERSION}"
      if @config.timeout > 0
        headers['x-aspose-timeout'] = @config.timeout.to_s
      end
      @config.custom_headers.each do |key, value|
        headers[key] = value
      end
      set_auth_header(headers)
    end

    def set_auth_header(headers)
      if config.app_sid || config.access_token
        unless @config.access_token
          auth_token_response = Faraday.post(
            @config.auth_base_url + '/connect/token',
            { :grant_type => 'client_credentials', 'client_id' => @config.app_sid, 'client_secret' => @config.app_key })
          unless auth_token_response.success?
            if auth_token_response.status == 0
              # Errors from libcurl will be made visible here
              fail ApiError.new(:code => 0,
                              :message => auth_token_response.return_message)
            else
              fail ApiError.new(:code => 401,
                              :response_headers => auth_token_response.headers,
                              :response_body => auth_token_response.body),
                   "unauthorized"
            end
          end
          @config.access_token = JSON.parse("[#{auth_token_response.body}]", :symbolize_names => true)[0][:access_token]
        end
        headers['Authorization'] = 'Bearer ' + @config.access_token
      end
    end

    # Check if the given MIME is a JSON MIME.
    # JSON MIME examples:
    #   application/json
    #   application/json; charset=UTF8
    #   APPLICATION/JSON
    #   */*
    # @param [String] mime MIME
    # @return [Boolean] True if the MIME is application/json
    def json_mime?(mime)
      (mime == '*/*') || !(mime =~ /Application\/.*json(?!p)(;.*)?/i).nil?
    end

    # Deserialize the response to the given return type.
    #
    # @param [Response] response HTTP response
    # @param [String] return_type some examples: "User", "Array[User]", "Hash[String,Integer]"
    def deserialize(response, return_type)
      body = response.body

      # handle file downloading - return the File instance processed in request callbacks
      # note that response body is empty when the file is written in chunks in request on_body callback

      return nil if body.nil? || body.empty?

      # return response body directly for String return type
      return body.delete_prefix('"').delete_suffix('"') if return_type == 'String'
      return body if return_type == 'File'

      # ensuring a default content type
      content_type = response.headers['Content-Type'] || 'application/json'

      fail "Content-Type is not supported: #{content_type}" unless json_mime?(content_type)

      begin
        data = JSON.parse("[#{body}]", :symbolize_names => true)[0]
      rescue JSON::ParserError => e
        if %w(String Date DateTime).include?(return_type)
          data = body
        else
          raise e
        end
      end

      convert_to_type data, return_type
    end

    # Convert data to the given return type.
    # @param [Object] data Data to be converted
    # @param [String] return_type Return type
    # @return [Mixed] Data in a particular type
    def convert_to_type(data, return_type)
      return nil if data.nil?
      case return_type
      when 'String'
        data.to_s
      when 'Integer'
        data.to_i
      when 'Float'
        data.to_f
      when 'BOOLEAN'
        data == true
      when 'DateTime'
        # parse date time (expecting ISO 8601 format)
        DateTime.parse data
      when 'Date'
        # parse date time (expecting ISO 8601 format)
        Date.parse data
      when 'Object'
        # generic object (usually a Hash), return directly
        data
      when /\AArray<(.+)>\z/
        # e.g. Array<Pet>
        sub_type = $1
        data.map { |item| convert_to_type(item, sub_type) }
      when /\AHash\<String, (.+)\>\z/
        # e.g. Hash<String, Integer>
        sub_type = $1
        {}.tap do |hash|
          data.each { |k, v| hash[k] = convert_to_type(v, sub_type) }
        end
      else
        type = AsposeSlidesCloud::TypeRegistry.get_type(return_type, data)
        if !type
          type = return_type
        end
        AsposeSlidesCloud.const_get(type).new.tap do |model|
          model.build_from_hash data
        end
      end
    end

    # Builds the HTTP request body
    #
    # @param [Hash] header_params Header parameters
    # @param [Object] body HTTP body (JSON/XML)
    # @return [String] HTTP body data in the form of string
    def build_request_body(header_params, body, files)
      partCount = 0
      if files
        partCount += files.length
      end
      if body
        partCount += 1
      end
      if partCount > 1
        boundary = "7d70fb31-0eb9-4846-9ea8-933dfb69d8f1"
        header_params['Content-Type'] = "multipart/form-data; boundary=#{boundary}"
        data = ""
        if body
          put_multipart!(data, boundary, 0, body)
        end        
        files.each_with_index do |val, index|
          put_multipart!(data, boundary, index + 1, val)
        end
        data << "\r\n--#{boundary}--\r\n"
      elsif partCount == 1
        if body
          header_params['Content-Type'] = "text/json"
          data = body.is_a?(String) ? body : body.to_json
        else
          header_params['Content-Type'] = "application/octet-stream"
          data = files[0]
        end
      else
        data = nil
      end
      data
    end

    # Builds the HTTP request body
    #
    # @param [Hash] header_params Header parameters
    # @param [Object] body HTTP body (JSON/XML)
    # @return [String] HTTP body data in the form of string
    def put_multipart!(data, boundary, part_index, part_data)
      data << "\r\n--#{boundary}\r\n"
      if part_index > 0
        data << "Content-Disposition: form-data; name=\"file#{part_index}\";filename=\"file#{part_index}\"\r\n"
        data << "Content-Type: application/octet-stream\r\n"
      elsif
        data << "Content-Disposition: form-data; name=\"data\"\r\n"
        data << "Content-Type: text/json\r\n"
      end
      data << "Content-Length: #{part_data.length}\r\n"
      data << "\r\n"
      data << part_data
    end

    # Update hearder and query params based on authentication settings.
    #
    # @param [Hash] header_params Header parameters
    # @param [Hash] query_params Query parameters
    # @param [String] auth_names Authentication scheme name
    def update_params_for_auth!(header_params, query_params, auth_names)
      Array(auth_names).each do |auth_name|
        auth_setting = @config.auth_settings[auth_name]
        next unless auth_setting
        case auth_setting[:in]
        when 'header' then header_params[auth_setting[:key]] = auth_setting[:value]
        when 'query'  then query_params[auth_setting[:key]] = auth_setting[:value]
        else fail ArgumentError, 'Authentication token must be in `query` of `header`'
        end
      end
    end

    # Return Accept header based on an array of accepts provided.
    # @param [Array] accepts array for Accept
    # @return [String] the Accept header (e.g. application/json)
    def select_header_accept(accepts)
      return nil if accepts.nil? || accepts.empty?
      # use JSON when present, otherwise use all of the provided
      json_accept = accepts.find { |s| json_mime?(s) }
      json_accept || accepts.join(',')
    end

    # Return Content-Type header based on an array of content types provided.
    # @param [Array] content_types array for Content-Type
    # @return [String] the Content-Type header  (e.g. application/json)
    def select_header_content_type(content_types)
      # use application/json by default
      return 'application/json' if content_types.nil? || content_types.empty?
      # use JSON when present, otherwise use the first one
      json_content_type = content_types.find { |s| json_mime?(s) }
      json_content_type || content_types.first
    end

    # Convert object (array, hash, object, etc) to JSON string.
    # @param [Object] model object to be converted into JSON string
    # @return [String] JSON string representation of the object
    def object_to_http_body(model)
      return model if model.nil? || model.is_a?(String)
      local_body = nil
      if model.is_a?(Array)
        local_body = model.map { |m| object_to_hash(m) }
      else
        local_body = object_to_hash(model)
      end
      local_body.to_json
    end

    # Convert object(non-array) to hash.
    # @param [Object] obj object to be converted into JSON string
    # @return [String] JSON string representation of the object
    def object_to_hash(obj)
      if obj.respond_to?(:to_hash)
        obj.to_hash
      else
        obj
      end
    end

    # Convert object(non-array) to hash.
    # @param [Object] obj object to be converted into JSON string
    # @return [String] JSON string representation of the object
    def replace_path_parameter(path, name, value)
      if value == nil
        value = ""
      end
      if value.to_s != ""
        value = "/" + CGI.escape(value.to_s).gsub('+', '%20')
      end
      path.sub('/{' + name + '}', value)
    end

    # Process parameter for query.
    # @param [Object] obj object to be converted into JSON string
    # @return [String] JSON string representation of the object
    def prepare_for_query(value)
      if value.kind_of?(Array)
        value.join(',')
      else
        value
      end
    end

    # Build parameter value according to the given collection format.
    # @param [String] collection_format one of :csv, :ssv, :tsv, :pipes and :multi
    def build_collection_param(param, collection_format)
      case collection_format
      when :csv
        param.join(',')
      when :ssv
        param.join(' ')
      when :tsv
        param.join("\t")
      when :pipes
        param.join('|')
      when :multi
        # return the array directly as typhoeus will handle it as expected
        param
      else
        fail "unknown collection format: #{collection_format.inspect}"
      end
    end
  end
end
