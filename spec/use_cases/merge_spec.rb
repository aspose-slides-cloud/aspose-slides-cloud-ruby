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
  describe 'Merge' do
    it 'storage' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      file_name2 = "test-unprotected.pptx"
      file_name_pdf = "test.pdf"
      password = "password"
      AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name2, folder_name + "/" + file_name2)
      AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name_pdf, folder_name + "/" + file_name_pdf)
      request = AsposeSlidesCloud::PresentationsMergeRequest.new
      request.presentation_paths = [ folder_name + "/" + file_name2, folder_name + "/" + file_name_pdf ]
      AsposeSlidesCloud::SpecUtils.testSlidesApi.merge(file_name, request, password, folder_name)
    end

    it 'ordered storage' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      file_name2 = "test-unprotected.pptx"
      password = "password"
      AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name2, folder_name + "/" + file_name2)
      request = AsposeSlidesCloud::OrderedMergeRequest.new
      presentation = AsposeSlidesCloud::PresentationToMerge.new
      presentation.path = folder_name + "/" + file_name2
      presentation.slides = [ 2, 1 ]
      request.presentations = [ presentation ]
      AsposeSlidesCloud::SpecUtils.testSlidesApi.ordered_merge(file_name, request, password, folder_name)
    end

    it 'request' do
      source1 = File.binread("TestData/TemplateCV.pptx")
      source2 = File.binread("TestData/test-unprotected.pptx")
      files = [ source1, source2 ]
      AsposeSlidesCloud::SpecUtils.testSlidesApi.merge_online(files)
    end

    it 'request save' do
      out_path = "TestData/out.pptx"
      source1 = File.binread("TestData/TemplateCV.pptx")
      source2 = File.binread("TestData/test-unprotected.pptx")
      files = [ source1, source2 ]
      AsposeSlidesCloud::SpecUtils.testSlidesApi.merge_and_save_online(out_path, files)
      expect(AsposeSlidesCloud::SpecUtils.testSlidesApi.object_exists(out_path).exists).to be true
    end

    it 'ordered request' do
      source1 = File.binread("TestData/test.pptx")
      source2 = File.binread("TestData/test-unprotected.pptx")
      files = [ source1, source2 ]
      request = AsposeSlidesCloud::OrderedMergeRequest.new
      presentation1 = AsposeSlidesCloud::PresentationToMerge.new
      presentation1.path = "file1"
      presentation1.password = "password"
      presentation2 = AsposeSlidesCloud::PresentationToMerge.new
      presentation2.path = "file2"
      presentation2.slides = [ 1, 2 ]
      request.presentations = [ presentation1, presentation2 ]
      AsposeSlidesCloud::SpecUtils.testSlidesApi.merge_online(files, request)
    end

    it 'ordered combined' do
      folder_name = "TempSlidesSDK"
      file_name2 = "test-unprotected.pptx"
      AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name2, folder_name + "/" + file_name2)
      source = File.binread("TestData/test.pptx")
      files = [ source ]
      request = AsposeSlidesCloud::OrderedMergeRequest.new
      presentation1 = AsposeSlidesCloud::PresentationToMerge.new
      presentation1.path = "file1"
      presentation1.password = "password"
      presentation2 = AsposeSlidesCloud::PresentationToMerge.new
      presentation2.slides = [ 1, 2 ]
      presentation2.source = 'Storage'
      presentation2.path = folder_name + "/" + file_name2
      request.presentations = [ presentation1, presentation2 ]
      AsposeSlidesCloud::SpecUtils.testSlidesApi.merge_online(files, request)
    end

    it "ordered url" do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      password = "password"
      AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

      request = AsposeSlidesCloud::OrderedMergeRequest.new
      presentation_to_merge1 = AsposeSlidesCloud::PresentationToMerge.new
      presentation_to_merge1.slides = [1,2]
      presentation_to_merge1.source = "Storage"
      presentation_to_merge1.path = folder_name + "/" + file_name
      presentation_to_merge1.password = password
      presentation_to_merge2 = AsposeSlidesCloud::PresentationToMerge.new
      presentation_to_merge2.slides = [2]
      presentation_to_merge2.source = "Url"
      presentation_to_merge2.path = "https://www.dropbox.com/scl/fi/nz3yt2wpg4eugiw12bz3g/info.pptx?rlkey=wju4vbi6h46q8733tzzvfgufz&e=1&st=pqt66x86&dl=1"
      request.presentations = [presentation_to_merge1, presentation_to_merge2]
      response = AsposeSlidesCloud::SpecUtils.testSlidesApi.merge_online(nil, request)
      expect(response.size).not_to eq(0)
    end
  end
end
