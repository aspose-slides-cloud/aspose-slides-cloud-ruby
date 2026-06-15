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
    it 'request to request' do
      password = "password"
      source = File.binread("TestData/test.pptx")
      converted = AsposeSlidesCloud::SpecUtils.testSlidesApi.convert(source, 'pdf', password)
      converted_slides = AsposeSlidesCloud::SpecUtils.testSlidesApi.convert(source, 'pdf', password, nil, nil, [2, 4])
      expect(converted).not_to be_nil
      expect(converted.size).to be > 0
      expect(converted_slides.size).to be > 0
      expect(converted.size).to be > converted_slides.size
    end

    it 'request to storage' do
      folder_name = "TempSlidesSDK"
      password = "password"
      out_path = folder_name + "/converted.pdf"
      source = File.binread("TestData/test.pptx")
      AsposeSlidesCloud::SpecUtils.testSlidesApi.convert_and_save(source, 'pdf', out_path, password)
      expect(AsposeSlidesCloud::SpecUtils.testSlidesApi.object_exists(out_path).exists).to be true
    end

    it 'storage to request' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pdf"
      AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      converted = AsposeSlidesCloud::SpecUtils.testSlidesApi.download_presentation(file_name, 'html5', nil, nil, folder_name)
      expect(converted).not_to be_nil
      expect(converted.size).to be > 0
    end

    it 'storage to storage' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      password = "password"
      out_path = folder_name + "/converted.pdf"
      AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      AsposeSlidesCloud::SpecUtils.testSlidesApi.save_presentation(file_name, 'pdf', out_path, nil, password, folder_name)
      expect(AsposeSlidesCloud::SpecUtils.testSlidesApi.object_exists(out_path).exists).to be true
    end

    it 'request with options' do
      password = "password"
      source = File.binread("TestData/test.pptx")
      converted = AsposeSlidesCloud::SpecUtils.testSlidesApi.convert(source, 'pdf', password)
      options = AsposeSlidesCloud::PdfExportOptions.new
      options.draw_slides_frame = true
      converted_with_options = AsposeSlidesCloud::SpecUtils.testSlidesApi.convert(source, 'pdf', password, nil, nil, nil, options)
      expect(converted.size).not_to eq(converted_with_options.size)
    end

    it 'storage with options' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      password = "password"
      AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      converted = AsposeSlidesCloud::SpecUtils.testSlidesApi.download_presentation(file_name, 'png', nil, password, folder_name)
      options = AsposeSlidesCloud::ImageExportOptions.new
      options.width = 480
      options.height = 360
      converted_with_options = AsposeSlidesCloud::SpecUtils.testSlidesApi.download_presentation(file_name, 'png', options, password, folder_name)
      expect(converted.size).to be > converted_with_options.size
    end

    it 'slide request to request' do
      password = "password"
      slide_index = 1
      source = File.binread("TestData/test.pptx")
      converted = AsposeSlidesCloud::SpecUtils.testSlidesApi.download_slide_online(source, slide_index, 'pdf', nil, nil, password)
      expect(converted).not_to be_nil
      expect(converted.size).to be > 0
    end

    it 'slide request to storage' do
      folder_name = "TempSlidesSDK"
      password = "password"
      slide_index = 1
      out_path = folder_name + "/converted.pdf"
      source = File.binread("TestData/test.pptx")
      AsposeSlidesCloud::SpecUtils.testSlidesApi.save_slide_online(source, slide_index, 'pdf', out_path, nil, nil, password)
      expect(AsposeSlidesCloud::SpecUtils.testSlidesApi.object_exists(out_path).exists).to be true
    end

    it 'slide storage to request' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      password = "password"
      slide_index = 1
      AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      converted = AsposeSlidesCloud::SpecUtils.testSlidesApi.download_slide(file_name, slide_index, 'pdf', nil, nil, nil, password, folder_name)
      expect(converted).not_to be_nil
      expect(converted.size).to be > 0
    end

    it 'slide storage to storage' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      password = "password"
      slide_index = 1
      out_path = folder_name + "/converted.pdf"
      AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      AsposeSlidesCloud::SpecUtils.testSlidesApi.save_slide(file_name, slide_index, 'pdf', out_path, nil, nil, nil, password, folder_name)
      expect(AsposeSlidesCloud::SpecUtils.testSlidesApi.object_exists(out_path).exists).to be true
    end

    it 'slide request with options' do
      password = "password"
      slide_index = 1
      source = File.binread("TestData/test.pptx")
      converted = AsposeSlidesCloud::SpecUtils.testSlidesApi.download_slide_online(source, slide_index, 'pdf', nil, nil, password)
      options = AsposeSlidesCloud::PdfExportOptions.new
      options.draw_slides_frame = true
      converted_with_options = AsposeSlidesCloud::SpecUtils.testSlidesApi.download_slide_online(source, slide_index, 'pdf', nil, nil, password, nil, nil, options)
      expect(converted.size).not_to eq(converted_with_options.size)
    end

    it 'slide storage with options' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      password = "password"
      slide_index = 1
      AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      converted = AsposeSlidesCloud::SpecUtils.testSlidesApi.download_slide(file_name, slide_index, 'pdf', nil, nil, nil, password, folder_name)
      options = AsposeSlidesCloud::PdfExportOptions.new
      options.draw_slides_frame = true
      converted_with_options = AsposeSlidesCloud::SpecUtils.testSlidesApi.download_slide(file_name, slide_index, 'pdf', options, nil, nil, password, folder_name)
      expect(converted.size).not_to eq(converted_with_options.size)
    end

    it 'shape request to request' do
      password = "password"
      slide_index = 1
      shape_index = 3
      source = File.binread("TestData/test.pptx")
      converted = AsposeSlidesCloud::SpecUtils.testSlidesApi.download_shape_online(source, slide_index, shape_index, 'svg', nil, nil, nil, password)
      expect(converted).not_to be_nil
      expect(converted.size).to be > 0
    end

    it 'shape request to storage' do
      folder_name = "TempSlidesSDK"
      password = "password"
      slide_index = 1
      shape_index = 3
      out_path = folder_name + "/converted.pdf"
      source = File.binread("TestData/test.pptx")
      AsposeSlidesCloud::SpecUtils.testSlidesApi.save_shape_online(source, slide_index, shape_index, 'svg', out_path, nil, nil, nil, password)
      expect(AsposeSlidesCloud::SpecUtils.testSlidesApi.object_exists(out_path).exists).to be true
    end

    it 'shape storage to request' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      password = "password"
      slide_index = 1
      shape_index = 3
      AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      converted = AsposeSlidesCloud::SpecUtils.testSlidesApi.download_shape(file_name, slide_index, shape_index, 'svg', nil, nil, nil, nil, password, folder_name)
      expect(converted).not_to be_nil
      expect(converted.size).to be > 0
    end

    it 'sub shape storage to request' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      password = "password"
      slide_index = 1
      AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      converted = AsposeSlidesCloud::SpecUtils.testSlidesApi.download_shape(file_name, slide_index, 4, 'svg', nil, nil, nil, nil, password, folder_name, nil, nil, "1")
      expect(converted).not_to be_nil
      expect(converted.size).to be > 0
    end

    it 'shape storage to storage' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      password = "password"
      slide_index = 1
      shape_index = 3
      out_path = folder_name + "/converted.pdf"
      AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      AsposeSlidesCloud::SpecUtils.testSlidesApi.save_shape(file_name, slide_index, shape_index, 'svg', out_path, nil, nil, nil, nil, password, folder_name)
      expect(AsposeSlidesCloud::SpecUtils.testSlidesApi.object_exists(out_path).exists).to be true
    end

    it 'sub shape storage to storage' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      password = "password"
      slide_index = 1
      out_path = folder_name + "/converted.pdf"
      AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      AsposeSlidesCloud::SpecUtils.testSlidesApi.save_shape(file_name, slide_index, 4, 'svg', out_path, nil, nil, nil, nil, password, folder_name, nil, nil, "1")
      expect(AsposeSlidesCloud::SpecUtils.testSlidesApi.object_exists(out_path).exists).to be true
    end

    it 'with font fall back rules' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      password = "password"
      AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      font_rules = []
      rule1 = AsposeSlidesCloud::FontFallbackRule.new
      rule1.range_start_index = 0x0B80
      rule1.range_end_index = 0x0BFF
      rule1.fallback_font_list = ["Vijaya"]
      font_rules << rule1
      rule2 = AsposeSlidesCloud::FontFallbackRule.new
      rule2.range_start_index = 0x0B80
      rule2.range_end_index = 0x0BFF
      rule2.fallback_font_list = ["Segoe UI Emoji", "Segoe UI Symbol", "Arial"]
      font_rules << rule2
      export_options = AsposeSlidesCloud::ImageExportOptions.new
      export_options.font_fallback_rules = font_rules
      response = AsposeSlidesCloud::SpecUtils.testSlidesApi.download_presentation(file_name, 'png', export_options, password, folder_name)
      expect(response).not_to be_nil
      expect(response.size).to be > 0
    end

    it 'with slide layout options' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      password = "password"
      AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      layout_options = AsposeSlidesCloud::HandoutLayoutingOptions.new
      layout_options.handout = 'Handouts2'
      layout_options.print_slide_numbers = true
      export_options = AsposeSlidesCloud::PdfExportOptions.new
      export_options.slides_layout_options = layout_options
      response = AsposeSlidesCloud::SpecUtils.testSlidesApi.download_presentation(file_name, 'pdf', export_options, password, folder_name)
      expect(response).not_to be_nil
      expect(response.size).to be > 0
    end

    it 'with custom html5 templates' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      password = "password"
      templates_path = "Html5Templates"
      template_file_name = "pictureFrame.html"
      AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + template_file_name, templates_path + "/" + template_file_name)
      AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      export_options = AsposeSlidesCloud::Html5ExportOptions.new
      export_options.templates_path = templates_path
      export_options.animate_transitions = true
      response = AsposeSlidesCloud::SpecUtils.testSlidesApi.download_presentation(file_name, 'html5', export_options, password, folder_name)
      expect(response).not_to be_nil
      expect(response.size).to be > 0
    end

    it 'get html5 templates' do
      response = AsposeSlidesCloud::SpecUtils.testSlidesApi.get_html5_templates()
      expect(response).not_to be_nil
      expect(response.size).to be > 0
    end
  end
end
