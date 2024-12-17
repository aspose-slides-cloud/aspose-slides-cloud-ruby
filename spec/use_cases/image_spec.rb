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
require 'zip'

describe 'UseCases' do
  describe 'Images' do
    it 'get' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      password = "password"
      AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      presentation_result = AsposeSlidesCloud::SpecUtils.testSlidesApi.get_presentation_images(file_name, password, folder_name)
      slide_result = AsposeSlidesCloud::SpecUtils.testSlidesApi.get_slide_images(file_name, 1, password, folder_name)
      expect(slide_result.list.length).to be < presentation_result.list.length
    end

    it 'download all storage' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      password = "password"
      AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      default_result = AsposeSlidesCloud::SpecUtils.testSlidesApi.download_images_default_format(file_name, password, folder_name)
      png_result = AsposeSlidesCloud::SpecUtils.testSlidesApi.download_images(file_name, 'png', password, folder_name)
      expect(png_result.size).not_to eq(default_result.size)
      default_count = 0
      Zip::File.open_buffer(default_result) do |zip|
        zip.each do |entry|
          default_count += 1
        end
      end
      png_count = 0
      Zip::File.open_buffer(png_result) do |zip|
        zip.each do |entry|
          png_count += 1
        end
      end
      expect(png_count).to eq(default_count)
    end

    it 'download all request' do
      password = "password"
      source = File.binread("TestData/test.pptx")
      default_result = AsposeSlidesCloud::SpecUtils.testSlidesApi.download_images_default_format_online(source, password)
      png_result = AsposeSlidesCloud::SpecUtils.testSlidesApi.download_images_online(source, 'png', password)
      expect(png_result.size).not_to eq(default_result.size)
      default_count = 0
      Zip::File.open_buffer(default_result) do |zip|
        zip.each do |entry|
          default_count += 1
        end
      end
      png_count = 0
      Zip::File.open_buffer(png_result) do |zip|
        zip.each do |entry|
          png_count += 1
        end
      end
      expect(png_count).to eq(default_count)
    end

    it 'image download storage' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      slide_index = 1
      password = "password"
      AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      default_result = AsposeSlidesCloud::SpecUtils.testSlidesApi.download_image_default_format(file_name, slide_index, password, folder_name)
      png_result = AsposeSlidesCloud::SpecUtils.testSlidesApi.download_image(file_name, slide_index, 'png', password, folder_name)
      expect(png_result.size).not_to eq(default_result.size)
    end

    it 'image download request' do
      slide_index = 1
      password = "password"
      source = File.binread("TestData/test.pptx")
      default_result = AsposeSlidesCloud::SpecUtils.testSlidesApi.download_image_default_format_online(source, slide_index, password)
      png_result = AsposeSlidesCloud::SpecUtils.testSlidesApi.download_image_online(source, slide_index, 'png', password)
      expect(png_result.size).not_to eq(default_result.size)
    end

    it 'replace image' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      image_index = 1
      password = "password"
      AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

      image = File.binread("TestData/watermark.png")
      AsposeSlidesCloud::SpecUtils.testSlidesApi.replace_image(file_name, image_index, image, password, folder_name)
    end

    it 'replace image request' do
      image_index = 1
      password = "password"

      file = File.binread("TestData/test.pptx")
      image = File.binread("TestData/watermark.png")
      response = AsposeSlidesCloud::SpecUtils.testSlidesApi.replace_image_online(file, image_index, image, password)
      expect(response.size).not_to eq(0)
    end

    it 'compress image' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      slide_index = 2
      shape_index = 2
      password = "password"
      AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      AsposeSlidesCloud::SpecUtils.testSlidesApi.compress_image(
          file_name, slide_index, shape_index, 150, nil, password, folder_name)
    end

    it 'delete picture cropped areas' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      slide_index = 2
      shape_index = 2
      password = "password"
      AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      AsposeSlidesCloud::SpecUtils.testSlidesApi.compress_image(
          file_name, slide_index, shape_index, nil, true, password, folder_name)
    end

    it 'delete picture cropped areas wrong shape type' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      slide_index = 2
      shape_index = 3
      password = "password"
      AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      begin
          AsposeSlidesCloud::SpecUtils.testSlidesApi.compress_image(
              file_name, slide_index, shape_index, nil, true, password, folder_name)
        fail "Should throw an exception if shape is not PictureFrame"
      rescue AsposeSlidesCloud::ApiError => e
        expect(e.code).to eq(400)
      end
    end
  end
end
