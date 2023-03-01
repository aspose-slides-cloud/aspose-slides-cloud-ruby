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
  describe 'Shapes' do
    it 'shape add' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      dto = AsposeSlidesCloud::Shape.new
      dto.shape_type = 'Callout1'
      result = AsposeSlidesCloud::SpecUtils.api.create_shape(file_name, 1, dto, nil, nil, "password", folder_name)
      expect(result).to be_kind_of(AsposeSlidesCloud::Shape)
    end

    it 'shape empty' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      dto = AsposeSlidesCloud::Shape.new
      begin
        result = AsposeSlidesCloud::SpecUtils.api.create_shape(file_name, 1, dto, nil, nil, "password", folder_name)
        fail "Shape with undefined type should not have been created"
      rescue AsposeSlidesCloud::ApiError => e
        expect(e.code).to eq(400)
      end
    end

    it 'graphical object empty' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      dto = AsposeSlidesCloud::GraphicalObject.new
      begin
        result = AsposeSlidesCloud::SpecUtils.api.create_shape(file_name, 1, dto, nil, nil, "password", folder_name)
        fail "GraphicalObject should not have been created"
      rescue AsposeSlidesCloud::ApiError => e
        expect(e.code).to eq(400)
      end
    end

    it 'picture frame add' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      dto = AsposeSlidesCloud::PictureFrame.new
      fill = AsposeSlidesCloud::PictureFill.new
      fill.base64_data = "iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAANSURBVBhXY5g+ffp/AAZTAsWGL27gAAAAAElFTkSuQmCC"
      dto.picture_fill_format = fill
      result = AsposeSlidesCloud::SpecUtils.api.create_shape(file_name, 1, dto, nil, nil, "password", folder_name)
      expect(result).to be_kind_of(AsposeSlidesCloud::PictureFrame)
    end

    it 'picture frame empty' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      dto = AsposeSlidesCloud::PictureFrame.new
      begin
        result = AsposeSlidesCloud::SpecUtils.api.create_shape(file_name, 1, dto, nil, nil, "password", folder_name)
        fail "PictureFrame with undefinined data should not have been created"
      rescue AsposeSlidesCloud::ApiError => e
        expect(e.code).to eq(400)
      end
    end

    it 'audio frame add' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      dto = AsposeSlidesCloud::AudioFrame.new
      dto.base64_data = "bXAzc2FtcGxl"
      result = AsposeSlidesCloud::SpecUtils.api.create_shape(file_name, 1, dto, nil, nil, "password", folder_name)
      expect(result).to be_kind_of(AsposeSlidesCloud::AudioFrame)
    end

    it 'audio frame empty' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      dto = AsposeSlidesCloud::AudioFrame.new
      begin
        result = AsposeSlidesCloud::SpecUtils.api.create_shape(file_name, 1, dto, nil, nil, "password", folder_name)
        fail "AudioFrame with undefinined data should not have been created"
      rescue AsposeSlidesCloud::ApiError => e
        expect(e.code).to eq(400)
      end
    end

    it 'video frame add' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      dto = AsposeSlidesCloud::VideoFrame.new
      dto.base64_data = "bXAzc2FtcGxl"
      result = AsposeSlidesCloud::SpecUtils.api.create_shape(file_name, 1, dto, nil, nil, "password", folder_name)
      expect(result).to be_kind_of(AsposeSlidesCloud::VideoFrame)
    end

    it 'video frame empty' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      dto = AsposeSlidesCloud::VideoFrame.new
      begin
        result = AsposeSlidesCloud::SpecUtils.api.create_shape(file_name, 1, dto, nil, nil, "password", folder_name)
        fail "VideoFrame with undefinined data should not have been created"
      rescue AsposeSlidesCloud::ApiError => e
        expect(e.code).to eq(400)
      end
    end

    it 'ole object frame empty' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      dto = AsposeSlidesCloud::OleObjectFrame.new
      begin
        result = AsposeSlidesCloud::SpecUtils.api.create_shape(file_name, 1, dto, nil, nil, "password", folder_name)
        fail "OleObjectFrame should not have been created"
      rescue AsposeSlidesCloud::ApiError => e
        expect(e.code).to eq(400)
      end
    end

    it 'smart art add' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      dto = AsposeSlidesCloud::SmartArt.new
      dto.x = 0
      dto.y = 0
      dto.width = 300
      dto.height = 200
      dto.layout = 'BasicProcess'
      dto.quick_style = 'SimpleFill'
      dto.color_style = 'ColoredFillAccent1'
      node1 = AsposeSlidesCloud::SmartArtNode.new
      node1.text = "First"
      node1.org_chart_layout = 'Initial'
      sub_node1 = AsposeSlidesCloud::SmartArtNode.new
      sub_node1.text = "SubFirst"
      sub_node1.org_chart_layout = 'Initial'
      node1.nodes = [ sub_node1 ]
      node2 = AsposeSlidesCloud::SmartArtNode.new
      node2.text = "Second"
      node2.org_chart_layout = 'Initial'
      dto.nodes = [ node1, node2 ]
      result = AsposeSlidesCloud::SpecUtils.api.create_shape(file_name, 1, dto, nil, nil, "password", folder_name)
      expect(result).to be_kind_of(AsposeSlidesCloud::SmartArt)
    end

    it 'smart art empty' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      dto = AsposeSlidesCloud::SmartArt.new
      result = AsposeSlidesCloud::SpecUtils.api.create_shape(file_name, 1, dto, nil, nil, "password", folder_name)
      expect(result).to be_kind_of(AsposeSlidesCloud::SmartArt)
    end

    it 'chart empty' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      dto = AsposeSlidesCloud::Chart.new
      begin
        result = AsposeSlidesCloud::SpecUtils.api.create_shape(file_name, 1, dto, nil, nil, "password", folder_name)
        fail "Chart with undefinined series should not have been created"
      rescue AsposeSlidesCloud::ApiError => e
        expect(e.code).to eq(500)
      end
    end

    it 'table add' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      dto = AsposeSlidesCloud::Table.new
      dto.x = 30
      dto.y = 20
      dto.style = 'MediumStyle2Accent1'
      row1 = AsposeSlidesCloud::TableRow.new
      cell11 = AsposeSlidesCloud::TableCell.new
      cell11.text = "0.1"
      cell12 = AsposeSlidesCloud::TableCell.new
      cell12.text = "0.2"
      cell13 = AsposeSlidesCloud::TableCell.new
      cell13.text = "0.3"
      cell14 = AsposeSlidesCloud::TableCell.new
      cell14.text = "0.4"
      row1.cells = [ cell11, cell12, cell13, cell14 ]
      row2 = AsposeSlidesCloud::TableRow.new
      cell21 = AsposeSlidesCloud::TableCell.new
      cell21.text = "1"
      cell22 = AsposeSlidesCloud::TableCell.new
      cell22.text = "2-3"
      cell22.col_span = 2
      cell22.row_span = 2
      cell24 = AsposeSlidesCloud::TableCell.new
      cell24.text = "4"
      row2.cells = [ cell21, cell22, cell24 ]
      row3 = AsposeSlidesCloud::TableRow.new
      cell31 = AsposeSlidesCloud::TableCell.new
      cell31.text = "first"
      cell32 = AsposeSlidesCloud::TableCell.new
      cell32.text = "last"
      row3.cells = [ cell31, cell32 ]
      row4 = AsposeSlidesCloud::TableRow.new
      cell41 = AsposeSlidesCloud::TableCell.new
      cell41.text = "3.1"
      cell42 = AsposeSlidesCloud::TableCell.new
      cell42.text = "3.2"
      cell43 = AsposeSlidesCloud::TableCell.new
      cell43.text = "3.3"
      cell44 = AsposeSlidesCloud::TableCell.new
      cell44.text = "3.4"
      row4.cells = [ cell41, cell42, cell43, cell44 ]
      row5 = AsposeSlidesCloud::TableRow.new
      cell51 = AsposeSlidesCloud::TableCell.new
      cell51.text = "4.1"
      cell52 = AsposeSlidesCloud::TableCell.new
      cell52.text = "4.2"
      cell53 = AsposeSlidesCloud::TableCell.new
      cell53.text = "4.3"
      cell54 = AsposeSlidesCloud::TableCell.new
      cell54.text = "4.4"
      row5.cells = [ cell51, cell52, cell53, cell54 ]
      dto.rows = [ row1, row2, row3, row4, row5 ]
      column1 = AsposeSlidesCloud::TableColumn.new
      column1.width = 100
      column2 = AsposeSlidesCloud::TableColumn.new
      column2.width = 100
      column3 = AsposeSlidesCloud::TableColumn.new
      column3.width = 100
      column4 = AsposeSlidesCloud::TableColumn.new
      column4.width = 100
      dto.columns = [ column1, column2, column3, column4 ]
      dto.first_row = true
      dto.horizontal_banding = true
      result = AsposeSlidesCloud::SpecUtils.api.create_shape(file_name, 1, dto, nil, nil, "password", folder_name)
      expect(result).to be_kind_of(AsposeSlidesCloud::Table)
    end

    it 'table empty' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      dto = AsposeSlidesCloud::Table.new
      begin
        result = AsposeSlidesCloud::SpecUtils.api.create_shape(file_name, 1, dto, nil, nil, "password", folder_name)
        fail "Table with undefinined cell data should not have been created"
      rescue AsposeSlidesCloud::ApiError => e
        expect(e.code).to eq(400)
      end
    end

    it 'group shape empty' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      dto = AsposeSlidesCloud::GroupShape.new
      result = AsposeSlidesCloud::SpecUtils.api.create_shape(file_name, 1, dto, nil, nil, "password", folder_name)
      expect(result).to be_kind_of(AsposeSlidesCloud::GroupShape)
    end

    it 'connector add' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      dto = AsposeSlidesCloud::Connector.new
      dto.shape_type = 'BentConnector3'
      start_shape = AsposeSlidesCloud::ResourceUri.new
      start_shape.href = "https://api.aspose.cloud/v3.0/slides/myPresentation.pptx/slides/1/shapes/1"
      dto.start_shape_connected_to = start_shape
      end_shape = AsposeSlidesCloud::ResourceUri.new
      end_shape.href = "https://api.aspose.cloud/v3.0/slides/myPresentation.pptx/slides/1/shapes/2"
      dto.end_shape_connected_to = end_shape
      result = AsposeSlidesCloud::SpecUtils.api.create_shape(file_name, 1, dto, nil, nil, "password", folder_name)
      expect(result).to be_kind_of(AsposeSlidesCloud::Connector)
    end

    it 'connector empty' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      dto = AsposeSlidesCloud::Connector.new
      result = AsposeSlidesCloud::SpecUtils.api.create_shape(file_name, 1, dto, nil, nil, "password", folder_name)
      expect(result).to be_kind_of(AsposeSlidesCloud::Connector)
    end

    it 'align' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      password = "password"
      slide_index = 3
      shape1_index = 1
      shape2_index = 2
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      shape11 = AsposeSlidesCloud::SpecUtils.api.get_shape(file_name, slide_index, shape1_index, password, folder_name)
      shape12 = AsposeSlidesCloud::SpecUtils.api.get_shape(file_name, slide_index, shape2_index, password, folder_name)
      expect(shape12.x).not_to be_within(1).of(shape11.x)
      expect(shape12.y).not_to eq(shape11.y)
      AsposeSlidesCloud::SpecUtils.api.align_shapes(file_name, slide_index, "AlignTop", nil, nil, password, folder_name)
      shape21 = AsposeSlidesCloud::SpecUtils.api.get_shape(file_name, slide_index, shape1_index, password, folder_name)
      shape22 = AsposeSlidesCloud::SpecUtils.api.get_shape(file_name, slide_index, shape2_index, password, folder_name)
      expect(shape22.x).not_to be_within(1).of(shape21.x)
      expect(shape22.y).to be_within(1).of(shape21.y)
      AsposeSlidesCloud::SpecUtils.api.align_shapes(file_name, slide_index, "AlignLeft", true, [1, 2], password, folder_name)
      shape31 = AsposeSlidesCloud::SpecUtils.api.get_shape(file_name, slide_index, shape1_index, password, folder_name)
      shape32 = AsposeSlidesCloud::SpecUtils.api.get_shape(file_name, slide_index, shape2_index, password, folder_name)
      expect(shape32.x).to be_within(1).of(shape31.x)
      expect(shape32.x).to be_within(1).of(0)
      expect(shape32.y).to be_within(1).of(shape31.y)
    end

    it 'align group' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      password = "password"
      slide_index = 1
      shape_index = 4
      sub_shape1 = "1"
      sub_shape2 = "2"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      shape11 = AsposeSlidesCloud::SpecUtils.api.get_shape(file_name, slide_index, shape_index, password, folder_name, "", sub_shape1)
      shape12 = AsposeSlidesCloud::SpecUtils.api.get_shape(file_name, slide_index, shape_index, password, folder_name, "", sub_shape2)
      expect(shape12.x).not_to be_within(1).of(shape11.x)
      expect(shape12.y).not_to eq(shape11.y)
      AsposeSlidesCloud::SpecUtils.api.align_shapes(file_name, slide_index, "AlignTop", nil, nil, password, folder_name, "", "4")
      shape21 = AsposeSlidesCloud::SpecUtils.api.get_shape(file_name, slide_index, shape_index, password, folder_name, "", sub_shape1)
      shape22 = AsposeSlidesCloud::SpecUtils.api.get_shape(file_name, slide_index, shape_index, password, folder_name, "", sub_shape2)
      expect(shape22.x).not_to be_within(1).of(shape21.x)
      expect(shape22.y).to be_within(1).of(shape21.y)
      AsposeSlidesCloud::SpecUtils.api.align_shapes(file_name, slide_index, "AlignLeft", true, [1, 2], password, folder_name, "", "4")
      shape31 = AsposeSlidesCloud::SpecUtils.api.get_shape(file_name, slide_index, shape_index, password, folder_name, "", sub_shape1)
      shape32 = AsposeSlidesCloud::SpecUtils.api.get_shape(file_name, slide_index, shape_index, password, folder_name, "", sub_shape2)
      expect(shape32.x).to be_within(1).of(shape31.x)
      expect(shape32.x).to be_within(1).of(0)
      expect(shape32.y).to be_within(1).of(shape31.y)
    end

    it 'geometry get' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      paths = AsposeSlidesCloud::SpecUtils.api.get_shape_geometry_path(file_name, 4, 2, "password", folder_name)
      expect(paths.paths).to be_truthy
      expect(paths.paths.length).to eq(1)
    end

    it 'geometry set' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      dto = AsposeSlidesCloud::GeometryPaths.new
      path = AsposeSlidesCloud::GeometryPath.new
      start_segment = AsposeSlidesCloud::MoveToPathSegment.new
      start_segment.x = 0
      start_segment.y = 0
      line1 = AsposeSlidesCloud::LineToPathSegment.new
      line1.x = 0
      line1.y = 200
      line2 = AsposeSlidesCloud::LineToPathSegment.new
      line2.x = 200
      line2.y = 300
      line3 = AsposeSlidesCloud::LineToPathSegment.new
      line3.x = 400
      line3.y = 200
      line4 = AsposeSlidesCloud::LineToPathSegment.new
      line4.x = 400
      line4.y = 0
      end_segment = AsposeSlidesCloud::ClosePathSegment.new
      path.path_data = [ start_segment, line1, line2, line3, line4, end_segment ]
      dto.paths = [ path ]
      shape = AsposeSlidesCloud::SpecUtils.api.set_shape_geometry_path(file_name, 4, 1, dto, "password", folder_name)
      expect(shape).to be_truthy
    end

    it "zoom frame add" do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      slide_index = 3
      password = "password"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      dto = AsposeSlidesCloud::ZoomFrame.new
      dto.x = 20
      dto.y = 20
      dto.width = 200
      dto.height = 100
      dto.target_slide_index = 2
      shape = AsposeSlidesCloud::SpecUtils.api.create_shape(file_name, slide_index, dto, nil, nil, password, folder_name)
      expect(shape).to be_kind_of(AsposeSlidesCloud::ZoomFrame)
      expect(shape.target_slide_index).to eq(2)
    end

    it "section zoom frame add" do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      slide_index = 3
      password = "password"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      dto = AsposeSlidesCloud::SectionZoomFrame.new
      dto.x = 20
      dto.y = 20
      dto.width = 200
      dto.height = 100
      dto.target_section_index = 2
      shape = AsposeSlidesCloud::SpecUtils.api.create_shape(file_name, slide_index, dto, nil, nil, password, folder_name)
      expect(shape).to be_kind_of(AsposeSlidesCloud::SectionZoomFrame)
      expect(shape.target_section_index).to eq(2)
    end

    it "ole object frame add by link" do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      slide_index = 3
      password = "password"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      dto = AsposeSlidesCloud::OleObjectFrame.new
      dto.x = 20
      dto.y = 20
      dto.width = 200
      dto.height = 200
      dto.link_path = "oleObject.xlsx"
      dto.object_prog_id = "Excel.Sheet.8"
      shape = AsposeSlidesCloud::SpecUtils.api.create_shape(file_name, slide_index, dto, nil, nil, password, folder_name)
      expect(shape).to be_kind_of(AsposeSlidesCloud::OleObjectFrame)
      expect(shape.link_path).to eq(dto.link_path)
    end

    it "ole object frame add embedded" do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      slide_index = 3
      password = "password"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      source = File.binread("TestData/oleObject.xlsx")

      dto = AsposeSlidesCloud::OleObjectFrame.new
      dto.x = 20
      dto.y = 20
      dto.width = 200
      dto.height = 200
      dto.embedded_file_extension = "xlsx"
      dto.embedded_file_base64_data = Base64.encode64(source)

      shape = AsposeSlidesCloud::SpecUtils.api.create_shape(file_name, slide_index, dto, nil, nil, password, folder_name)
      expect(shape).to be_kind_of(AsposeSlidesCloud::OleObjectFrame)
      expect(shape.embedded_file_base64_data).not_to eq(nil)
    end

    it "group shape add" do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      slide_index = 5
      password = "password"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      shapes = AsposeSlidesCloud::SpecUtils.api.get_shapes(file_name, slide_index, password, folder_name)
      expect(shapes.shapes_links.length).to eq(0)

      group_shape = AsposeSlidesCloud::GroupShape.new
      AsposeSlidesCloud::SpecUtils.api.create_shape(file_name, slide_index, group_shape, nil, nil, password, folder_name)

      shape1 = AsposeSlidesCloud::Shape.new
      shape1.shape_type = "Rectangle"
      shape1.x = 50
      shape1.y = 400
      shape1.width = 50
      shape1.height = 50
      shape2 = AsposeSlidesCloud::Shape.new
      shape2.shape_type = "Ellipse"
      shape2.x = 150
      shape2.y = 400
      shape2.width = 50
      shape2.height = 50
      shape3 = AsposeSlidesCloud::Shape.new
      shape3.shape_type = "Triangle"
      shape3.x = 250
      shape3.y = 400
      shape3.width = 50
      shape3.height = 50

      AsposeSlidesCloud::SpecUtils.api.create_shape(file_name, slide_index, shape1, nil, nil, password, folder_name, "", "1")
      AsposeSlidesCloud::SpecUtils.api.create_shape(file_name, slide_index, shape2, nil, nil, password, folder_name, "", "1")
      AsposeSlidesCloud::SpecUtils.api.create_shape(file_name, slide_index, shape3, nil, nil, password, folder_name, "", "1")

      shapes = AsposeSlidesCloud::SpecUtils.api.get_shapes(file_name, slide_index, password, folder_name)
      expect(shapes.shapes_links.length).to eq(1)
      shapes = AsposeSlidesCloud::SpecUtils.api.get_shapes(file_name, slide_index, password, folder_name, "", nil, "1")
      expect(shapes.shapes_links.length).to eq(3)
    end

    it "import shapes from SVG" do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      slide_index = 5
      password = "password"
      source = File.binread("TestData/shapes.svg")
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      response = AsposeSlidesCloud::SpecUtils.api.import_shapes_from_svg(file_name, slide_index, source, 50, 50, 300, 300,
        [1,3,5], false, password, folder_name)
      expect(response.shapes_links.length).to eq(3)
    end

    it "create smart art node" do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      slide_index = 7
      smart_art_index = 1
      new_node_text = "New-root-node"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      response = AsposeSlidesCloud::SpecUtils.api.create_smart_art_node(file_name, slide_index, smart_art_index, nil, new_node_text,
        nil, "password", folder_name)
      expect(response.nodes.length).to eq(2)
      expect(response.nodes[1].text).to eq(new_node_text)
    end

    it "create smart art sub node" do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      slide_index = 7
      smart_art_index = 1
      sub_node_path = "1"
      position = 1
      new_node_text = "New-sub-node"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      response = AsposeSlidesCloud::SpecUtils.api.create_smart_art_node(file_name, slide_index, smart_art_index, sub_node_path, 
        new_node_text, position, "password", folder_name)
      expect(response.nodes[0].nodes.length).to eq(5)
      expect(response.nodes[0].nodes[0].text).to eq(new_node_text)
    end

    it "create smart art sub sub node" do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      slide_index = 7
      smart_art_index = 1
      sub_node_path = "1/nodes/1"
      new_node_text = "New-sub-sub-node"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      response = AsposeSlidesCloud::SpecUtils.api.create_smart_art_node(file_name, slide_index, smart_art_index, sub_node_path, 
        new_node_text, nil, "password", folder_name)
      expect(response.nodes[0].nodes[0].nodes.length).to eq(1)
      expect(response.nodes[0].nodes[0].nodes[0].text).to eq(new_node_text)
    end

    it "delete smart art node" do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      slide_index = 7
      smart_art_index = 2
      node_index = 1
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      response = AsposeSlidesCloud::SpecUtils.api.delete_smart_art_node(file_name, slide_index, smart_art_index, node_index, nil,
        "password", folder_name)
      expect(response.nodes.length).to eq(2)
    end

    it "delete smart art sub node" do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      slide_index = 7
      smart_art_index = 1
      node_index = 1
      sub_node_path = "2"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      response = AsposeSlidesCloud::SpecUtils.api.delete_smart_art_node(file_name, slide_index, smart_art_index, node_index, 
        sub_node_path, "password", folder_name)
      expect(response.nodes[0].nodes.length).to eq(3)
    end

    it "download shape from DTO" do
      shape = AsposeSlidesCloud::Shape.new
      shape.shape_type = "Rectangle"
      shape.width = 400
      shape.height = 200
      shape.text = "Shape text"

      response = AsposeSlidesCloud::SpecUtils.api.download_shape_from_dto(AsposeSlidesCloud::ShapeExportFormat::PNG, shape)
    end
  end
end
