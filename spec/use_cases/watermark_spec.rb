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
require 'base64'

describe 'UseCases' do
  describe 'Watermark' do
    it 'text storage' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      password = "password"
      slide_index = 1
      watermark_text = "watermarkText"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      get1_result = AsposeSlidesCloud::SpecUtils.api.get_shapes(file_name, slide_index, password, folder_name)
      shape_count = get1_result.shapes_links.length + 1
      AsposeSlidesCloud::SpecUtils.api.create_watermark(file_name, nil, nil, watermark_text, nil, nil, password, folder_name)
      get2_result = AsposeSlidesCloud::SpecUtils.api.get_shapes(file_name, slide_index, password, folder_name)
      expect(get2_result.shapes_links.length).to eq(shape_count)
      shape = AsposeSlidesCloud::SpecUtils.api.get_shape(file_name, slide_index, shape_count, password, folder_name)
      expect(shape.name).to eq("watermark")
      expect(shape.text).to eq(watermark_text)
      AsposeSlidesCloud::SpecUtils.api.delete_watermark(file_name, nil, password, folder_name)
      get3_result = AsposeSlidesCloud::SpecUtils.api.get_shapes(file_name, slide_index, password, folder_name)
      expect(get3_result.shapes_links.length).to eq(shape_count - 1)
    end

    it 'dto storage' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      password = "password"
      slide_index = 1
      watermark_text = "watermarkText"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      get1_result = AsposeSlidesCloud::SpecUtils.api.get_shapes(file_name, slide_index, password, folder_name)
      shape_count = get1_result.shapes_links.length + 1
      watermark = AsposeSlidesCloud::Shape.new
      watermark.text = watermark_text
      AsposeSlidesCloud::SpecUtils.api.create_watermark(file_name, watermark, nil, nil, nil, nil, password, folder_name)
      get2_result = AsposeSlidesCloud::SpecUtils.api.get_shapes(file_name, slide_index, password, folder_name)
      expect(get2_result.shapes_links.length).to eq(shape_count)
      shape = AsposeSlidesCloud::SpecUtils.api.get_shape(file_name, slide_index, shape_count, password, folder_name)
      expect(shape.name).to eq("watermark")
      expect(shape.text).to eq(watermark_text)
      AsposeSlidesCloud::SpecUtils.api.delete_watermark(file_name, nil, password, folder_name)
      get3_result = AsposeSlidesCloud::SpecUtils.api.get_shapes(file_name, slide_index, password, folder_name)
      expect(get3_result.shapes_links.length).to eq(shape_count - 1)
    end

    it 'image storage' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      password = "password"
      slide_index = 1
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      get1_result = AsposeSlidesCloud::SpecUtils.api.get_shapes(file_name, slide_index, password, folder_name)
      shape_count = get1_result.shapes_links.length + 1
      source = File.binread("TestData/watermark.png")
      AsposeSlidesCloud::SpecUtils.api.create_image_watermark(file_name, source, nil, password, folder_name)
      get2_result = AsposeSlidesCloud::SpecUtils.api.get_shapes(file_name, slide_index, password, folder_name)
      expect(get2_result.shapes_links.length).to eq(shape_count)
      shape = AsposeSlidesCloud::SpecUtils.api.get_shape(file_name, slide_index, shape_count, password, folder_name)
      expect(shape.name).to eq("watermark")
      AsposeSlidesCloud::SpecUtils.api.delete_watermark(file_name, nil, password, folder_name)
      get3_result = AsposeSlidesCloud::SpecUtils.api.get_shapes(file_name, slide_index, password, folder_name)
      expect(get3_result.shapes_links.length).to eq(shape_count - 1)
    end

    it 'image dto storage' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      password = "password"
      slide_index = 1
      watermark_name = "myWatermark"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      get1_result = AsposeSlidesCloud::SpecUtils.api.get_shapes(file_name, slide_index, password, folder_name)
      shape_count = get1_result.shapes_links.length + 1
      source = File.binread("TestData/watermark.png")
      watermark = AsposeSlidesCloud::PictureFrame.new
      fill_format = AsposeSlidesCloud::PictureFill.new
      fill_format.base64_data = Base64.encode64(source)
      watermark.fill_format = fill_format
      watermark.name = watermark_name
      AsposeSlidesCloud::SpecUtils.api.create_image_watermark(file_name, nil, watermark, password, folder_name)
      get2_result = AsposeSlidesCloud::SpecUtils.api.get_shapes(file_name, slide_index, password, folder_name)
      expect(get2_result.shapes_links.length).to eq(shape_count)
      shape = AsposeSlidesCloud::SpecUtils.api.get_shape(file_name, slide_index, shape_count, password, folder_name)
      expect(shape.name).to eq(watermark_name)
      AsposeSlidesCloud::SpecUtils.api.delete_watermark(file_name, watermark_name, password, folder_name)
      get3_result = AsposeSlidesCloud::SpecUtils.api.get_shapes(file_name, slide_index, password, folder_name)
      expect(get3_result.shapes_links.length).to eq(shape_count - 1)
    end

    it 'text request' do
      password = "password"
      source = File.binread("TestData/test.pptx")
      post_result = AsposeSlidesCloud::SpecUtils.api.create_watermark_online(source, nil, nil, "watermarkText", nil, nil, password)
      expect(post_result.size).not_to eq(source.size)
      delete_result = AsposeSlidesCloud::SpecUtils.api.delete_watermark_online(source, nil, password)
      expect(post_result.size).to be > delete_result.size
    end

    it 'dto request' do
      password = "password"
      source = File.binread("TestData/test.pptx")
      watermark = AsposeSlidesCloud::Shape.new
      watermark.text = "watermarkText"
      post_result = AsposeSlidesCloud::SpecUtils.api.create_watermark_online(source, watermark, nil, nil, nil, nil, password)
      expect(post_result.size).not_to eq(source.size)
      delete_result = AsposeSlidesCloud::SpecUtils.api.delete_watermark_online(source, nil, password)
      expect(post_result.size).to be > delete_result.size
    end

    it 'image request' do
      password = "password"
      source = File.binread("TestData/test.pptx")
      watermark = File.binread("TestData/watermark.png")
      post_result = AsposeSlidesCloud::SpecUtils.api.create_image_watermark_online(source, watermark, nil, password)
      expect(post_result.size).not_to eq(source.size)
      delete_result = AsposeSlidesCloud::SpecUtils.api.delete_watermark_online(source, nil, password)
      expect(post_result.size).to be > delete_result.size
    end

    it 'image dto request' do
      password = "password"
      source = File.binread("TestData/test.pptx")
      watermark_source = File.binread("TestData/watermark.png")
      watermark = AsposeSlidesCloud::PictureFrame.new
      fill_format = AsposeSlidesCloud::PictureFill.new
      fill_format.base64_data = Base64.encode64(watermark_source)
      watermark.fill_format = fill_format
      post_result = AsposeSlidesCloud::SpecUtils.api.create_image_watermark_online(source, nil, watermark, password)
      expect(post_result.size).not_to eq(source.size)
      delete_result = AsposeSlidesCloud::SpecUtils.api.delete_watermark_online(source, nil, password)
      expect(post_result.size).to be > delete_result.size
    end
  end
end
