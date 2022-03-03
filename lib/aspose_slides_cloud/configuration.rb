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

require 'uri'

module AsposeSlidesCloud
  class Configuration
    # Defines base url
    attr_accessor :base_url

    # Defines base url for authentication
    attr_accessor :auth_base_url

    # Defines platform version
    attr_accessor :version

    # Defines API keys used for authentication.
    #
    # @return [Hash] key: parameter name, value: parameter value (API key)
    attr_accessor :app_sid

    # Defines API secret key used for authentication.
    #
    # @return [Hash] key: parameter name, value: parameter value (API key)
    attr_accessor :app_key

    # Defines the access token (Bearer) used with OAuth2.
    attr_accessor :access_token

    # Set this to enable/disable debugging. When enabled (set to true), HTTP request/response
    # details will be logged with `logger.debug` (see the `logger` attribute).
    # Default to false.
    #
    # @return [true, false]
    attr_accessor :debugging

    # Defines the logger used for debugging.
    # Default to `Rails.logger` (when in Rails) or logging to STDOUT.
    #
    # @return [#debug]
    attr_accessor :logger

    # Defines the temporary folder to store downloaded files
    # (for API endpoints that have file response).
    # Default to use `Tempfile`.
    #
    # @return [String]
    attr_accessor :temp_folder_path

    # slides operaion timeout in seconds. The timeout applies to the Slides operation, not to the HTTP request.
    # Default to 0 (no timeout).
    attr_accessor :timeout

    # The time limit for HTTP request in seconds.
    # Default to 300.
    attr_accessor :http_request_timeout
 
    # Set this to false to skip client side validation in the operation.
    # Default to true.
    # @return [true, false]
    attr_accessor :client_side_validation

    # Custom HTTP headers for all requests.
    # @return [Hash]
    attr_accessor :custom_headers

    ### TLS/SSL setting
    # Set this to false to skip verifying SSL certificate when calling API from https server.
    # Default to true.
    #
    # @note Do NOT set it to false in production code, otherwise you would face multiple types of cryptographic attacks.
    #
    # @return [true, false]
    attr_accessor :verify_ssl

    ### TLS/SSL setting
    # Set this to false to skip verifying SSL host name
    # Default to true.
    #
    # @note Do NOT set it to false in production code, otherwise you would face multiple types of cryptographic attacks.
    #
    # @return [true, false]
    attr_accessor :verify_ssl_host

    ### TLS/SSL setting
    # Set this to customize the certificate file to verify the peer.
    #
    # @return [String] the path to the certificate file
    #
    # @see The `cainfo` option of Typhoeus, `--cert` option of libcurl. Related source code:
    # https://github.com/typhoeus/typhoeus/blob/master/lib/typhoeus/easy_factory.rb#L145
    attr_accessor :ssl_ca_cert

    ### TLS/SSL setting
    # Client certificate file (for client certificate)
    attr_accessor :cert_file

    ### TLS/SSL setting
    # Client private key file (for client certificate)
    attr_accessor :key_file

    # Set this to customize parameters encoding of array parameter with multi collectionFormat.
    # Default to nil.
    #
    # @see The params_encoding option of Ethon. Related source code:
    # https://github.com/typhoeus/ethon/blob/master/lib/ethon/easy/queryable.rb#L96
    attr_accessor :params_encoding

    attr_accessor :inject_format

    attr_accessor :force_ending_format

    def initialize
      @base_url = 'https://api.aspose.cloud'
      @auth_base_url = 'https://api.aspose.cloud'
      @version = 'v3.0'
      @http_request_timeout = 300
      @timeout = 0
      @custom_headers = Hash.new
      @client_side_validation = true
      @verify_ssl = false
      @verify_ssl_host = false
      @params_encoding = nil
      @cert_file = nil
      @key_file = nil
      @debugging = false
      @inject_format = false
      @force_ending_format = false
      @logger = defined?(Rails) ? Rails.logger : Logger.new(STDOUT)

      yield(self) if block_given?
    end

    # The default Configuration object.
    def self.default
      @@default ||= Configuration.new
    end

    def configure
      yield(self) if block_given?
    end

    def base_url=(base_url)
      @base_url = getUrlHostPart(base_url)
    end

    def auth_base_url=(auth_base_url)
      @auth_base_url = getUrlHostPart(auth_base_url)
    end

    def getUrlHostPart(url)
      parts = url.split('//')
      if (parts.length > 1)
        return "#{parts[0]}//#{parts[1].split('/').first}";
      end
      parts[0].split('/').first
    end

    def version=(version)
      # Add leading and trailing slashes to base_path
      @version = "/#{version}".gsub(/\/+/, '/')
      @version = '' if @version == '/'
    end

    def base_path
      "#{[base_url, version].join('/')}".sub(/\/+\z/, '')
    end
  end
end
