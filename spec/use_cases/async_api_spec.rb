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
  describe 'AsyncApi' do
    it 'async convert' do
      sleep_timeout = 3
      max_tries = 10
      source = File.binread("TestData/test.pptx")
      operation_id = AsposeSlidesCloud::SpecUtils.testSlidesAsyncApi.start_convert(source, AsposeSlidesCloud::ExportFormat::PDF, "password")
      for i in 1 .. max_tries do
        sleep(sleep_timeout)
        operation = AsposeSlidesCloud::SpecUtils.testSlidesAsyncApi.get_operation_status(operation_id)
        if operation.status != 'Created' and operation.status != 'Enqueued' and operation.status != 'Started' 
          break
        end
      end
      expect(operation.status).to eq('Finished')
      expect(operation.error).to be_nil

      converted = AsposeSlidesCloud::SpecUtils.testSlidesAsyncApi.get_operation_result(operation_id)
      expect(converted.size).to be > 0
    end

    it 'async download presentation' do
      sleep_timeout = 3
      max_tries = 10
      folder_name = "TempSlidesSDK"
      file_name = "test.pdf"
      AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      operation_id = AsposeSlidesCloud::SpecUtils.testSlidesAsyncApi.start_download_presentation(file_name, AsposeSlidesCloud::ExportFormat::PDF, nil, "password", folder_name)
      for i in 1 .. max_tries do
        sleep(sleep_timeout)
        operation = AsposeSlidesCloud::SpecUtils.testSlidesAsyncApi.get_operation_status(operation_id)
        if operation.status != 'Created' and operation.status != 'Enqueued' and operation.status != 'Started' 
          break
        end
      end
      expect(operation.status).to eq('Finished')
      expect(operation.error).to be_nil

      converted = AsposeSlidesCloud::SpecUtils.testSlidesAsyncApi.get_operation_result(operation_id)
      expect(converted.size).to be > 0
    end

    it 'async convert and save' do
      sleep_timeout = 3
      max_tries = 10
      out_path = "TestData/converted.pptx"
      AsposeSlidesCloud::SpecUtils.testSlidesApi.delete_file(out_path)

      source = File.binread("TestData/test.pptx")
      operation_id = AsposeSlidesCloud::SpecUtils.testSlidesAsyncApi.start_convert_and_save(source, AsposeSlidesCloud::ExportFormat::PDF, out_path, "password")
      for i in 1 .. max_tries do
        sleep(sleep_timeout)
        operation = AsposeSlidesCloud::SpecUtils.testSlidesAsyncApi.get_operation_status(operation_id)
        if operation.status != 'Created' and operation.status != 'Enqueued' and operation.status != 'Started' 
          break
        end
      end
      expect(operation.status).to eq('Finished')
      expect(operation.error).to be_nil

      expect(AsposeSlidesCloud::SpecUtils.testSlidesApi.object_exists(out_path).exists).to be true
    end

    it 'async save presentation' do
      sleep_timeout = 3
      max_tries = 10
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      out_path = "TestData/converted.pptx"
      AsposeSlidesCloud::SpecUtils.testSlidesApi.delete_file(out_path)

      AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      operation_id = AsposeSlidesCloud::SpecUtils.testSlidesAsyncApi.start_save_presentation(file_name, AsposeSlidesCloud::ExportFormat::PDF, out_path, nil, "password", folder_name)
      for i in 1 .. max_tries do
        sleep(sleep_timeout)
        operation = AsposeSlidesCloud::SpecUtils.testSlidesAsyncApi.get_operation_status(operation_id)
        if operation.status != 'Created' and operation.status != 'Enqueued' and operation.status != 'Started' 
          break
        end
      end
      expect(operation.status).to eq('Finished')
      expect(operation.error).to be_nil

      expect(AsposeSlidesCloud::SpecUtils.testSlidesApi.object_exists(out_path).exists).to be true
    end

    it 'async merge' do
      sleep_timeout = 3
      max_tries = 10
      source1 = File.binread("TestData/TemplateCV.pptx")
      source2 = File.binread("TestData/test-unprotected.pptx")
      files = [ source1, source2 ]
      operation_id = AsposeSlidesCloud::SpecUtils.testSlidesAsyncApi.start_merge(files)
      for i in 1 .. max_tries do
        sleep(sleep_timeout)
        operation = AsposeSlidesCloud::SpecUtils.testSlidesAsyncApi.get_operation_status(operation_id)
        if operation.status != 'Created' and operation.status != 'Enqueued' and operation.status != 'Started' 
          break
        end
      end
      expect(operation.status).to eq('Finished')
      expect(operation.error).to be_nil

      merged = AsposeSlidesCloud::SpecUtils.testSlidesAsyncApi.get_operation_result(operation_id)
      expect(merged.size).to be > 0
    end

    it 'async merge and save' do
      sleep_timeout = 3
      max_tries = 10

      out_path = "TestData/merged.pptx"
      AsposeSlidesCloud::SpecUtils.testSlidesApi.delete_file(out_path)

      source1 = File.binread("TestData/TemplateCV.pptx")
      source2 = File.binread("TestData/test-unprotected.pptx")
      files = [ source1, source2 ]
      operation_id = AsposeSlidesCloud::SpecUtils.testSlidesAsyncApi.start_merge_and_save(out_path, files)
      for i in 1 .. max_tries do
        sleep(sleep_timeout)
        operation = AsposeSlidesCloud::SpecUtils.testSlidesAsyncApi.get_operation_status(operation_id)
        if operation.status != 'Created' and operation.status != 'Enqueued' and operation.status != 'Started' 
          break
        end
      end
      expect(operation.status).to eq('Finished')
      expect(operation.error).to be_nil

      expect(AsposeSlidesCloud::SpecUtils.testSlidesApi.object_exists(out_path).exists).to be true
    end

    it 'async split' do
      sleep_timeout = 3
      max_tries = 10
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      out_folder = "splitResult"
      AsposeSlidesCloud::SpecUtils.testSlidesApi.delete_folder(out_folder, nil, true)
      AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      operation_id = AsposeSlidesCloud::SpecUtils.testSlidesAsyncApi.start_split(file_name, AsposeSlidesCloud::ExportFormat::PDF, nil, nil, nil, nil, nil, out_folder, "password", folder_name)
      for i in 1 .. max_tries do
        sleep(sleep_timeout)
        operation = AsposeSlidesCloud::SpecUtils.testSlidesAsyncApi.get_operation_status(operation_id)
        if operation.status != 'Created' and operation.status != 'Enqueued' and operation.status != 'Started' 
          break
        end
      end
      expect(operation.status).to eq('Finished')
      expect(operation.error).to be_nil

      expect(AsposeSlidesCloud::SpecUtils.testSlidesApi.object_exists(out_folder).exists).to be true
    end

    it 'async upload and split' do
      sleep_timeout = 3
      max_tries = 10
      source = File.binread("TestData/test.pptx")
      out_folder = "splitResult"
      AsposeSlidesCloud::SpecUtils.testSlidesApi.delete_folder(out_folder, nil, true)
      operation_id = AsposeSlidesCloud::SpecUtils.testSlidesAsyncApi.start_upload_and_split(source, AsposeSlidesCloud::ExportFormat::PDF, out_folder, nil, nil, nil, nil, "password")
      for i in 1 .. max_tries do
        sleep(sleep_timeout)
        operation = AsposeSlidesCloud::SpecUtils.testSlidesAsyncApi.get_operation_status(operation_id)
        if operation.status != 'Created' and operation.status != 'Enqueued' and operation.status != 'Started' 
          break
        end
      end
      expect(operation.status).to eq('Finished')
      expect(operation.error).to be_nil

      expect(AsposeSlidesCloud::SpecUtils.testSlidesApi.object_exists(out_folder).exists).to be true
    end

    it 'async bad operation' do
      sleep_timeout = 3
      max_tries = 10
      operation_id = AsposeSlidesCloud::SpecUtils.testSlidesAsyncApi.start_download_presentation("IDoNotExist.pptx", AsposeSlidesCloud::ExportFormat::PDF)
      for i in 1 .. max_tries do
        sleep(sleep_timeout)
        operation = AsposeSlidesCloud::SpecUtils.testSlidesAsyncApi.get_operation_status(operation_id)
        if operation.status != 'Created' and operation.status != 'Enqueued' and operation.status != 'Started' 
          break
        end
      end
      expect(operation.status).to eq('Failed')
      expect(operation.error).not_to be_nil
    end
  end
end
