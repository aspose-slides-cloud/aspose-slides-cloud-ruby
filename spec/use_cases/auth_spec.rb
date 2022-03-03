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

require 'spec_helper'

describe 'UseCases' do
  describe 'Authentication' do
    it 'good auth' do
      config = JSON.parse(File.read('testConfig.json'))
      configuration = AsposeSlidesCloud::Configuration.new
      configuration.base_url = config["BaseUrl"]
      configuration.auth_base_url = config["AuthBaseUrl"] ? config["AuthBaseUrl"] : config["BaseUrl"]
      configuration.app_sid = config["ClientId"]
      configuration.app_key = config["ClientSecret"]
      configuration.debugging = config["Debug"]
      api = AsposeSlidesCloud::SlidesApi.new(configuration)
      o, c, _h = api.get_api_info_with_http_info
      expect(c).to eq(200)
      expect(o).not_to be(nil)
    end

    it 'bad auth' do
      config = JSON.parse(File.read('testConfig.json'))
      configuration = AsposeSlidesCloud::Configuration.new
      configuration.base_url = config["BaseUrl"]
      configuration.auth_base_url = config["AuthBaseUrl"] ? config["AuthBaseUrl"] : config["BaseUrl"]
      configuration.app_sid = "invalid"
      configuration.app_key = config["ClientSecret"]
      configuration.debugging = config["Debug"]
      api = AsposeSlidesCloud::SlidesApi.new(configuration)
      begin
        o, c, _h = api.get_api_info_with_http_info
        fail "An exception expected"
      rescue AsposeSlidesCloud::ApiError => e
        expect(e.code).to eq(401)
        expect(e.response_body).to include("invalid_client")
      end
    end

    it 'good token' do
      config = JSON.parse(File.read('testConfig.json'))
      configuration = AsposeSlidesCloud::Configuration.new
      configuration.base_url = config["BaseUrl"]
      configuration.auth_base_url = config["AuthBaseUrl"] ? config["AuthBaseUrl"] : config["BaseUrl"]
      configuration.app_sid = config["ClientId"]
      configuration.app_key = config["ClientSecret"]
      configuration.debugging = config["Debug"]
      api = AsposeSlidesCloud::SlidesApi.new(configuration)
      api.get_api_info_with_http_info
      configuration.app_sid = "invalid"
      api = AsposeSlidesCloud::SlidesApi.new(configuration)
      o, c, _h = api.get_api_info_with_http_info
      expect(c).to eq(200)
      expect(o).not_to be(nil)
    end

    it 'bad token' do
      config = JSON.parse(File.read('testConfig.json'))
      configuration = AsposeSlidesCloud::Configuration.new
      configuration.base_url = config["BaseUrl"]
      configuration.auth_base_url = config["AuthBaseUrl"] ? config["AuthBaseUrl"] : config["BaseUrl"]
      configuration.app_sid = config["ClientId"]
      configuration.app_key = config["ClientSecret"]
      configuration.access_token = "expired.token"
      configuration.debugging = config["Debug"]
      api = AsposeSlidesCloud::SlidesApi.new(configuration)
      o, c, _h = api.get_api_info_with_http_info
      expect(c).to eq(200)
      expect(o).not_to be(nil)
    end
  end
end
