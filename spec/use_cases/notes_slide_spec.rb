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
  describe 'Notes Slide' do
    it 'get from storage' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      result = AsposeSlidesCloud::SpecUtils.api.get_notes_slide(file_name, 1, "password", folder_name)
      expect(result.text).to be_truthy
    end

    it 'exists from storage' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      result = AsposeSlidesCloud::SpecUtils.api.notes_slide_exists(file_name, 1, "password", folder_name)
      expect(result.exists).to be true
    end

    it 'download from storage' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      AsposeSlidesCloud::SpecUtils.api.download_notes_slide(file_name, 1, AsposeSlidesCloud::NotesSlideExportFormat::PNG, nil, nil, "password", folder_name)
    end

    it 'get from request' do
      source = File.binread("TestData/test.pptx")
      result = AsposeSlidesCloud::SpecUtils.api.get_notes_slide_online(source, 1, "password")
      expect(result.text).to be_truthy
    end

    it 'exists from request' do
      source = File.binread("TestData/test.pptx")
      result = AsposeSlidesCloud::SpecUtils.api.notes_slide_exists_online(source, 1, "password")
      expect(result.exists).to be true
    end

    it 'download from request' do
      source = File.binread("TestData/test.pptx")
      AsposeSlidesCloud::SpecUtils.api.download_notes_slide_online(source, 1, AsposeSlidesCloud::NotesSlideExportFormat::PNG, nil, nil, "password")
    end

    it 'shapes' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      password = "password"
      slide_index = 1
      shape_count = 3
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

      shapes = AsposeSlidesCloud::SpecUtils.api.get_special_slide_shapes(file_name, slide_index, AsposeSlidesCloud::SpecialSlideType::NOTES_SLIDE, password, folder_name)
      expect(shapes.shapes_links.length).to eq(shape_count)

      dto = AsposeSlidesCloud::Shape.new
      dto.x = 100
      dto.y = 100
      dto.width = 500
      dto.height = 200
      dto.shape_type = "Rectangle"
      dto.text = "New shape"
      shape = AsposeSlidesCloud::SpecUtils.api.create_special_slide_shape(file_name, slide_index, AsposeSlidesCloud::SpecialSlideType::NOTES_SLIDE, dto, nil, nil, password, folder_name)
      expect(shape.text).to eq(dto.text)
      shapes = AsposeSlidesCloud::SpecUtils.api.get_special_slide_shapes(file_name, slide_index, AsposeSlidesCloud::SpecialSlideType::NOTES_SLIDE, password, folder_name)
      expect(shapes.shapes_links.length).to eq(shape_count + 1)

      dto.text = "updated shape"
      shape = AsposeSlidesCloud::SpecUtils.api.update_special_slide_shape(file_name, slide_index, AsposeSlidesCloud::SpecialSlideType::NOTES_SLIDE, shape_count + 1, dto, password, folder_name)
      expect(shape.text).to eq(dto.text)
      shapes = AsposeSlidesCloud::SpecUtils.api.get_special_slide_shapes(file_name, slide_index, AsposeSlidesCloud::SpecialSlideType::NOTES_SLIDE, password, folder_name)
      expect(shapes.shapes_links.length).to eq(shape_count + 1)

      AsposeSlidesCloud::SpecUtils.api.delete_special_slide_shape(file_name, slide_index, AsposeSlidesCloud::SpecialSlideType::NOTES_SLIDE, shape_count + 1, password, folder_name)
      shapes = AsposeSlidesCloud::SpecUtils.api.get_special_slide_shapes(file_name, slide_index, AsposeSlidesCloud::SpecialSlideType::NOTES_SLIDE, password, folder_name)
      expect(shapes.shapes_links.length).to eq(shape_count)
    end

    it 'paragraphs' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      password = "password"
      slide_index = 1
      shape_index = 2
      paragraph_count = 1
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

      paragraphs = AsposeSlidesCloud::SpecUtils.api.get_special_slide_paragraphs(file_name, slide_index, AsposeSlidesCloud::SpecialSlideType::NOTES_SLIDE, shape_index, password, folder_name)
      expect(paragraphs.paragraph_links.length).to eq(paragraph_count)

      portion = AsposeSlidesCloud::Portion.new
      portion.text = "New Paragraph"
      dto = AsposeSlidesCloud::Paragraph.new
      dto.alignment = "Right"
      dto.portion_list = [ portion ]
      paragraph = AsposeSlidesCloud::SpecUtils.api.create_special_slide_paragraph(file_name, slide_index, AsposeSlidesCloud::SpecialSlideType::NOTES_SLIDE, shape_index, dto, nil, password, folder_name)
      expect(paragraph.alignment).to eq(dto.alignment)
      paragraphs = AsposeSlidesCloud::SpecUtils.api.get_special_slide_paragraphs(file_name, slide_index, AsposeSlidesCloud::SpecialSlideType::NOTES_SLIDE, shape_index, password, folder_name)
      expect(paragraphs.paragraph_links.length).to eq(paragraph_count + 1)

      dto = AsposeSlidesCloud::Paragraph.new
      dto.alignment = "Center"
      paragraph = AsposeSlidesCloud::SpecUtils.api.update_special_slide_paragraph(file_name, slide_index, AsposeSlidesCloud::SpecialSlideType::NOTES_SLIDE, shape_index, paragraph_count + 1, dto, password, folder_name)
      expect(paragraph.alignment).to eq(dto.alignment)
      paragraphs = AsposeSlidesCloud::SpecUtils.api.get_special_slide_paragraphs(file_name, slide_index, AsposeSlidesCloud::SpecialSlideType::NOTES_SLIDE, shape_index, password, folder_name)
      expect(paragraphs.paragraph_links.length).to eq(paragraph_count + 1)

      AsposeSlidesCloud::SpecUtils.api.delete_special_slide_paragraph(file_name, slide_index, AsposeSlidesCloud::SpecialSlideType::NOTES_SLIDE, shape_index, paragraph_count + 1, password, folder_name)
      paragraphs = AsposeSlidesCloud::SpecUtils.api.get_special_slide_paragraphs(file_name, slide_index, AsposeSlidesCloud::SpecialSlideType::NOTES_SLIDE, shape_index, password, folder_name)
      expect(paragraphs.paragraph_links.length).to eq(paragraph_count)
    end

    it 'portions' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      password = "password"
      slide_index = 1
      shape_index = 2
      paragraph_index = 1
      portion_count = 1
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

      portions = AsposeSlidesCloud::SpecUtils.api.get_special_slide_portions(file_name, slide_index, AsposeSlidesCloud::SpecialSlideType::NOTES_SLIDE, shape_index, paragraph_index, password, folder_name)
      expect(portions.items.length).to eq(portion_count)

      dto = AsposeSlidesCloud::Portion.new
      dto.text = "New portion"
      dto.font_bold = "True"
      portion = AsposeSlidesCloud::SpecUtils.api.create_special_slide_portion(file_name, slide_index, AsposeSlidesCloud::SpecialSlideType::NOTES_SLIDE, shape_index, paragraph_index, dto, nil, password, folder_name)
      expect(portion.font_bold).to eq(dto.font_bold)
      expect(portion.text).to eq(dto.text)
      portions = AsposeSlidesCloud::SpecUtils.api.get_special_slide_portions(file_name, slide_index, AsposeSlidesCloud::SpecialSlideType::NOTES_SLIDE, shape_index, paragraph_index, password, folder_name)
      expect(portions.items.length).to eq(portion_count + 1)

      dto2 = AsposeSlidesCloud::Portion.new
      dto2.text = "Updated portion"
      dto2.font_height = 22
      portion = AsposeSlidesCloud::SpecUtils.api.update_special_slide_portion(file_name, slide_index, AsposeSlidesCloud::SpecialSlideType::NOTES_SLIDE, shape_index, paragraph_index, portion_count + 1, dto2, password, folder_name)
      expect(portion.font_bold).to eq(dto.font_bold)
      expect(portion.font_height).to eq(dto2.font_height)
      expect(portion.text).to eq(dto2.text)
      portions = AsposeSlidesCloud::SpecUtils.api.get_special_slide_portions(file_name, slide_index, AsposeSlidesCloud::SpecialSlideType::NOTES_SLIDE, shape_index, paragraph_index, password, folder_name)
      expect(portions.items.length).to eq(portion_count + 1)

      AsposeSlidesCloud::SpecUtils.api.delete_special_slide_portion(file_name, slide_index, AsposeSlidesCloud::SpecialSlideType::NOTES_SLIDE, shape_index, paragraph_index, portion_count + 1, password, folder_name)
      portions = AsposeSlidesCloud::SpecUtils.api.get_special_slide_portions(file_name, slide_index, AsposeSlidesCloud::SpecialSlideType::NOTES_SLIDE, shape_index, paragraph_index, password, folder_name)
      expect(portions.items.length).to eq(portion_count)
    end

    it "create" do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      password = "password"
      slide_index = 1
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      dto = AsposeSlidesCloud::NotesSlide.new
      dto.text = "Notes slide text"
      response = AsposeSlidesCloud::SpecUtils.api.create_notes_slide(file_name, slide_index, dto, password, folder_name)
      expect(response.text).to eq(dto.text)
    end

    it "update" do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      password = "password"
      slide_index = 1
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      dto = AsposeSlidesCloud::NotesSlide.new
      dto.text = "Notes slide text"
      response = AsposeSlidesCloud::SpecUtils.api.update_notes_slide(file_name, slide_index, dto, password, folder_name)
      expect(response.text).to eq(dto.text)
    end

    it "delete" do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      password = "password"
      slide_index = 1
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      response = AsposeSlidesCloud::SpecUtils.api.delete_notes_slide(file_name, slide_index, password, folder_name)
      expect(response.notes_slide).to eq(nil)
    end
  end
end
