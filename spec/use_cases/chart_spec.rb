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

    it 'create chart auto data source' do
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

    it 'create chart workbook data source' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      chart = AsposeSlidesCloud::Chart.new
      chart.chart_type = 'ClusteredColumn'
      chart.width = 400
      chart.height = 300

      data_source_for_categories = AsposeSlidesCloud::Workbook.new
      data_source_for_categories.worksheet_index = 0
      data_source_for_categories.column_index = 0
      data_source_for_categories.row_index = 1
      chart.data_source_for_categories = data_source_for_categories

      series1 = AsposeSlidesCloud::OneValueSeries.new
      data_source_for_series1_name = AsposeSlidesCloud::Workbook.new
      data_source_for_series1_name.worksheet_index = 0
      data_source_for_series1_name.column_index = 1
      data_source_for_series1_name.row_index = 0
      series1.data_source_for_series_name = data_source_for_series1_name    
      series1.name = "Series1"
      data_source_for_series1_values =  AsposeSlidesCloud::Workbook.new
      data_source_for_series1_values.worksheet_index = 0
      data_source_for_series1_values.column_index = 1
      data_source_for_series1_values.row_index = 1
      series1.data_source_for_values = data_source_for_series1_values
      point11 = AsposeSlidesCloud::OneValueChartDataPoint.new
      point11.value = 40
      point12 = AsposeSlidesCloud::OneValueChartDataPoint.new
      point12.value = 50
      point13 = AsposeSlidesCloud::OneValueChartDataPoint.new
      point13.value = 70
      series1.data_points = [point11, point12, point13]
      series2 = AsposeSlidesCloud::OneValueSeries.new
      data_source_for_series2_name = AsposeSlidesCloud::Workbook.new
      data_source_for_series2_name.worksheet_index = 0
      data_source_for_series2_name.column_index = 2
      data_source_for_series2_name.row_index = 0
      series2.data_source_for_series_name = data_source_for_series2_name 
      series2.name = "Series2"
      data_source_for_series2_values = AsposeSlidesCloud::Workbook.new
      data_source_for_series2_values.worksheet_index = 0
      data_source_for_series2_values.column_index = 2
      data_source_for_series2_values.row_index = 1
      series2.data_source_for_values = data_source_for_series2_values
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

    it 'create chart literals' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      chart = AsposeSlidesCloud::Chart.new
      chart.chart_type = 'ClusteredColumn'
      chart.width = 400
      chart.height = 300

      chart.data_source_for_categories = AsposeSlidesCloud::Literals.new

      series1 = AsposeSlidesCloud::OneValueSeries.new
      series1.data_source_for_series_name = AsposeSlidesCloud::Literals.new
      series1.name = "Series1"
      series1.data_source_for_values = AsposeSlidesCloud::Literals.new
      point11 = AsposeSlidesCloud::OneValueChartDataPoint.new
      point11.value = 40
      point12 = AsposeSlidesCloud::OneValueChartDataPoint.new
      point12.value = 50
      point13 = AsposeSlidesCloud::OneValueChartDataPoint.new
      point13.value = 70
      series1.data_points = [point11, point12, point13]
      series2 = AsposeSlidesCloud::OneValueSeries.new
      series2.data_source_for_series_name = AsposeSlidesCloud::Workbook.new
      series2.name = "Series2"
      series2.data_source_for_values = AsposeSlidesCloud::Workbook.new
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

    it 'multi level category axis' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      
      chart = AsposeSlidesCloud::Chart.new
      chart.x = 100
      charty = 100
      chart.width = 500
      chart.height = 400
      chart.chart_type = "ClusteredColumn"

      series = AsposeSlidesCloud::OneValueSeries.new
      series.type = "ClusteredColumn"
      point1 = AsposeSlidesCloud::OneValueChartDataPoint.new
      point1.value = 1
      point2 = AsposeSlidesCloud::OneValueChartDataPoint.new
      point2.value = 2
      point3 = AsposeSlidesCloud::OneValueChartDataPoint.new
      point3.value = 3
      point4 = AsposeSlidesCloud::OneValueChartDataPoint.new
      point4.value = 4
      point5 = AsposeSlidesCloud::OneValueChartDataPoint.new
      point5.value = 5
      point6 = AsposeSlidesCloud::OneValueChartDataPoint.new
      point6.value = 6
      point7 = AsposeSlidesCloud::OneValueChartDataPoint.new
      point7.value = 7
      point8 = AsposeSlidesCloud::OneValueChartDataPoint.new
      point8.value = 8
      series.data_points = [ point1, point2, point3, point4, point5, point6, point7, point8 ]
      chart.series = [ series ]

      category1 = AsposeSlidesCloud::ChartCategory.new
      category1.value = "Category 1"
      category1.parent_categories = ["Sub-category 1", "Root 1"]
      category2 = AsposeSlidesCloud::ChartCategory.new
      category2.value = "Category 2"
      category3 = AsposeSlidesCloud::ChartCategory.new
      category3.value = "Category 3"
      category3.parent_categories = ["Sub-category 2"]
      category4 = AsposeSlidesCloud::ChartCategory.new
      category4.value = "Category 4"
      category5 = AsposeSlidesCloud::ChartCategory.new
      category5.value = "Category 5"
      category5.parent_categories = ["Sub-category 3", "Root 2"]
      category6 = AsposeSlidesCloud::ChartCategory.new
      category6.value = "Category 6"
      category7 = AsposeSlidesCloud::ChartCategory.new
      category7.value = "Category 7"
      category7.parent_categories = ["Sub-category 4"]
      category8 = AsposeSlidesCloud::ChartCategory.new
      category8.value = "Category 7"
      chart.categories = [category1, category2, category3, category4, category5, category6, category7, category8]

      response = AsposeSlidesCloud::SpecUtils.api.create_shape(file_name, 3, chart, nil, nil, "password", folder_name)
      expect(response.categories.length).to eq(8)
      expect(response.series.length).to eq(1)
      expect(response.categories[0].parent_categories.length).to eq(2)
    end

    it "hide chart legend" do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      slide_index = 3
      shape_index = 1
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

      chart = AsposeSlidesCloud::SpecUtils.api.get_shape(file_name, slide_index, shape_index, "password", folder_name)
      chart.legend.has_legend = false
      response = AsposeSlidesCloud::SpecUtils.api.update_shape(file_name, slide_index, shape_index, chart, "password", folder_name)
      expect(response.legend.has_legend).to eq(false)
    end

    it "grid lines format" do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      slide_index = 3
      shape_index = 1
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

      chart = AsposeSlidesCloud::SpecUtils.api.get_shape(file_name, slide_index, shape_index, "password", folder_name)
      chart.axes = AsposeSlidesCloud::Axes.new
      
      horizontal_axis = AsposeSlidesCloud::Axis.new
      horizontal_axis.major_grid_lines_format = AsposeSlidesCloud::ChartLinesFormat.new
      horizontal_axis.major_grid_lines_format.line_format = AsposeSlidesCloud::LineFormat.new
      horizontal_axis.major_grid_lines_format.line_format.fill_format = AsposeSlidesCloud::NoFill.new

      horizontal_axis.minor_grid_lines_format = AsposeSlidesCloud::ChartLinesFormat.new
      horizontal_axis.minor_grid_lines_format.line_format = AsposeSlidesCloud::LineFormat.new
      horizontal_axis.minor_grid_lines_format.line_format.fill_format = AsposeSlidesCloud::SolidFill.new
      horizontal_axis.minor_grid_lines_format.line_format.fill_format.color = "Black"

      vertical_axis = AsposeSlidesCloud::Axis.new
      vertical_axis.major_grid_lines_format = AsposeSlidesCloud::ChartLinesFormat.new
      vertical_axis.major_grid_lines_format.line_format = AsposeSlidesCloud::LineFormat.new
      gradient_fill = AsposeSlidesCloud::GradientFill.new
      gradient_fill.direction = "FromCorner1"
      gradient_stop1 = AsposeSlidesCloud::GradientFillStop.new
      gradient_stop1.color = "White"
      gradient_stop1.position = 0
      gradient_stop2 = AsposeSlidesCloud::GradientFillStop.new
      gradient_stop2.color = "Black"
      gradient_stop2.position = 1
      gradient_fill.stops = [gradient_stop1, gradient_stop2]
      vertical_axis.major_grid_lines_format.line_format.fill_format = gradient_fill

      vertical_axis.minor_grid_lines_format = AsposeSlidesCloud::ChartLinesFormat.new
      vertical_axis.minor_grid_lines_format.line_format = AsposeSlidesCloud::LineFormat.new
      vertical_axis.minor_grid_lines_format.line_format.fill_format = AsposeSlidesCloud::NoFill.new

      response = AsposeSlidesCloud::SpecUtils.api.update_shape(file_name, slide_index, shape_index, chart, "password", folder_name)
      expect(horizontal_axis.major_grid_lines_format.line_format.fill_format.type).to eq("NoFill")
      expect(horizontal_axis.minor_grid_lines_format.line_format.fill_format.type).to eq("Solid")
      expect(vertical_axis.major_grid_lines_format.line_format.fill_format.type).to eq("Gradient")
      expect(vertical_axis.minor_grid_lines_format.line_format.fill_format.type).to eq("NoFill")
    end

    it "chart series groups" do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      slide_index = 3
      shape_index = 1
      series_group_index = 1
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      chart = AsposeSlidesCloud::SpecUtils.api.get_shape(file_name, slide_index, shape_index, "password", folder_name)
      expect(chart.series_groups.length).to eq(1)
      series_group = chart.series_groups[0]
      series_group.overlap = 10
      chart = AsposeSlidesCloud::SpecUtils.api.set_chart_series_group(file_name, slide_index, shape_index, series_group_index, 
        series_group, "password", folder_name)
        expect(chart.series_groups[0].overlap).to eq(10)
    end

    it "set chart legend" do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      slide_index = 3
      shape_index = 1
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      legend_dto = AsposeSlidesCloud::Legend.new
      legend_dto.overlay = true
      legend_dto.fill_format = AsposeSlidesCloud::SolidFill.new
      legend_dto.fill_format.color = "#77CEF9"
      response = AsposeSlidesCloud::SpecUtils.api.set_chart_legend(file_name, slide_index, shape_index, legend_dto, "password", folder_name)
      expect(response.overlay).to eq(true)
      expect(response.fill_format.type).to eq("Solid")
    end

    it "set chart axis" do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      slide_index = 3
      shape_index = 1
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      axis_dto = AsposeSlidesCloud::Axis.new
      axis_dto.has_title = true
      axis_dto.is_automatic_max_value = false
      axis_dto.max_value = 10
      response = AsposeSlidesCloud::SpecUtils.api.set_chart_axis(file_name, slide_index, shape_index, "verticalAxis", axis_dto, "password", folder_name)
      expect(response.has_title).to eq(true)
      expect(response.is_automatic_max_value).to eq(false)
      expect(response.max_value).to eq(axis_dto.max_value)
    end

    it "set chart wall" do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      slide_index = 8
      shape_index = 2
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      wall_dto = AsposeSlidesCloud::ChartWall.new
      wall_dto.fill_format = AsposeSlidesCloud::SolidFill.new
      wall_dto.fill_format.color = "#77CEF9"
      response = AsposeSlidesCloud::SpecUtils.api.set_chart_wall(file_name, slide_index, shape_index, "BackWall", wall_dto, "password", folder_name)
      expect(response.fill_format.type).to eq("Solid")
    end

    it "update data point format" do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      slide_index = 8
      shape_index = 2
      series_index = 2
      data_point_index = 2
      color = "#77CEF9"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      
      dto = AsposeSlidesCloud::OneValueChartDataPoint.new
      dto.value = 40
      dto.fill_format = AsposeSlidesCloud::SolidFill.new
      dto.fill_format.color = color
      dto.line_format = AsposeSlidesCloud::LineFormat.new
      dto.line_format.fill_format = AsposeSlidesCloud::SolidFill.new
      dto.line_format.fill_format.color = color
      dto.effect_format = AsposeSlidesCloud::EffectFormat.new
      dto.effect_format.blur = AsposeSlidesCloud::BlurEffect.new
      dto.effect_format.blur.grow = true
      dto.effect_format.blur.radius = 5

      response = AsposeSlidesCloud::SpecUtils.api.update_chart_data_point(file_name, slide_index, shape_index, series_index, 
          data_point_index, dto, "password", folder_name)
      data_point = response.series[series_index - 1].data_points[data_point_index - 1]
      expect(data_point.fill_format.type).to eq("Solid")
      expect(data_point.line_format.fill_format.type).to eq("Solid")
      expect(data_point.effect_format.blur).not_to eq(nil)
    end

    it 'chart formulas' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      chart = AsposeSlidesCloud::Chart.new
      chart.chart_type = 'ClusteredColumn'
      chart.width = 400
      chart.height = 300

      data_source_for_categories = AsposeSlidesCloud::Workbook.new
      data_source_for_categories.worksheet_index = 0
      data_source_for_categories.column_index = 0
      data_source_for_categories.row_index = 1
      chart.data_source_for_categories = data_source_for_categories

      series1 = AsposeSlidesCloud::OneValueSeries.new
      data_source_for_series1_name = AsposeSlidesCloud::Workbook.new
      data_source_for_series1_name.worksheet_index = 0
      data_source_for_series1_name.column_index = 1
      data_source_for_series1_name.row_index = 0
      series1.data_source_for_series_name = data_source_for_series1_name    
      series1.name = "Series1"
      data_source_for_series1_values = AsposeSlidesCloud::Workbook.new
      data_source_for_series1_values.worksheet_index = 0
      data_source_for_series1_values.column_index = 1
      data_source_for_series1_values.row_index = 1
      series1.data_source_for_values = data_source_for_series1_values
      point11 = AsposeSlidesCloud::OneValueChartDataPoint.new
      point11.value = 40
      point12 = AsposeSlidesCloud::OneValueChartDataPoint.new
      point12.value = 50
      point13 = AsposeSlidesCloud::OneValueChartDataPoint.new
      point13.value = 0
      point13.value_formula = "SUM(B2:B3)"
      series1.data_points = [point11, point12, point13]
      chart.series = [ series1 ]
      category1 = AsposeSlidesCloud::ChartCategory.new
      category1.value = "Category1"
      category2 = AsposeSlidesCloud::ChartCategory.new
      category2.value = "Category2"
      category3 = AsposeSlidesCloud::ChartCategory.new
      category3.value = "Category3"
      chart.categories = [category1, category2, category3]
      result = AsposeSlidesCloud::SpecUtils.api.create_shape(file_name, 3, chart, nil, nil, "password", folder_name)
      expect(result.series[0].data_points[2].value).to eq(90)
    end
  end
end
