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
#require 'json'

# Unit tests for AsposeSlidesCloud::SlidesAsyncApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SlidesAsyncApi' do

  # unit tests for get_operation_result
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [File]
  describe 'get_operation_result test' do
    it 'should work' do
      paramid = AsposeSlidesCloud::SpecUtils.get_param_value('id', 'GetOperationResult', 'String')
      AsposeSlidesCloud::SpecUtils.initialize('GetOperationResult', nil, nil)
      o, c, _h = AsposeSlidesCloud::SpecUtils.testSlidesAsyncApi.get_operation_result_with_http_info(paramid)
      code, message = AsposeSlidesCloud::SpecUtils.get_expected_error('GetOperationResult', nil, nil, nil)
      expect(c).to eq(code)
      expect(o).not_to be_nil
    end

    it 'invalid id' do
      paramid = AsposeSlidesCloud::SpecUtils.get_param_value('id', 'GetOperationResult', 'String')
      paramid = AsposeSlidesCloud::SpecUtils.invalidize_param_value('id', 'GetOperationResult', paramid, 'String')
      AsposeSlidesCloud::SpecUtils.initialize('GetOperationResult', 'id', paramid)
      begin
        AsposeSlidesCloud::SpecUtils.testSlidesAsyncApi.get_operation_result_with_http_info(paramid)
        unless AsposeSlidesCloud::SpecUtils.no_exception?('GetOperationResult', 'id')
          fail "An exception expected"
        end
      rescue AsposeSlidesCloud::ApiError => e
        code, message = AsposeSlidesCloud::SpecUtils.get_expected_error('GetOperationResult', 'id', paramid, 'String')
        expect(e.code).to eq(code)
        expect(e.response_body).to include(message)
      rescue ArgumentError => e
        code, message = AsposeSlidesCloud::SpecUtils.get_expected_error('GetOperationResult', 'id', paramid, 'String')
        expect(400).to eq(code)
        expect(e.message).to include(message)
      end
    end
  end

  # unit tests for get_operation_status
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [Operation]
  describe 'get_operation_status test' do
    it 'should work' do
      paramid = AsposeSlidesCloud::SpecUtils.get_param_value('id', 'GetOperationStatus', 'String')
      AsposeSlidesCloud::SpecUtils.initialize('GetOperationStatus', nil, nil)
      o, c, _h = AsposeSlidesCloud::SpecUtils.testSlidesAsyncApi.get_operation_status_with_http_info(paramid)
      code, message = AsposeSlidesCloud::SpecUtils.get_expected_error('GetOperationStatus', nil, nil, nil)
      expect(c).to eq(code)
      expect(o).not_to be_nil
    end

    it 'invalid id' do
      paramid = AsposeSlidesCloud::SpecUtils.get_param_value('id', 'GetOperationStatus', 'String')
      paramid = AsposeSlidesCloud::SpecUtils.invalidize_param_value('id', 'GetOperationStatus', paramid, 'String')
      AsposeSlidesCloud::SpecUtils.initialize('GetOperationStatus', 'id', paramid)
      begin
        AsposeSlidesCloud::SpecUtils.testSlidesAsyncApi.get_operation_status_with_http_info(paramid)
        unless AsposeSlidesCloud::SpecUtils.no_exception?('GetOperationStatus', 'id')
          fail "An exception expected"
        end
      rescue AsposeSlidesCloud::ApiError => e
        code, message = AsposeSlidesCloud::SpecUtils.get_expected_error('GetOperationStatus', 'id', paramid, 'String')
        expect(e.code).to eq(code)
        expect(e.response_body).to include(message)
      rescue ArgumentError => e
        code, message = AsposeSlidesCloud::SpecUtils.get_expected_error('GetOperationStatus', 'id', paramid, 'String')
        expect(400).to eq(code)
        expect(e.message).to include(message)
      end
    end
  end

  # unit tests for start_convert
  # @param document Document data.
  # @param format 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :password 
  # @option opts [String] :storage 
  # @option opts [String] :fonts_folder 
  # @option opts [Integer[]] :slides 
  # @option opts [ExportOptions] :options 
  # @return [String]
  describe 'start_convert test' do
    it 'should work' do
      paramdocument = AsposeSlidesCloud::SpecUtils.get_param_value('document', 'StartConvert', 'File')
      paramformat = AsposeSlidesCloud::SpecUtils.get_param_value('format', 'StartConvert', 'String')
      parampassword = AsposeSlidesCloud::SpecUtils.get_param_value('password', 'StartConvert', 'String')
      paramstorage = AsposeSlidesCloud::SpecUtils.get_param_value('storage', 'StartConvert', 'String')
      paramfonts_folder = AsposeSlidesCloud::SpecUtils.get_param_value('fontsFolder', 'StartConvert', 'String')
      paramslides = AsposeSlidesCloud::SpecUtils.get_param_value('slides', 'StartConvert', 'Integer[]')
      paramoptions = AsposeSlidesCloud::SpecUtils.get_param_value('options', 'StartConvert', 'ExportOptions')
      AsposeSlidesCloud::SpecUtils.initialize('StartConvert', nil, nil)
      o, c, _h = AsposeSlidesCloud::SpecUtils.testSlidesAsyncApi.start_convert_with_http_info(paramdocument, paramformat, parampassword, paramstorage, paramfonts_folder, paramslides, paramoptions)
      code, message = AsposeSlidesCloud::SpecUtils.get_expected_error('StartConvert', nil, nil, nil)
      expect(c).to eq(code)
    end

    it 'invalid document' do
      paramdocument = AsposeSlidesCloud::SpecUtils.get_param_value('document', 'StartConvert', 'File')
      paramformat = AsposeSlidesCloud::SpecUtils.get_param_value('format', 'StartConvert', 'String')
      parampassword = AsposeSlidesCloud::SpecUtils.get_param_value('password', 'StartConvert', 'String')
      paramstorage = AsposeSlidesCloud::SpecUtils.get_param_value('storage', 'StartConvert', 'String')
      paramfonts_folder = AsposeSlidesCloud::SpecUtils.get_param_value('fontsFolder', 'StartConvert', 'String')
      paramslides = AsposeSlidesCloud::SpecUtils.get_param_value('slides', 'StartConvert', 'Integer[]')
      paramoptions = AsposeSlidesCloud::SpecUtils.get_param_value('options', 'StartConvert', 'ExportOptions')
      paramdocument = AsposeSlidesCloud::SpecUtils.invalidize_param_value('document', 'StartConvert', paramdocument, 'File')
      AsposeSlidesCloud::SpecUtils.initialize('StartConvert', 'document', paramdocument)
      begin
        AsposeSlidesCloud::SpecUtils.testSlidesAsyncApi.start_convert_with_http_info(paramdocument, paramformat, parampassword, paramstorage, paramfonts_folder, paramslides, paramoptions)
        unless AsposeSlidesCloud::SpecUtils.no_exception?('StartConvert', 'document')
          fail "An exception expected"
        end
      rescue AsposeSlidesCloud::ApiError => e
        code, message = AsposeSlidesCloud::SpecUtils.get_expected_error('StartConvert', 'document', paramdocument, 'File')
        expect(e.code).to eq(code)
        expect(e.response_body).to include(message)
      rescue ArgumentError => e
        code, message = AsposeSlidesCloud::SpecUtils.get_expected_error('StartConvert', 'document', paramdocument, 'File')
        expect(400).to eq(code)
        expect(e.message).to include(message)
      end
    end

    it 'invalid format' do
      paramdocument = AsposeSlidesCloud::SpecUtils.get_param_value('document', 'StartConvert', 'File')
      paramformat = AsposeSlidesCloud::SpecUtils.get_param_value('format', 'StartConvert', 'String')
      parampassword = AsposeSlidesCloud::SpecUtils.get_param_value('password', 'StartConvert', 'String')
      paramstorage = AsposeSlidesCloud::SpecUtils.get_param_value('storage', 'StartConvert', 'String')
      paramfonts_folder = AsposeSlidesCloud::SpecUtils.get_param_value('fontsFolder', 'StartConvert', 'String')
      paramslides = AsposeSlidesCloud::SpecUtils.get_param_value('slides', 'StartConvert', 'Integer[]')
      paramoptions = AsposeSlidesCloud::SpecUtils.get_param_value('options', 'StartConvert', 'ExportOptions')
      paramformat = AsposeSlidesCloud::SpecUtils.invalidize_param_value('format', 'StartConvert', paramformat, 'String')
      AsposeSlidesCloud::SpecUtils.initialize('StartConvert', 'format', paramformat)
      begin
        AsposeSlidesCloud::SpecUtils.testSlidesAsyncApi.start_convert_with_http_info(paramdocument, paramformat, parampassword, paramstorage, paramfonts_folder, paramslides, paramoptions)
        unless AsposeSlidesCloud::SpecUtils.no_exception?('StartConvert', 'format')
          fail "An exception expected"
        end
      rescue AsposeSlidesCloud::ApiError => e
        code, message = AsposeSlidesCloud::SpecUtils.get_expected_error('StartConvert', 'format', paramformat, 'String')
        expect(e.code).to eq(code)
        expect(e.response_body).to include(message)
      rescue ArgumentError => e
        code, message = AsposeSlidesCloud::SpecUtils.get_expected_error('StartConvert', 'format', paramformat, 'String')
        expect(400).to eq(code)
        expect(e.message).to include(message)
      end
    end

    it 'invalid password' do
      paramdocument = AsposeSlidesCloud::SpecUtils.get_param_value('document', 'StartConvert', 'File')
      paramformat = AsposeSlidesCloud::SpecUtils.get_param_value('format', 'StartConvert', 'String')
      parampassword = AsposeSlidesCloud::SpecUtils.get_param_value('password', 'StartConvert', 'String')
      paramstorage = AsposeSlidesCloud::SpecUtils.get_param_value('storage', 'StartConvert', 'String')
      paramfonts_folder = AsposeSlidesCloud::SpecUtils.get_param_value('fontsFolder', 'StartConvert', 'String')
      paramslides = AsposeSlidesCloud::SpecUtils.get_param_value('slides', 'StartConvert', 'Integer[]')
      paramoptions = AsposeSlidesCloud::SpecUtils.get_param_value('options', 'StartConvert', 'ExportOptions')
      parampassword = AsposeSlidesCloud::SpecUtils.invalidize_param_value('password', 'StartConvert', parampassword, 'String')
      AsposeSlidesCloud::SpecUtils.initialize('StartConvert', 'password', parampassword)
      begin
        AsposeSlidesCloud::SpecUtils.testSlidesAsyncApi.start_convert_with_http_info(paramdocument, paramformat, parampassword, paramstorage, paramfonts_folder, paramslides, paramoptions)
        unless AsposeSlidesCloud::SpecUtils.no_exception?('StartConvert', 'password')
          fail "An exception expected"
        end
      rescue AsposeSlidesCloud::ApiError => e
        code, message = AsposeSlidesCloud::SpecUtils.get_expected_error('StartConvert', 'password', parampassword, 'String')
        expect(e.code).to eq(code)
        expect(e.response_body).to include(message)
      rescue ArgumentError => e
        code, message = AsposeSlidesCloud::SpecUtils.get_expected_error('StartConvert', 'password', parampassword, 'String')
        expect(400).to eq(code)
        expect(e.message).to include(message)
      end
    end

    it 'invalid storage' do
      paramdocument = AsposeSlidesCloud::SpecUtils.get_param_value('document', 'StartConvert', 'File')
      paramformat = AsposeSlidesCloud::SpecUtils.get_param_value('format', 'StartConvert', 'String')
      parampassword = AsposeSlidesCloud::SpecUtils.get_param_value('password', 'StartConvert', 'String')
      paramstorage = AsposeSlidesCloud::SpecUtils.get_param_value('storage', 'StartConvert', 'String')
      paramfonts_folder = AsposeSlidesCloud::SpecUtils.get_param_value('fontsFolder', 'StartConvert', 'String')
      paramslides = AsposeSlidesCloud::SpecUtils.get_param_value('slides', 'StartConvert', 'Integer[]')
      paramoptions = AsposeSlidesCloud::SpecUtils.get_param_value('options', 'StartConvert', 'ExportOptions')
      paramstorage = AsposeSlidesCloud::SpecUtils.invalidize_param_value('storage', 'StartConvert', paramstorage, 'String')
      AsposeSlidesCloud::SpecUtils.initialize('StartConvert', 'storage', paramstorage)
      begin
        AsposeSlidesCloud::SpecUtils.testSlidesAsyncApi.start_convert_with_http_info(paramdocument, paramformat, parampassword, paramstorage, paramfonts_folder, paramslides, paramoptions)
        unless AsposeSlidesCloud::SpecUtils.no_exception?('StartConvert', 'storage')
          fail "An exception expected"
        end
      rescue AsposeSlidesCloud::ApiError => e
        code, message = AsposeSlidesCloud::SpecUtils.get_expected_error('StartConvert', 'storage', paramstorage, 'String')
        expect(e.code).to eq(code)
        expect(e.response_body).to include(message)
      rescue ArgumentError => e
        code, message = AsposeSlidesCloud::SpecUtils.get_expected_error('StartConvert', 'storage', paramstorage, 'String')
        expect(400).to eq(code)
        expect(e.message).to include(message)
      end
    end

    it 'invalid fonts_folder' do
      paramdocument = AsposeSlidesCloud::SpecUtils.get_param_value('document', 'StartConvert', 'File')
      paramformat = AsposeSlidesCloud::SpecUtils.get_param_value('format', 'StartConvert', 'String')
      parampassword = AsposeSlidesCloud::SpecUtils.get_param_value('password', 'StartConvert', 'String')
      paramstorage = AsposeSlidesCloud::SpecUtils.get_param_value('storage', 'StartConvert', 'String')
      paramfonts_folder = AsposeSlidesCloud::SpecUtils.get_param_value('fontsFolder', 'StartConvert', 'String')
      paramslides = AsposeSlidesCloud::SpecUtils.get_param_value('slides', 'StartConvert', 'Integer[]')
      paramoptions = AsposeSlidesCloud::SpecUtils.get_param_value('options', 'StartConvert', 'ExportOptions')
      paramfonts_folder = AsposeSlidesCloud::SpecUtils.invalidize_param_value('fontsFolder', 'StartConvert', paramfonts_folder, 'String')
      AsposeSlidesCloud::SpecUtils.initialize('StartConvert', 'fontsFolder', paramfonts_folder)
      begin
        AsposeSlidesCloud::SpecUtils.testSlidesAsyncApi.start_convert_with_http_info(paramdocument, paramformat, parampassword, paramstorage, paramfonts_folder, paramslides, paramoptions)
        unless AsposeSlidesCloud::SpecUtils.no_exception?('StartConvert', 'fontsFolder')
          fail "An exception expected"
        end
      rescue AsposeSlidesCloud::ApiError => e
        code, message = AsposeSlidesCloud::SpecUtils.get_expected_error('StartConvert', 'fontsFolder', paramfonts_folder, 'String')
        expect(e.code).to eq(code)
        expect(e.response_body).to include(message)
      rescue ArgumentError => e
        code, message = AsposeSlidesCloud::SpecUtils.get_expected_error('StartConvert', 'fontsFolder', paramfonts_folder, 'String')
        expect(400).to eq(code)
        expect(e.message).to include(message)
      end
    end

    it 'invalid slides' do
      paramdocument = AsposeSlidesCloud::SpecUtils.get_param_value('document', 'StartConvert', 'File')
      paramformat = AsposeSlidesCloud::SpecUtils.get_param_value('format', 'StartConvert', 'String')
      parampassword = AsposeSlidesCloud::SpecUtils.get_param_value('password', 'StartConvert', 'String')
      paramstorage = AsposeSlidesCloud::SpecUtils.get_param_value('storage', 'StartConvert', 'String')
      paramfonts_folder = AsposeSlidesCloud::SpecUtils.get_param_value('fontsFolder', 'StartConvert', 'String')
      paramslides = AsposeSlidesCloud::SpecUtils.get_param_value('slides', 'StartConvert', 'Integer[]')
      paramoptions = AsposeSlidesCloud::SpecUtils.get_param_value('options', 'StartConvert', 'ExportOptions')
      paramslides = AsposeSlidesCloud::SpecUtils.invalidize_param_value('slides', 'StartConvert', paramslides, 'Integer[]')
      AsposeSlidesCloud::SpecUtils.initialize('StartConvert', 'slides', paramslides)
      begin
        AsposeSlidesCloud::SpecUtils.testSlidesAsyncApi.start_convert_with_http_info(paramdocument, paramformat, parampassword, paramstorage, paramfonts_folder, paramslides, paramoptions)
        unless AsposeSlidesCloud::SpecUtils.no_exception?('StartConvert', 'slides')
          fail "An exception expected"
        end
      rescue AsposeSlidesCloud::ApiError => e
        code, message = AsposeSlidesCloud::SpecUtils.get_expected_error('StartConvert', 'slides', paramslides, 'Integer[]')
        expect(e.code).to eq(code)
        expect(e.response_body).to include(message)
      rescue ArgumentError => e
        code, message = AsposeSlidesCloud::SpecUtils.get_expected_error('StartConvert', 'slides', paramslides, 'Integer[]')
        expect(400).to eq(code)
        expect(e.message).to include(message)
      end
    end

    it 'invalid options' do
      paramdocument = AsposeSlidesCloud::SpecUtils.get_param_value('document', 'StartConvert', 'File')
      paramformat = AsposeSlidesCloud::SpecUtils.get_param_value('format', 'StartConvert', 'String')
      parampassword = AsposeSlidesCloud::SpecUtils.get_param_value('password', 'StartConvert', 'String')
      paramstorage = AsposeSlidesCloud::SpecUtils.get_param_value('storage', 'StartConvert', 'String')
      paramfonts_folder = AsposeSlidesCloud::SpecUtils.get_param_value('fontsFolder', 'StartConvert', 'String')
      paramslides = AsposeSlidesCloud::SpecUtils.get_param_value('slides', 'StartConvert', 'Integer[]')
      paramoptions = AsposeSlidesCloud::SpecUtils.get_param_value('options', 'StartConvert', 'ExportOptions')
      paramoptions = AsposeSlidesCloud::SpecUtils.invalidize_param_value('options', 'StartConvert', paramoptions, 'ExportOptions')
      AsposeSlidesCloud::SpecUtils.initialize('StartConvert', 'options', paramoptions)
      begin
        AsposeSlidesCloud::SpecUtils.testSlidesAsyncApi.start_convert_with_http_info(paramdocument, paramformat, parampassword, paramstorage, paramfonts_folder, paramslides, paramoptions)
        unless AsposeSlidesCloud::SpecUtils.no_exception?('StartConvert', 'options')
          fail "An exception expected"
        end
      rescue AsposeSlidesCloud::ApiError => e
        code, message = AsposeSlidesCloud::SpecUtils.get_expected_error('StartConvert', 'options', paramoptions, 'ExportOptions')
        expect(e.code).to eq(code)
        expect(e.response_body).to include(message)
      rescue ArgumentError => e
        code, message = AsposeSlidesCloud::SpecUtils.get_expected_error('StartConvert', 'options', paramoptions, 'ExportOptions')
        expect(400).to eq(code)
        expect(e.message).to include(message)
      end
    end
  end

  # unit tests for start_download_presentation
  # @param name 
  # @param format 
  # @param [Hash] opts the optional parameters
  # @option opts [ExportOptions] :options 
  # @option opts [String] :password 
  # @option opts [String] :folder 
  # @option opts [String] :storage 
  # @option opts [String] :fonts_folder 
  # @option opts [Integer[]] :slides 
  # @return [String]
  describe 'start_download_presentation test' do
    it 'should work' do
      paramname = AsposeSlidesCloud::SpecUtils.get_param_value('name', 'StartDownloadPresentation', 'String')
      paramformat = AsposeSlidesCloud::SpecUtils.get_param_value('format', 'StartDownloadPresentation', 'String')
      paramoptions = AsposeSlidesCloud::SpecUtils.get_param_value('options', 'StartDownloadPresentation', 'ExportOptions')
      parampassword = AsposeSlidesCloud::SpecUtils.get_param_value('password', 'StartDownloadPresentation', 'String')
      paramfolder = AsposeSlidesCloud::SpecUtils.get_param_value('folder', 'StartDownloadPresentation', 'String')
      paramstorage = AsposeSlidesCloud::SpecUtils.get_param_value('storage', 'StartDownloadPresentation', 'String')
      paramfonts_folder = AsposeSlidesCloud::SpecUtils.get_param_value('fontsFolder', 'StartDownloadPresentation', 'String')
      paramslides = AsposeSlidesCloud::SpecUtils.get_param_value('slides', 'StartDownloadPresentation', 'Integer[]')
      AsposeSlidesCloud::SpecUtils.initialize('StartDownloadPresentation', nil, nil)
      o, c, _h = AsposeSlidesCloud::SpecUtils.testSlidesAsyncApi.start_download_presentation_with_http_info(paramname, paramformat, paramoptions, parampassword, paramfolder, paramstorage, paramfonts_folder, paramslides)
      code, message = AsposeSlidesCloud::SpecUtils.get_expected_error('StartDownloadPresentation', nil, nil, nil)
      expect(c).to eq(code)
      expect(o).not_to be_nil
    end

    it 'invalid name' do
      paramname = AsposeSlidesCloud::SpecUtils.get_param_value('name', 'StartDownloadPresentation', 'String')
      paramformat = AsposeSlidesCloud::SpecUtils.get_param_value('format', 'StartDownloadPresentation', 'String')
      paramoptions = AsposeSlidesCloud::SpecUtils.get_param_value('options', 'StartDownloadPresentation', 'ExportOptions')
      parampassword = AsposeSlidesCloud::SpecUtils.get_param_value('password', 'StartDownloadPresentation', 'String')
      paramfolder = AsposeSlidesCloud::SpecUtils.get_param_value('folder', 'StartDownloadPresentation', 'String')
      paramstorage = AsposeSlidesCloud::SpecUtils.get_param_value('storage', 'StartDownloadPresentation', 'String')
      paramfonts_folder = AsposeSlidesCloud::SpecUtils.get_param_value('fontsFolder', 'StartDownloadPresentation', 'String')
      paramslides = AsposeSlidesCloud::SpecUtils.get_param_value('slides', 'StartDownloadPresentation', 'Integer[]')
      paramname = AsposeSlidesCloud::SpecUtils.invalidize_param_value('name', 'StartDownloadPresentation', paramname, 'String')
      AsposeSlidesCloud::SpecUtils.initialize('StartDownloadPresentation', 'name', paramname)
      begin
        AsposeSlidesCloud::SpecUtils.testSlidesAsyncApi.start_download_presentation_with_http_info(paramname, paramformat, paramoptions, parampassword, paramfolder, paramstorage, paramfonts_folder, paramslides)
        unless AsposeSlidesCloud::SpecUtils.no_exception?('StartDownloadPresentation', 'name')
          fail "An exception expected"
        end
      rescue AsposeSlidesCloud::ApiError => e
        code, message = AsposeSlidesCloud::SpecUtils.get_expected_error('StartDownloadPresentation', 'name', paramname, 'String')
        expect(e.code).to eq(code)
        expect(e.response_body).to include(message)
      rescue ArgumentError => e
        code, message = AsposeSlidesCloud::SpecUtils.get_expected_error('StartDownloadPresentation', 'name', paramname, 'String')
        expect(400).to eq(code)
        expect(e.message).to include(message)
      end
    end

    it 'invalid format' do
      paramname = AsposeSlidesCloud::SpecUtils.get_param_value('name', 'StartDownloadPresentation', 'String')
      paramformat = AsposeSlidesCloud::SpecUtils.get_param_value('format', 'StartDownloadPresentation', 'String')
      paramoptions = AsposeSlidesCloud::SpecUtils.get_param_value('options', 'StartDownloadPresentation', 'ExportOptions')
      parampassword = AsposeSlidesCloud::SpecUtils.get_param_value('password', 'StartDownloadPresentation', 'String')
      paramfolder = AsposeSlidesCloud::SpecUtils.get_param_value('folder', 'StartDownloadPresentation', 'String')
      paramstorage = AsposeSlidesCloud::SpecUtils.get_param_value('storage', 'StartDownloadPresentation', 'String')
      paramfonts_folder = AsposeSlidesCloud::SpecUtils.get_param_value('fontsFolder', 'StartDownloadPresentation', 'String')
      paramslides = AsposeSlidesCloud::SpecUtils.get_param_value('slides', 'StartDownloadPresentation', 'Integer[]')
      paramformat = AsposeSlidesCloud::SpecUtils.invalidize_param_value('format', 'StartDownloadPresentation', paramformat, 'String')
      AsposeSlidesCloud::SpecUtils.initialize('StartDownloadPresentation', 'format', paramformat)
      begin
        AsposeSlidesCloud::SpecUtils.testSlidesAsyncApi.start_download_presentation_with_http_info(paramname, paramformat, paramoptions, parampassword, paramfolder, paramstorage, paramfonts_folder, paramslides)
        unless AsposeSlidesCloud::SpecUtils.no_exception?('StartDownloadPresentation', 'format')
          fail "An exception expected"
        end
      rescue AsposeSlidesCloud::ApiError => e
        code, message = AsposeSlidesCloud::SpecUtils.get_expected_error('StartDownloadPresentation', 'format', paramformat, 'String')
        expect(e.code).to eq(code)
        expect(e.response_body).to include(message)
      rescue ArgumentError => e
        code, message = AsposeSlidesCloud::SpecUtils.get_expected_error('StartDownloadPresentation', 'format', paramformat, 'String')
        expect(400).to eq(code)
        expect(e.message).to include(message)
      end
    end

    it 'invalid options' do
      paramname = AsposeSlidesCloud::SpecUtils.get_param_value('name', 'StartDownloadPresentation', 'String')
      paramformat = AsposeSlidesCloud::SpecUtils.get_param_value('format', 'StartDownloadPresentation', 'String')
      paramoptions = AsposeSlidesCloud::SpecUtils.get_param_value('options', 'StartDownloadPresentation', 'ExportOptions')
      parampassword = AsposeSlidesCloud::SpecUtils.get_param_value('password', 'StartDownloadPresentation', 'String')
      paramfolder = AsposeSlidesCloud::SpecUtils.get_param_value('folder', 'StartDownloadPresentation', 'String')
      paramstorage = AsposeSlidesCloud::SpecUtils.get_param_value('storage', 'StartDownloadPresentation', 'String')
      paramfonts_folder = AsposeSlidesCloud::SpecUtils.get_param_value('fontsFolder', 'StartDownloadPresentation', 'String')
      paramslides = AsposeSlidesCloud::SpecUtils.get_param_value('slides', 'StartDownloadPresentation', 'Integer[]')
      paramoptions = AsposeSlidesCloud::SpecUtils.invalidize_param_value('options', 'StartDownloadPresentation', paramoptions, 'ExportOptions')
      AsposeSlidesCloud::SpecUtils.initialize('StartDownloadPresentation', 'options', paramoptions)
      begin
        AsposeSlidesCloud::SpecUtils.testSlidesAsyncApi.start_download_presentation_with_http_info(paramname, paramformat, paramoptions, parampassword, paramfolder, paramstorage, paramfonts_folder, paramslides)
        unless AsposeSlidesCloud::SpecUtils.no_exception?('StartDownloadPresentation', 'options')
          fail "An exception expected"
        end
      rescue AsposeSlidesCloud::ApiError => e
        code, message = AsposeSlidesCloud::SpecUtils.get_expected_error('StartDownloadPresentation', 'options', paramoptions, 'ExportOptions')
        expect(e.code).to eq(code)
        expect(e.response_body).to include(message)
      rescue ArgumentError => e
        code, message = AsposeSlidesCloud::SpecUtils.get_expected_error('StartDownloadPresentation', 'options', paramoptions, 'ExportOptions')
        expect(400).to eq(code)
        expect(e.message).to include(message)
      end
    end

    it 'invalid password' do
      paramname = AsposeSlidesCloud::SpecUtils.get_param_value('name', 'StartDownloadPresentation', 'String')
      paramformat = AsposeSlidesCloud::SpecUtils.get_param_value('format', 'StartDownloadPresentation', 'String')
      paramoptions = AsposeSlidesCloud::SpecUtils.get_param_value('options', 'StartDownloadPresentation', 'ExportOptions')
      parampassword = AsposeSlidesCloud::SpecUtils.get_param_value('password', 'StartDownloadPresentation', 'String')
      paramfolder = AsposeSlidesCloud::SpecUtils.get_param_value('folder', 'StartDownloadPresentation', 'String')
      paramstorage = AsposeSlidesCloud::SpecUtils.get_param_value('storage', 'StartDownloadPresentation', 'String')
      paramfonts_folder = AsposeSlidesCloud::SpecUtils.get_param_value('fontsFolder', 'StartDownloadPresentation', 'String')
      paramslides = AsposeSlidesCloud::SpecUtils.get_param_value('slides', 'StartDownloadPresentation', 'Integer[]')
      parampassword = AsposeSlidesCloud::SpecUtils.invalidize_param_value('password', 'StartDownloadPresentation', parampassword, 'String')
      AsposeSlidesCloud::SpecUtils.initialize('StartDownloadPresentation', 'password', parampassword)
      begin
        AsposeSlidesCloud::SpecUtils.testSlidesAsyncApi.start_download_presentation_with_http_info(paramname, paramformat, paramoptions, parampassword, paramfolder, paramstorage, paramfonts_folder, paramslides)
        unless AsposeSlidesCloud::SpecUtils.no_exception?('StartDownloadPresentation', 'password')
          fail "An exception expected"
        end
      rescue AsposeSlidesCloud::ApiError => e
        code, message = AsposeSlidesCloud::SpecUtils.get_expected_error('StartDownloadPresentation', 'password', parampassword, 'String')
        expect(e.code).to eq(code)
        expect(e.response_body).to include(message)
      rescue ArgumentError => e
        code, message = AsposeSlidesCloud::SpecUtils.get_expected_error('StartDownloadPresentation', 'password', parampassword, 'String')
        expect(400).to eq(code)
        expect(e.message).to include(message)
      end
    end

    it 'invalid folder' do
      paramname = AsposeSlidesCloud::SpecUtils.get_param_value('name', 'StartDownloadPresentation', 'String')
      paramformat = AsposeSlidesCloud::SpecUtils.get_param_value('format', 'StartDownloadPresentation', 'String')
      paramoptions = AsposeSlidesCloud::SpecUtils.get_param_value('options', 'StartDownloadPresentation', 'ExportOptions')
      parampassword = AsposeSlidesCloud::SpecUtils.get_param_value('password', 'StartDownloadPresentation', 'String')
      paramfolder = AsposeSlidesCloud::SpecUtils.get_param_value('folder', 'StartDownloadPresentation', 'String')
      paramstorage = AsposeSlidesCloud::SpecUtils.get_param_value('storage', 'StartDownloadPresentation', 'String')
      paramfonts_folder = AsposeSlidesCloud::SpecUtils.get_param_value('fontsFolder', 'StartDownloadPresentation', 'String')
      paramslides = AsposeSlidesCloud::SpecUtils.get_param_value('slides', 'StartDownloadPresentation', 'Integer[]')
      paramfolder = AsposeSlidesCloud::SpecUtils.invalidize_param_value('folder', 'StartDownloadPresentation', paramfolder, 'String')
      AsposeSlidesCloud::SpecUtils.initialize('StartDownloadPresentation', 'folder', paramfolder)
      begin
        AsposeSlidesCloud::SpecUtils.testSlidesAsyncApi.start_download_presentation_with_http_info(paramname, paramformat, paramoptions, parampassword, paramfolder, paramstorage, paramfonts_folder, paramslides)
        unless AsposeSlidesCloud::SpecUtils.no_exception?('StartDownloadPresentation', 'folder')
          fail "An exception expected"
        end
      rescue AsposeSlidesCloud::ApiError => e
        code, message = AsposeSlidesCloud::SpecUtils.get_expected_error('StartDownloadPresentation', 'folder', paramfolder, 'String')
        expect(e.code).to eq(code)
        expect(e.response_body).to include(message)
      rescue ArgumentError => e
        code, message = AsposeSlidesCloud::SpecUtils.get_expected_error('StartDownloadPresentation', 'folder', paramfolder, 'String')
        expect(400).to eq(code)
        expect(e.message).to include(message)
      end
    end

    it 'invalid storage' do
      paramname = AsposeSlidesCloud::SpecUtils.get_param_value('name', 'StartDownloadPresentation', 'String')
      paramformat = AsposeSlidesCloud::SpecUtils.get_param_value('format', 'StartDownloadPresentation', 'String')
      paramoptions = AsposeSlidesCloud::SpecUtils.get_param_value('options', 'StartDownloadPresentation', 'ExportOptions')
      parampassword = AsposeSlidesCloud::SpecUtils.get_param_value('password', 'StartDownloadPresentation', 'String')
      paramfolder = AsposeSlidesCloud::SpecUtils.get_param_value('folder', 'StartDownloadPresentation', 'String')
      paramstorage = AsposeSlidesCloud::SpecUtils.get_param_value('storage', 'StartDownloadPresentation', 'String')
      paramfonts_folder = AsposeSlidesCloud::SpecUtils.get_param_value('fontsFolder', 'StartDownloadPresentation', 'String')
      paramslides = AsposeSlidesCloud::SpecUtils.get_param_value('slides', 'StartDownloadPresentation', 'Integer[]')
      paramstorage = AsposeSlidesCloud::SpecUtils.invalidize_param_value('storage', 'StartDownloadPresentation', paramstorage, 'String')
      AsposeSlidesCloud::SpecUtils.initialize('StartDownloadPresentation', 'storage', paramstorage)
      begin
        AsposeSlidesCloud::SpecUtils.testSlidesAsyncApi.start_download_presentation_with_http_info(paramname, paramformat, paramoptions, parampassword, paramfolder, paramstorage, paramfonts_folder, paramslides)
        unless AsposeSlidesCloud::SpecUtils.no_exception?('StartDownloadPresentation', 'storage')
          fail "An exception expected"
        end
      rescue AsposeSlidesCloud::ApiError => e
        code, message = AsposeSlidesCloud::SpecUtils.get_expected_error('StartDownloadPresentation', 'storage', paramstorage, 'String')
        expect(e.code).to eq(code)
        expect(e.response_body).to include(message)
      rescue ArgumentError => e
        code, message = AsposeSlidesCloud::SpecUtils.get_expected_error('StartDownloadPresentation', 'storage', paramstorage, 'String')
        expect(400).to eq(code)
        expect(e.message).to include(message)
      end
    end

    it 'invalid fonts_folder' do
      paramname = AsposeSlidesCloud::SpecUtils.get_param_value('name', 'StartDownloadPresentation', 'String')
      paramformat = AsposeSlidesCloud::SpecUtils.get_param_value('format', 'StartDownloadPresentation', 'String')
      paramoptions = AsposeSlidesCloud::SpecUtils.get_param_value('options', 'StartDownloadPresentation', 'ExportOptions')
      parampassword = AsposeSlidesCloud::SpecUtils.get_param_value('password', 'StartDownloadPresentation', 'String')
      paramfolder = AsposeSlidesCloud::SpecUtils.get_param_value('folder', 'StartDownloadPresentation', 'String')
      paramstorage = AsposeSlidesCloud::SpecUtils.get_param_value('storage', 'StartDownloadPresentation', 'String')
      paramfonts_folder = AsposeSlidesCloud::SpecUtils.get_param_value('fontsFolder', 'StartDownloadPresentation', 'String')
      paramslides = AsposeSlidesCloud::SpecUtils.get_param_value('slides', 'StartDownloadPresentation', 'Integer[]')
      paramfonts_folder = AsposeSlidesCloud::SpecUtils.invalidize_param_value('fontsFolder', 'StartDownloadPresentation', paramfonts_folder, 'String')
      AsposeSlidesCloud::SpecUtils.initialize('StartDownloadPresentation', 'fontsFolder', paramfonts_folder)
      begin
        AsposeSlidesCloud::SpecUtils.testSlidesAsyncApi.start_download_presentation_with_http_info(paramname, paramformat, paramoptions, parampassword, paramfolder, paramstorage, paramfonts_folder, paramslides)
        unless AsposeSlidesCloud::SpecUtils.no_exception?('StartDownloadPresentation', 'fontsFolder')
          fail "An exception expected"
        end
      rescue AsposeSlidesCloud::ApiError => e
        code, message = AsposeSlidesCloud::SpecUtils.get_expected_error('StartDownloadPresentation', 'fontsFolder', paramfonts_folder, 'String')
        expect(e.code).to eq(code)
        expect(e.response_body).to include(message)
      rescue ArgumentError => e
        code, message = AsposeSlidesCloud::SpecUtils.get_expected_error('StartDownloadPresentation', 'fontsFolder', paramfonts_folder, 'String')
        expect(400).to eq(code)
        expect(e.message).to include(message)
      end
    end

    it 'invalid slides' do
      paramname = AsposeSlidesCloud::SpecUtils.get_param_value('name', 'StartDownloadPresentation', 'String')
      paramformat = AsposeSlidesCloud::SpecUtils.get_param_value('format', 'StartDownloadPresentation', 'String')
      paramoptions = AsposeSlidesCloud::SpecUtils.get_param_value('options', 'StartDownloadPresentation', 'ExportOptions')
      parampassword = AsposeSlidesCloud::SpecUtils.get_param_value('password', 'StartDownloadPresentation', 'String')
      paramfolder = AsposeSlidesCloud::SpecUtils.get_param_value('folder', 'StartDownloadPresentation', 'String')
      paramstorage = AsposeSlidesCloud::SpecUtils.get_param_value('storage', 'StartDownloadPresentation', 'String')
      paramfonts_folder = AsposeSlidesCloud::SpecUtils.get_param_value('fontsFolder', 'StartDownloadPresentation', 'String')
      paramslides = AsposeSlidesCloud::SpecUtils.get_param_value('slides', 'StartDownloadPresentation', 'Integer[]')
      paramslides = AsposeSlidesCloud::SpecUtils.invalidize_param_value('slides', 'StartDownloadPresentation', paramslides, 'Integer[]')
      AsposeSlidesCloud::SpecUtils.initialize('StartDownloadPresentation', 'slides', paramslides)
      begin
        AsposeSlidesCloud::SpecUtils.testSlidesAsyncApi.start_download_presentation_with_http_info(paramname, paramformat, paramoptions, parampassword, paramfolder, paramstorage, paramfonts_folder, paramslides)
        unless AsposeSlidesCloud::SpecUtils.no_exception?('StartDownloadPresentation', 'slides')
          fail "An exception expected"
        end
      rescue AsposeSlidesCloud::ApiError => e
        code, message = AsposeSlidesCloud::SpecUtils.get_expected_error('StartDownloadPresentation', 'slides', paramslides, 'Integer[]')
        expect(e.code).to eq(code)
        expect(e.response_body).to include(message)
      rescue ArgumentError => e
        code, message = AsposeSlidesCloud::SpecUtils.get_expected_error('StartDownloadPresentation', 'slides', paramslides, 'Integer[]')
        expect(400).to eq(code)
        expect(e.message).to include(message)
      end
    end
  end

end
