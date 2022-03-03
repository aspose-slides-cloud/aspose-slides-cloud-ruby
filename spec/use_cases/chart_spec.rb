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
  describe 'Chart' do
    it 'get' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      chart = AsposeSlidesCloud::SpecUtils.api.get_shape(file_name, 3, 1, "password", folder_name)
      expect(chart.series.length).to eq(3)
      expect(chart.categories.length).to eq(4)
    end

    it 'create' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      chart = AsposeSlidesCloud::Chart.new
      chart.chart_type = 'ClusteredColumn'
      chart.width = 400
      chart.height = 300
      series1 = AsposeSlidesCloud::OneValueSeries.new
      series1.name = "Series1"
      point11 = AsposeSlidesCloud::OneValueChartDataPoint.new
      point11.value = 40
      point12 = AsposeSlidesCloud::OneValueChartDataPoint.new
      point12.value = 50
      point13 = AsposeSlidesCloud::OneValueChartDataPoint.new
      point13.value = 70
      series1.data_points = [point11, point12, point13]
      series2 = AsposeSlidesCloud::OneValueSeries.new
      series2.name = "Series2"
      point21 = AsposeSlidesCloud::OneValueChartDataPoint.new
      point21.value = 55
      point22 = AsposeSlidesCloud::OneValueChartDataPoint.new
      point22.value = 35
      point23 = AsposeSlidesCloud::OneValueChartDataPoint.new
      point23.value = 90
      series2.data_points = [point21, point22, point23]
      chart.series = [ series1, series2 ]
      category1 = AsposeSlidesCloud::ChartCategory.new
      category1.value = "Category1"
      category2 = AsposeSlidesCloud::ChartCategory.new
      category2.value = "Category2"
      category3 = AsposeSlidesCloud::ChartCategory.new
      category3.value = "Category3"
      chart.categories = [category1, category2, category3]
      result = AsposeSlidesCloud::SpecUtils.api.create_shape(file_name, 3, chart, nil, nil, "password", folder_name)
      expect(result.series.length).to eq(2)
      expect(result.categories.length).to eq(3)
    end

    it 'update' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      chart = AsposeSlidesCloud::Chart.new
      chart.chart_type = 'ClusteredColumn'
      chart.width = 400
      chart.height = 300
      series1 = AsposeSlidesCloud::OneValueSeries.new
      series1.name = "Series1"
      point11 = AsposeSlidesCloud::OneValueChartDataPoint.new
      point11.value = 40
      point12 = AsposeSlidesCloud::OneValueChartDataPoint.new
      point12.value = 50
      point13 = AsposeSlidesCloud::OneValueChartDataPoint.new
      point13.value = 70
      series1.data_points = [point11, point12, point13]
      series2 = AsposeSlidesCloud::OneValueSeries.new
      series2.name = "Series2"
      point21 = AsposeSlidesCloud::OneValueChartDataPoint.new
      point21.value = 55
      point22 = AsposeSlidesCloud::OneValueChartDataPoint.new
      point22.value = 35
      point23 = AsposeSlidesCloud::OneValueChartDataPoint.new
      point23.value = 90
      series2.data_points = [point21, point22, point23]
      chart.series = [ series1, series2 ]
      category1 = AsposeSlidesCloud::ChartCategory.new
      category1.value = "Category1"
      category2 = AsposeSlidesCloud::ChartCategory.new
      category2.value = "Category2"
      category3 = AsposeSlidesCloud::ChartCategory.new
      category3.value = "Category3"
      chart.categories = [category1, category2, category3]
      result = AsposeSlidesCloud::SpecUtils.api.update_shape(file_name, 3, 1, chart, "password", folder_name)
      expect(result.series.length).to eq(2)
      expect(result.categories.length).to eq(3)
    end

    it 'series create' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      series = AsposeSlidesCloud::OneValueSeries.new
      series.name = "New Series"
      point1 = AsposeSlidesCloud::OneValueChartDataPoint.new
      point1.value = 40
      point2 = AsposeSlidesCloud::OneValueChartDataPoint.new
      point2.value = 50
      point3 = AsposeSlidesCloud::OneValueChartDataPoint.new
      point3.value = 14
      point4 = AsposeSlidesCloud::OneValueChartDataPoint.new
      point4.value = 70
      series.data_points = [ point1, point2, point3, point4 ]
      result = AsposeSlidesCloud::SpecUtils.api.create_chart_series(file_name, 3, 1, series, "password", folder_name)
      expect(result.series.length).to eq(4)
      expect(result.categories.length).to eq(4)
    end

    it 'series update' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      series = AsposeSlidesCloud::OneValueSeries.new
      series.name = "Series3"
      point1 = AsposeSlidesCloud::OneValueChartDataPoint.new
      point1.value = 40
      point2 = AsposeSlidesCloud::OneValueChartDataPoint.new
      point2.value = 50
      point3 = AsposeSlidesCloud::OneValueChartDataPoint.new
      point3.value = 14
      point4 = AsposeSlidesCloud::OneValueChartDataPoint.new
      point4.value = 70
      series.data_points = [ point1, point2, point3, point4 ]
      result = AsposeSlidesCloud::SpecUtils.api.update_chart_series(file_name, 3, 1, 2, series, "password", folder_name)
      expect(result.series.length).to eq(3)
      expect(result.categories.length).to eq(4)
    end

    it 'series delete' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      result = AsposeSlidesCloud::SpecUtils.api.delete_chart_series(file_name, 3, 1, 2, "password", folder_name)
      expect(result.series.length).to eq(2)
      expect(result.categories.length).to eq(4)
    end

    it 'category create' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      category = AsposeSlidesCloud::ChartCategory.new
      category.value = "New Category"
      point1 = AsposeSlidesCloud::OneValueChartDataPoint.new
      point1.value = 40
      point2 = AsposeSlidesCloud::OneValueChartDataPoint.new
      point2.value = 50
      point3 = AsposeSlidesCloud::OneValueChartDataPoint.new
      point3.value = 14
      category.data_points = [ point1, point2, point3 ]
      result = AsposeSlidesCloud::SpecUtils.api.create_chart_category(file_name, 3, 1, category, "password", folder_name)
      expect(result.series.length).to eq(3)
      expect(result.categories.length).to eq(5)
      expect(result.series[0].data_points.length).to eq(5)
      expect(result.series[0].data_points[4].value).to eq(category.data_points[0].value)
    end

    it 'category update' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      category = AsposeSlidesCloud::ChartCategory.new
      category.value = "New Category"
      point1 = AsposeSlidesCloud::OneValueChartDataPoint.new
      point1.value = 40
      point2 = AsposeSlidesCloud::OneValueChartDataPoint.new
      point2.value = 50
      point3 = AsposeSlidesCloud::OneValueChartDataPoint.new
      point3.value = 14
      category.data_points = [ point1, point2, point3 ]
      result = AsposeSlidesCloud::SpecUtils.api.update_chart_category(file_name, 3, 1, 2, category, "password", folder_name)
      expect(result.series.length).to eq(3)
      expect(result.categories.length).to eq(4)
      expect(result.series[0].data_points.length).to eq(4)
      expect(result.series[0].data_points[1].value).to eq(category.data_points[0].value)
    end

    it 'category delete' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      result = AsposeSlidesCloud::SpecUtils.api.delete_chart_category(file_name, 3, 1, 2, "password", folder_name)
      expect(result.series.length).to eq(3)
      expect(result.categories.length).to eq(3)
      expect(result.series[0].data_points.length).to eq(3)
    end

    it 'data point create' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      point = AsposeSlidesCloud::OneValueChartDataPoint.new
      point.value = 40
      begin
        result = AsposeSlidesCloud::SpecUtils.api.create_chart_data_point(file_name, 3, 1, 2, point, "password", folder_name)
        fail "Must have failed because adding data points only works with Scatter & Bubble charts"
      rescue AsposeSlidesCloud::ApiError => e
        expect(e.code).to eq(400)
      end
    end

    it 'data point update' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      point = AsposeSlidesCloud::OneValueChartDataPoint.new
      point.value = 40
      result = AsposeSlidesCloud::SpecUtils.api.update_chart_data_point(file_name, 3, 1, 2, 2, point, "password", folder_name)
      expect(result.series.length).to eq(3)
      expect(result.categories.length).to eq(4)
      expect(result.series[1].data_points.length).to eq(4)
      expect(result.series[1].data_points[1].value).to eq(point.value)
    end

    it 'data point delete' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      result = AsposeSlidesCloud::SpecUtils.api.delete_chart_data_point(file_name, 3, 1, 2, 2, "password", folder_name)
      expect(result.series.length).to eq(3)
      expect(result.categories.length).to eq(4)
      expect(result.series[1].data_points[1]).not_to be_truthy
    end

    it 'sunburst' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      chart = AsposeSlidesCloud::Chart.new
      chart.chart_type = 'Sunburst'
      chart.width = 400
      chart.height = 300
      series1 = AsposeSlidesCloud::OneValueSeries.new
      series1.name = "Series1"
      point1 = AsposeSlidesCloud::OneValueChartDataPoint.new
      point1.value = 40
      point2 = AsposeSlidesCloud::OneValueChartDataPoint.new
      point2.value = 50
      point3 = AsposeSlidesCloud::OneValueChartDataPoint.new
      point3.value = 70
      point4 = AsposeSlidesCloud::OneValueChartDataPoint.new
      point4.value = 70
      series1.data_points = [ point1, point2, point3, point4 ]
      chart.series = [ series1 ]
      category1 = AsposeSlidesCloud::ChartCategory.new
      category1.value = "Leaf1"
      category1.level = 3
      category1.parent_categories = [ "Branch1", "Stem1" ]
      category2 = AsposeSlidesCloud::ChartCategory.new
      category2.value = "Leaf2"
      category2.level = 3
      category2.parent_categories = [ "Branch1", "Stem1" ]
      category3 = AsposeSlidesCloud::ChartCategory.new
      category3.value = "Branch2"
      category3.level = 2
      category3.parent_categories = [ "Stem1" ]
      category4 = AsposeSlidesCloud::ChartCategory.new
      category4.value = "Stem2"
      category4.level = 1
      chart.categories = [ category1, category2, category3, category4 ]
      result = AsposeSlidesCloud::SpecUtils.api.create_shape(file_name, 3, chart, nil, nil, "password", folder_name)
      expect(result.series.length).to eq(1)
      expect(result.categories.length).to eq(4)
    end
  end
end
