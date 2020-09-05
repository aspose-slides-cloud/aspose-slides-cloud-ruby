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

    it 'base shape' do
      AsposeSlidesCloud::SpecUtils.initialize('GetSlideShape', nil, nil)
      requestParam = AsposeSlidesCloud::GetSlideShapeRequest.new
      requestParam.name = "test.ppt"
      requestParam.slide_index = 1
      requestParam.shape_index = 1
      requestParam.password = "password"
      requestParam.folder = "TempSlidesSDK"
      o = AsposeSlidesCloud::SpecUtils.api.get_slide_shape(requestParam)
      expect(o.text).to eq("1")
    end

    it 'chart' do
      chart = AsposeSlidesCloud::Chart.new
      expect(chart.type).to eq("Chart")
      expect(chart.shape_type).to eq("Chart")
    end

    it 'timeout' do
      #unstable test
      #AsposeSlidesCloud::SpecUtils.initialize('post_slide_save_as', nil, nil)

      #config = JSON.parse(File.read('testConfig.json'))
      #configuration = AsposeSlidesCloud::Configuration.new
      #configuration.base_url = config["BaseUrl"]
      #configuration.auth_base_url = config["AuthBaseUrl"] ? config["AuthBaseUrl"] : config["BaseUrl"]
      #configuration.app_sid = config["AppSid"]
      #configuration.app_key = config["AppKey"]
      #configuration.debugging = config["Debug"]
      #configuration.timeout = 1
      #api = AsposeSlidesCloud::SlidesApi.new(configuration)

      #requestParam = AsposeSlidesCloud::PostSlideSaveAsRequest.new
      #requestParam.name = "test.ppt"
      #requestParam.slide_index = 1
      #requestParam.password = "password"
      #requestParam.folder = "TempSlidesSDK"
      #requestParam.format = "svg"
      #api.post_slide_save_as(requestParam)
    end

    it 'nullable properties' do
      folderName = "TempSlidesSDK"
      fileName = "placeholders.pptx"
      password = "password"
      min1  = 44.3
      min2 = 12
      max1 = 104.3
      max2 = 87
      AsposeSlidesCloud::SpecUtils.initialize("no_method", "no_property", nil)
      requestParam = AsposeSlidesCloud::CopyFileRequest.new
      requestParam.src_path = "TempTests/" + fileName
      requestParam.dest_path = folderName + "/" + fileName
      AsposeSlidesCloud::SpecUtils.api.copy_file(requestParam)

      postRequest = AsposeSlidesCloud::PostAddNewShapeRequest.new
      postRequest.name = fileName
      postRequest.folder = folderName
      postRequest.password = password
      postRequest.slide_index = 1
      postRequest.dto = AsposeSlidesCloud::Chart.new
      postRequest.dto.chart_type = "Line"
      postRequest.dto.width = 400.0
      postRequest.dto.height = 300.0
      postRequest.dto.title = AsposeSlidesCloud::ChartTitle.new
      postRequest.dto.title.has_title = true
      postRequest.dto.title.text = "MyTitle"
      postRequest.dto.series = []
      postRequest.dto.series.push(AsposeSlidesCloud::OneValueSeries.new)
      postRequest.dto.series[0].type = "ClusteredColumn"
      postRequest.dto.series[0].data_point_type = "OneValue"
      postRequest.dto.series[0].name = "Series1"
      postRequest.dto.series[0].data_points = []
      postRequest.dto.series[0].data_points.push(AsposeSlidesCloud::OneValueChartDataPoint.new)
      postRequest.dto.series[0].data_points[0].value = 40.0
      postRequest.dto.series[0].data_points.push(AsposeSlidesCloud::OneValueChartDataPoint.new)
      postRequest.dto.series[0].data_points[1].value = 50.0
      postRequest.dto.axes = AsposeSlidesCloud::Axes.new
      postRequest.dto.axes.horizontal_axis = AsposeSlidesCloud::Axis.new
      postRequest.dto.axes.horizontal_axis.is_automatic_min_value = false
      postRequest.dto.axes.horizontal_axis.min_value = min1
      postRequest.dto.axes.horizontal_axis.is_automatic_max_value = false
      postRequest.dto.axes.horizontal_axis.max_value = max1
      AsposeSlidesCloud::SpecUtils.api.post_add_new_shape(postRequest)

      getRequest = AsposeSlidesCloud::GetSlideShapeRequest.new
      getRequest.name = fileName
      getRequest.folder = folderName
      getRequest.password = password
      getRequest.slide_index = 1
      getRequest.shape_index = 4
      result = AsposeSlidesCloud::SpecUtils.api.get_slide_shape(getRequest)
      expect(result.axes.horizontal_axis.min_value).to eq(min1)
      expect(result.axes.horizontal_axis.max_value).to eq(max1)

      putRequest = AsposeSlidesCloud::PutSlideShapeInfoRequest.new
      putRequest.name = fileName
      putRequest.folder = folderName
      putRequest.password = password
      putRequest.slide_index = 1
      putRequest.shape_index = 4
      putRequest.dto = AsposeSlidesCloud::Chart.new
      putRequest.dto.axes = AsposeSlidesCloud::Axes.new
      putRequest.dto.axes.horizontal_axis = AsposeSlidesCloud::Axis.new
      putRequest.dto.axes.horizontal_axis.min_value = min2
      AsposeSlidesCloud::SpecUtils.api.put_slide_shape_info(putRequest)

      result = AsposeSlidesCloud::SpecUtils.api.get_slide_shape(getRequest)
      expect(result.axes.horizontal_axis.min_value).to eq(min2)
      expect(result.axes.horizontal_axis.max_value).to eq(max1)

      putRequest.dto.axes.horizontal_axis = AsposeSlidesCloud::Axis.new
      putRequest.dto.axes.horizontal_axis.max_value = max2
      AsposeSlidesCloud::SpecUtils.api.put_slide_shape_info(putRequest)

      result = AsposeSlidesCloud::SpecUtils.api.get_slide_shape(getRequest)
      expect(result.axes.horizontal_axis.min_value).to eq(min2)
      expect(result.axes.horizontal_axis.max_value).to eq(max2)
    end
  end

  describe 'authentication' do
    it 'good auth' do
      config = JSON.parse(File.read('testConfig.json'))
      configuration = AsposeSlidesCloud::Configuration.new
      configuration.base_url = config["BaseUrl"]
      configuration.auth_base_url = config["AuthBaseUrl"] ? config["AuthBaseUrl"] : config["BaseUrl"]
      configuration.app_sid = config["AppSid"]
      configuration.app_key = config["AppKey"]
      configuration.debugging = config["Debug"]
      api = AsposeSlidesCloud::SlidesApi.new(configuration)
      o, c, _h = api.get_slides_api_info_with_http_info
      expect(c).to eq(200)
      expect(o).not_to be(nil)
    end

    it 'bad auth' do
      config = JSON.parse(File.read('testConfig.json'))
      configuration = AsposeSlidesCloud::Configuration.new
      configuration.base_url = config["BaseUrl"]
      configuration.auth_base_url = config["AuthBaseUrl"] ? config["AuthBaseUrl"] : config["BaseUrl"]
      configuration.app_sid = "invalid"
      configuration.app_key = config["AppKey"]
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

    it 'good token' do
      config = JSON.parse(File.read('testConfig.json'))
      configuration = AsposeSlidesCloud::Configuration.new
      configuration.base_url = config["BaseUrl"]
      configuration.auth_base_url = config["AuthBaseUrl"] ? config["AuthBaseUrl"] : config["BaseUrl"]
      configuration.app_sid = config["AppSid"]
      configuration.app_key = config["AppKey"]
      configuration.debugging = config["Debug"]
      api = AsposeSlidesCloud::SlidesApi.new(configuration)
      api.get_slides_api_info_with_http_info
      configuration.app_sid = "invalid"
      api = AsposeSlidesCloud::SlidesApi.new(configuration)
      o, c, _h = api.get_slides_api_info_with_http_info
      expect(c).to eq(200)
      expect(o).not_to be(nil)
    end

    it 'bad token' do
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
  end
end