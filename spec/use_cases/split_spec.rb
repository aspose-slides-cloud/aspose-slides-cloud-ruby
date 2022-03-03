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
  describe 'Split' do
    it 'storage' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      password = "password"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      result1 = AsposeSlidesCloud::SpecUtils.api.split(file_name, nil, nil, nil, nil, nil, nil, nil, password, folder_name)
      result2 = AsposeSlidesCloud::SpecUtils.api.split(file_name, nil, nil, nil, nil, 2, 3, nil, password, folder_name)
      expect(result2.slides.length).to eq(2)
      expect(result2.slides.length).to be < result1.slides.length
      url = result1.slides[0].href
      path = url[url.index("/storage/file/") + "/storage/file/".length, url.length - 1]
      expect(AsposeSlidesCloud::SpecUtils.api.object_exists(path).exists).to be true
    end

    it 'request' do
      source = File.binread("TestData/test.pptx")
      password = "password"
      result1 = AsposeSlidesCloud::SpecUtils.api.split_online(source, 'png', nil, nil, nil, nil, password)
      result2 = AsposeSlidesCloud::SpecUtils.api.split_online(source, 'png', nil, nil, 2, 3, password)
      count1 = 0
      Zip::File.open_buffer(result1) do |zip|
        zip.each do |entry|
          count1 += 1
        end
      end
      count2 = 0
      Zip::File.open_buffer(result2) do |zip|
        zip.each do |entry|
          count2 += 1
        end
      end
      expect(count2).to eq(2)
      expect(count2).to be < count1
    end

    it 'request to storage' do
      source = File.binread("TestData/test.pptx")
      password = "password"
      result1 = AsposeSlidesCloud::SpecUtils.api.split_and_save_online(source, 'png', nil, nil, nil, nil, nil, password)
      result2 = AsposeSlidesCloud::SpecUtils.api.split_and_save_online(source, 'png', nil, nil, nil, 2, 3, password)
      expect(result2.slides.length).to eq(2)
      expect(result2.slides.length).to be < result1.slides.length
      url = result1.slides[0].href
      path = url[url.index("/storage/file/") + "/storage/file/".length, url.length - 1]
      expect(AsposeSlidesCloud::SpecUtils.api.object_exists(path).exists).to be true
    end

    it 'with options' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      password = "password"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      options = AsposeSlidesCloud::PdfExportOptions.new
      options.jpeg_quality = 50
      result = AsposeSlidesCloud::SpecUtils.api.split(file_name, options, nil, nil, nil, nil, nil, nil, password, folder_name)
      url = result.slides[0].href
      path = url[url.index("/storage/file/") + "/storage/file/".length, url.length - 1]
      expect(AsposeSlidesCloud::SpecUtils.api.object_exists(path).exists).to be true
    end
  end
end
