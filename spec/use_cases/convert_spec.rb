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
  describe 'Convert' do
    it 'post from request' do
      source = File.binread("TestData/test.pptx")
      result = AsposeSlidesCloud::SpecUtils.api.convert(source, AsposeSlidesCloud::ExportFormat::PDF, "password")
      result_slides = AsposeSlidesCloud::SpecUtils.api.convert(source, AsposeSlidesCloud::ExportFormat::PDF, "password", nil, nil, [ 2, 4 ])
      expect(result_slides.size).to be < result.size
    end

    it 'put from request' do
      out_path = "TestData/test.pdf"
      source = File.binread("TestData/test.pptx")
      AsposeSlidesCloud::SpecUtils.api.convert_and_save(source, AsposeSlidesCloud::ExportFormat::PDF, out_path, "password")
      expect(AsposeSlidesCloud::SpecUtils.api.object_exists(out_path).exists).to be true
    end

    it 'post from storage' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pdf"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      AsposeSlidesCloud::SpecUtils.api.download_presentation(file_name, AsposeSlidesCloud::ExportFormat::HTML5, nil, "password", folder_name)
    end

    it 'put from storage' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      out_path = "TestData/test.pdf"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      AsposeSlidesCloud::SpecUtils.api.save_presentation(file_name, AsposeSlidesCloud::ExportFormat::PDF, out_path, nil, "password", folder_name)
      expect(AsposeSlidesCloud::SpecUtils.api.object_exists(out_path).exists).to be true
    end

    it 'with options from request' do
      source = File.binread("TestData/test.pptx")
      result = AsposeSlidesCloud::SpecUtils.api.convert(source, AsposeSlidesCloud::ExportFormat::PDF, "password")
      options = AsposeSlidesCloud::PdfExportOptions.new
      options.draw_slides_frame = true
      result_with_options = AsposeSlidesCloud::SpecUtils.api.convert(source, AsposeSlidesCloud::ExportFormat::PDF, "password", nil, nil, nil, options)
      expect(result_with_options.size).not_to eq(result.size)
    end

    it 'with options from storage' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      result = AsposeSlidesCloud::SpecUtils.api.download_presentation(file_name, AsposeSlidesCloud::ExportFormat::PNG, nil, "password", folder_name)
      options = AsposeSlidesCloud::ImageExportOptions.new
      options.width = 480
      options.height = 360
      result_with_options = AsposeSlidesCloud::SpecUtils.api.download_presentation(file_name, AsposeSlidesCloud::ExportFormat::PNG, options, "password", folder_name)
      expect(result_with_options.size).to be < result.size
    end

    it 'slide post from request' do
      source = File.binread("TestData/test.pptx")
      result = AsposeSlidesCloud::SpecUtils.api.download_slide_online(source, 1, AsposeSlidesCloud::SlideExportFormat::PDF, nil, nil, "password")
    end

    it 'slide put from request' do
      out_path = "TestData/test.pdf"
      source = File.binread("TestData/test.pptx")
      AsposeSlidesCloud::SpecUtils.api.save_slide_online(source, 1, AsposeSlidesCloud::SlideExportFormat::PDF, out_path, nil, nil, "password")
      expect(AsposeSlidesCloud::SpecUtils.api.object_exists(out_path).exists).to be true
    end

    it 'slide post from storage' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pdf"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      AsposeSlidesCloud::SpecUtils.api.download_slide(file_name, 1, AsposeSlidesCloud::SlideExportFormat::PDF, nil, nil, nil, "password", folder_name)
    end

    it 'slide put from storage' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      out_path = "TestData/test.pdf"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      AsposeSlidesCloud::SpecUtils.api.save_slide(file_name, 1, AsposeSlidesCloud::SlideExportFormat::PDF, out_path, nil, nil, nil, "password", folder_name)
      expect(AsposeSlidesCloud::SpecUtils.api.object_exists(out_path).exists).to be true
    end

    it 'slide with options from request' do
      source = File.binread("TestData/test.pptx")
      result = AsposeSlidesCloud::SpecUtils.api.download_slide_online(source, 1, AsposeSlidesCloud::SlideExportFormat::PDF, nil, nil, "password")
      options = AsposeSlidesCloud::PdfExportOptions.new
      options.draw_slides_frame = true
      result_with_options = AsposeSlidesCloud::SpecUtils.api.download_slide_online(source, 1, AsposeSlidesCloud::SlideExportFormat::PDF, nil, nil, "password", nil, nil, options)
      expect(result_with_options.size).not_to eq(result.size)
    end

    it 'slide with options from storage' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      result = AsposeSlidesCloud::SpecUtils.api.download_slide(file_name, 1, AsposeSlidesCloud::SlideExportFormat::PDF, nil, nil, nil, "password", folder_name)
      options = AsposeSlidesCloud::PdfExportOptions.new
      options.draw_slides_frame = true
      result_with_options = AsposeSlidesCloud::SpecUtils.api.download_slide(file_name, 1, AsposeSlidesCloud::SlideExportFormat::PDF, options, nil, nil, "password", folder_name)
      expect(result_with_options.size).not_to eq(result.size)
    end

    it 'shape post from request' do
      source = File.binread("TestData/test.pptx")
      result = AsposeSlidesCloud::SpecUtils.api.download_shape_online(source, 1, 3, AsposeSlidesCloud::ShapeExportFormat::PNG, nil, nil, nil, "password")
    end

    it 'shape put from request' do
      out_path = "TestData/test.pdf"
      source = File.binread("TestData/test.pptx")
      AsposeSlidesCloud::SpecUtils.api.save_shape_online(source, 1, 1, AsposeSlidesCloud::ShapeExportFormat::PNG, out_path, nil, nil, nil, "password")
      expect(AsposeSlidesCloud::SpecUtils.api.object_exists(out_path).exists).to be true
    end

    it 'shape post from storage' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pdf"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      AsposeSlidesCloud::SpecUtils.api.download_shape(file_name, 1, 1, AsposeSlidesCloud::ShapeExportFormat::PNG, nil, nil, nil, nil, "password", folder_name)
    end

    it 'subshape post from storage' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      shape_index = 4
      sub_shape = "1"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      response = AsposeSlidesCloud::SpecUtils.api.download_shape(file_name, 1, shape_index, AsposeSlidesCloud::ShapeExportFormat::PNG, 
        nil, nil, nil, nil, "password", folder_name, "", sub_shape)
      expect(response.size).not_to eq(0)
    end

    it 'shape put from storage' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      out_path = "TestData/test.pdf"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      AsposeSlidesCloud::SpecUtils.api.save_shape(file_name, 1, 1, AsposeSlidesCloud::ShapeExportFormat::PNG, out_path, nil, nil, nil, nil, "password", folder_name)
      expect(AsposeSlidesCloud::SpecUtils.api.object_exists(out_path).exists).to be true
    end

    it 'subshape put from storage' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      out_path = "TestData/test.png"
      shape_index = 4
      sub_shape = "1"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      AsposeSlidesCloud::SpecUtils.api.save_shape(file_name, 1, shape_index, AsposeSlidesCloud::ShapeExportFormat::PNG, 
        out_path, nil, nil, nil, nil, "password", folder_name, "", sub_shape)
      expect(AsposeSlidesCloud::SpecUtils.api.object_exists(out_path).exists).to be true
    end

    it "font fallback rules" do
      font_rule1 = AsposeSlidesCloud::FontFallbackRule.new
      font_rule1.range_start_index = 0x0B80
      font_rule1.range_end_index = 0x0BFF
      font_rule1.fallback_font_list = ["Vijaya"]

      font_rule2 = AsposeSlidesCloud::FontFallbackRule.new
      font_rule2.range_start_index = 0x0B80
      font_rule2.range_end_index = 0x0BFF
      font_rule2.fallback_font_list = ["Segoe UI Emoji", "Segoe UI Symbol", "Arial"]

      font_rules = [font_rule1, font_rule2]
      export_options = AsposeSlidesCloud::ImageExportOptions.new
      export_options.font_fallback_rules = font_rules

      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      response = AsposeSlidesCloud::SpecUtils.api.download_presentation(file_name, "PNG", export_options, "password", folder_name)
      expect(response.size).not_to eq(0)
    end
  end
end
