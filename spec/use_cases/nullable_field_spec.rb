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
  describe 'Nullable Fields' do
    it 'nullable properties' do
      folderName = "TempSlidesSDK"
      fileName = "test.pptx"
      password = "password"
      min1  = 44.3
      min2 = 12
      max1 = 104.3
      max2 = 87
      AsposeSlidesCloud::SpecUtils.initialize("no_method", "no_property", nil)
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + fileName, folderName + "/" + fileName)

      dto = AsposeSlidesCloud::Chart.new
      dto.chart_type = "Line"
      dto.width = 400.0
      dto.height = 300.0
      dto.title = AsposeSlidesCloud::ChartTitle.new
      dto.title.has_title = true
      dto.title.text = "MyTitle"
      dto.series = []
      dto.series.push(AsposeSlidesCloud::OneValueSeries.new)
      dto.series[0].type = "ClusteredColumn"
      dto.series[0].data_point_type = "OneValue"
      dto.series[0].name = "Series1"
      dto.series[0].data_points = []
      dto.series[0].data_points.push(AsposeSlidesCloud::OneValueChartDataPoint.new)
      dto.series[0].data_points[0].value = 40.0
      dto.series[0].data_points.push(AsposeSlidesCloud::OneValueChartDataPoint.new)
      dto.series[0].data_points[1].value = 50.0
      dto.axes = AsposeSlidesCloud::Axes.new
      dto.axes.horizontal_axis = AsposeSlidesCloud::Axis.new
      dto.axes.horizontal_axis.is_automatic_min_value = false
      dto.axes.horizontal_axis.min_value = min1
      dto.axes.horizontal_axis.is_automatic_max_value = false
      dto.axes.horizontal_axis.max_value = max1
      AsposeSlidesCloud::SpecUtils.api.create_shape(fileName, 1, dto, nil, nil, password, folderName)

      result = AsposeSlidesCloud::SpecUtils.api.get_shape(fileName, 1, 5, password, folderName)
      expect(result.axes.horizontal_axis.min_value).to eq(min1)
      expect(result.axes.horizontal_axis.max_value).to eq(max1)

      dto = AsposeSlidesCloud::Chart.new
      dto.axes = AsposeSlidesCloud::Axes.new
      dto.axes.horizontal_axis = AsposeSlidesCloud::Axis.new
      dto.axes.horizontal_axis.min_value = min2
      AsposeSlidesCloud::SpecUtils.api.update_shape(fileName, 1, 5, dto, password, folderName)

      result = AsposeSlidesCloud::SpecUtils.api.get_shape(fileName, 1, 5, password, folderName)
      expect(result.axes.horizontal_axis.min_value).to eq(min2)
      expect(result.axes.horizontal_axis.max_value).to eq(max1)

      dto.axes.horizontal_axis = AsposeSlidesCloud::Axis.new
      dto.axes.horizontal_axis.max_value = max2
      AsposeSlidesCloud::SpecUtils.api.update_shape(fileName, 1, 5, dto, password, folderName)

      result = AsposeSlidesCloud::SpecUtils.api.get_shape(fileName, 1, 5, password, folderName)
      expect(result.axes.horizontal_axis.min_value).to eq(min2)
      expect(result.axes.horizontal_axis.max_value).to eq(max2)
    end
  end
end
