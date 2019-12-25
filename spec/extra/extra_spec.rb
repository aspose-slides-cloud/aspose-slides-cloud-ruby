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

describe 'SlidesApiExtra' do
  describe 'specific cases' do
    it 'multipart request' do
      requestParam = AsposeSlidesCloud::PostSlidesPipelineRequest.new
      requestParam.pipeline = AsposeSlidesCloud::Pipeline.new
      requestParam.pipeline.input = AsposeSlidesCloud::Input.new
      requestParam.pipeline.input.template_data = AsposeSlidesCloud::RequestInputFile.new
      requestParam.pipeline.input.template_data.type = "Request"
      requestParam.pipeline.input.template_data.index = 0
      requestParam.pipeline.input.template = AsposeSlidesCloud::RequestInputFile.new
      requestParam.pipeline.input.template.type = "Request"
      requestParam.pipeline.input.template.index = 1
      requestParam.pipeline.tasks = []
      requestParam.pipeline.tasks.push(AsposeSlidesCloud::Save.new)
      requestParam.pipeline.tasks[0].type = "Save"
      requestParam.pipeline.tasks[0].format = "pptx"
      requestParam.pipeline.tasks[0].output = AsposeSlidesCloud::OutputFile.new
      requestParam.pipeline.tasks[0].output.type = "Response"
      requestParam.files = []
      requestParam.files.push(File.binread(File.join(AsposeSlidesCloud::SpecUtils::TEST_DATA_PATH, "TemplatingCVDataWithBase64.xml")))
      requestParam.files.push(File.binread(File.join(AsposeSlidesCloud::SpecUtils::TEST_DATA_PATH, "TemplateCV.pptx")))
      o, c, _h = AsposeSlidesCloud::SpecUtils.api.post_slides_pipeline_with_http_info(requestParam)
      expect(c).to eq(200)
      expect(o).not_to be(nil)
    end

    it 'unauthorized' do
      config = JSON.parse(File.read('testConfig.json'))
      configuration = AsposeSlidesCloud::Configuration.new
      configuration.base_url = config["BaseUrl"]
      configuration.auth_base_url = config["AuthBaseUrl"] ? config["AuthBaseUrl"] : config["BaseUrl"]
      configuration.app_sid = "invalid"
      configuration.app_key = "invalid"
      configuration.debugging = config["Debug"]
      api = AsposeSlidesCloud::SlidesApi.new(configuration)
      begin
        o, c, _h = api.get_slides_api_info_with_http_info
        fail "An exception expected"
      rescue AsposeSlidesCloud::ApiError => e
        expect(e.code).to eq(401)
        expect(e.response_body).to include("invalid_client")
      end
    end

    it 'expired token' do
      config = JSON.parse(File.read('testConfig.json'))
      configuration = AsposeSlidesCloud::Configuration.new
      configuration.base_url = config["BaseUrl"]
      configuration.auth_base_url = config["AuthBaseUrl"] ? config["AuthBaseUrl"] : config["BaseUrl"]
      configuration.app_sid = config["AppSid"]
      configuration.app_key = config["AppKey"]
      configuration.access_token = "expired.token"
      configuration.debugging = config["Debug"]
      api = AsposeSlidesCloud::SlidesApi.new(configuration)
      o, c, _h = api.get_slides_api_info_with_http_info
      expect(c).to eq(200)
      expect(o).not_to be(nil)
    end

    it 'base shape' do
      #requestParam = AsposeSlidesCloud::GetSlideShapeRequest.new
      #requestParam.name = "test.ppt"
      #requestParam.slide_index = 1
      #requestParam.shape_index = 1
      #requestParam.password = "password"
      #requestParam.folder = "TempSlidesSDK"
      #AsposeSlidesCloud::SpecUtils.initialize('GetSlideShape', nil, nil)
      #o = AsposeSlidesCloud::SpecUtils.api.get_slide_shape(requestParam)
      #expect(o.text).to eq("1")
    end

    it 'chart' do
      chart = AsposeSlidesCloud::Chart.new
      expect(chart.type).to eq("Chart")
      expect(chart.shape_type).to eq("Chart")
    end
  end
end