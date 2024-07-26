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

require 'uri'

module AsposeSlidesCloud
  class SlidesAsyncApi
    attr_accessor :api_client

    def initialize(configuration = Configuration.default)
      @api_client = AsposeSlidesCloud::ApiClient.new(configuration)
    end

    # @param id 
    def get_operation_result(id)
      data, _status_code, _headers = get_operation_result_with_http_info(id)
      data
    end

    # @param id 
    def get_operation_result_with_http_info(id)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesAsyncApi.get_operation_result ...'
      end

      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SlidesAsyncApi.get_operation_result"
      end
      # resource path
      local_var_path = '/slides/async/{id}/result'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'id', id)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'File')
      return data, status_code, headers
    end
    # @param id 
    def get_operation_status(id)
      data, _status_code, _headers = get_operation_status_with_http_info(id)
      data
    end

    # @param id 
    def get_operation_status_with_http_info(id)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesAsyncApi.get_operation_status ...'
      end

      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SlidesAsyncApi.get_operation_status"
      end
      # resource path
      local_var_path = '/slides/async/{id}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'id', id)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Operation')
      return data, status_code, headers
    end
    # @param document Document data.
    # @param format 
    # @param password 
    # @param storage 
    # @param fonts_folder 
    # @param slides 
    # @param options 
    def start_convert(document, format, password = nil, storage = nil, fonts_folder = nil, slides = nil, options = nil)
      data, _status_code, _headers = start_convert_with_http_info(document, format, password, storage, fonts_folder, slides, options)
      data
    end

    # @param document Document data.
    # @param format 
    # @param password 
    # @param storage 
    # @param fonts_folder 
    # @param slides 
    # @param options 
    def start_convert_with_http_info(document, format, password = nil, storage = nil, fonts_folder = nil, slides = nil, options = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesAsyncApi.start_convert ...'
      end

      # verify the required parameter 'document' is set
      if @api_client.config.client_side_validation && document.nil?
        fail ArgumentError, "Missing the required parameter 'document' when calling SlidesAsyncApi.start_convert"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling SlidesAsyncApi.start_convert"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Pdf', 'Xps', 'Tiff', 'Pptx', 'Odp', 'Otp', 'Ppt', 'Pps', 'Ppsx', 'Pptm', 'Ppsm', 'Pot', 'Potx', 'Potm', 'Html', 'Html5', 'Swf', 'Svg', 'Jpeg', 'Png', 'Gif', 'Bmp', 'Fodp', 'Xaml', 'Mpeg4', 'Md', 'Xml'].any?{ |s| s.casecmp(format)==0 }
        fail ArgumentError, "Invalid value for parameter format: " + format + ". Must be one of Pdf, Xps, Tiff, Pptx, Odp, Otp, Ppt, Pps, Ppsx, Pptm, Ppsm, Pot, Potx, Potm, Html, Html5, Swf, Svg, Jpeg, Png, Gif, Bmp, Fodp, Xaml, Mpeg4, Md, Xml"
      end
      # resource path
      local_var_path = '/slides/async/convert/{format}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'format', format)

      # query parameters
      query_params = {}
      query_params[:'storage'] = @api_client.prepare_for_query(storage) unless storage.nil?
      query_params[:'fontsFolder'] = @api_client.prepare_for_query(fonts_folder) unless fonts_folder.nil?
      query_params[:'slides'] = @api_client.prepare_for_query(slides) unless slides.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(options)

      # form parameters
      post_files = []
      if document
        post_files = post_files.push(document)
      end

      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'String')
      return data, status_code, headers
    end
    # @param document Document data.
    # @param format 
    # @param out_path 
    # @param password 
    # @param storage 
    # @param fonts_folder 
    # @param slides 
    # @param options 
    def start_convert_and_save(document, format, out_path, password = nil, storage = nil, fonts_folder = nil, slides = nil, options = nil)
      data, _status_code, _headers = start_convert_and_save_with_http_info(document, format, out_path, password, storage, fonts_folder, slides, options)
      data
    end

    # @param document Document data.
    # @param format 
    # @param out_path 
    # @param password 
    # @param storage 
    # @param fonts_folder 
    # @param slides 
    # @param options 
    def start_convert_and_save_with_http_info(document, format, out_path, password = nil, storage = nil, fonts_folder = nil, slides = nil, options = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesAsyncApi.start_convert_and_save ...'
      end

      # verify the required parameter 'document' is set
      if @api_client.config.client_side_validation && document.nil?
        fail ArgumentError, "Missing the required parameter 'document' when calling SlidesAsyncApi.start_convert_and_save"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling SlidesAsyncApi.start_convert_and_save"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Pdf', 'Xps', 'Tiff', 'Pptx', 'Odp', 'Otp', 'Ppt', 'Pps', 'Ppsx', 'Pptm', 'Ppsm', 'Pot', 'Potx', 'Potm', 'Html', 'Html5', 'Swf', 'Svg', 'Jpeg', 'Png', 'Gif', 'Bmp', 'Fodp', 'Xaml', 'Mpeg4', 'Md', 'Xml'].any?{ |s| s.casecmp(format)==0 }
        fail ArgumentError, "Invalid value for parameter format: " + format + ". Must be one of Pdf, Xps, Tiff, Pptx, Odp, Otp, Ppt, Pps, Ppsx, Pptm, Ppsm, Pot, Potx, Potm, Html, Html5, Swf, Svg, Jpeg, Png, Gif, Bmp, Fodp, Xaml, Mpeg4, Md, Xml"
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling SlidesAsyncApi.start_convert_and_save"
      end
      # resource path
      local_var_path = '/slides/async/convert/{format}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'format', format)

      # query parameters
      query_params = {}
      query_params[:'outPath'] = @api_client.prepare_for_query(out_path) unless out_path.nil?
      query_params[:'storage'] = @api_client.prepare_for_query(storage) unless storage.nil?
      query_params[:'fontsFolder'] = @api_client.prepare_for_query(fonts_folder) unless fonts_folder.nil?
      query_params[:'slides'] = @api_client.prepare_for_query(slides) unless slides.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(options)

      # form parameters
      post_files = []
      if document
        post_files = post_files.push(document)
      end

      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'String')
      return data, status_code, headers
    end
    # @param name 
    # @param format 
    # @param options 
    # @param password 
    # @param folder 
    # @param storage 
    # @param fonts_folder 
    # @param slides 
    def start_download_presentation(name, format, options = nil, password = nil, folder = nil, storage = nil, fonts_folder = nil, slides = nil)
      data, _status_code, _headers = start_download_presentation_with_http_info(name, format, options, password, folder, storage, fonts_folder, slides)
      data
    end

    # @param name 
    # @param format 
    # @param options 
    # @param password 
    # @param folder 
    # @param storage 
    # @param fonts_folder 
    # @param slides 
    def start_download_presentation_with_http_info(name, format, options = nil, password = nil, folder = nil, storage = nil, fonts_folder = nil, slides = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesAsyncApi.start_download_presentation ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesAsyncApi.start_download_presentation"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling SlidesAsyncApi.start_download_presentation"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Pdf', 'Xps', 'Tiff', 'Pptx', 'Odp', 'Otp', 'Ppt', 'Pps', 'Ppsx', 'Pptm', 'Ppsm', 'Pot', 'Potx', 'Potm', 'Html', 'Html5', 'Swf', 'Svg', 'Jpeg', 'Png', 'Gif', 'Bmp', 'Fodp', 'Xaml', 'Mpeg4', 'Md', 'Xml'].any?{ |s| s.casecmp(format)==0 }
        fail ArgumentError, "Invalid value for parameter format: " + format + ". Must be one of Pdf, Xps, Tiff, Pptx, Odp, Otp, Ppt, Pps, Ppsx, Pptm, Ppsm, Pot, Potx, Potm, Html, Html5, Swf, Svg, Jpeg, Png, Gif, Bmp, Fodp, Xaml, Mpeg4, Md, Xml"
      end
      # resource path
      local_var_path = '/slides/async/{name}/{format}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'format', format)

      # query parameters
      query_params = {}
      query_params[:'folder'] = @api_client.prepare_for_query(folder) unless folder.nil?
      query_params[:'storage'] = @api_client.prepare_for_query(storage) unless storage.nil?
      query_params[:'fontsFolder'] = @api_client.prepare_for_query(fonts_folder) unless fonts_folder.nil?
      query_params[:'slides'] = @api_client.prepare_for_query(slides) unless slides.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(options)

      # form parameters
      post_files = []

      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'String')
      return data, status_code, headers
    end
    # @param files Files to merge
    # @param request 
    # @param storage 
    def start_merge(files = nil, request = nil, storage = nil)
      data, _status_code, _headers = start_merge_with_http_info(files, request, storage)
      data
    end

    # @param files Files to merge
    # @param request 
    # @param storage 
    def start_merge_with_http_info(files = nil, request = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesAsyncApi.start_merge ...'
      end

      # resource path
      local_var_path = '/slides/async/merge'

      # query parameters
      query_params = {}
      query_params[:'storage'] = @api_client.prepare_for_query(storage) unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request)

      # form parameters
      post_files = []
      if files
        post_files = post_files.concat(files)
      end

      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'String')
      return data, status_code, headers
    end
    # @param out_path 
    # @param files Files to merge
    # @param request 
    # @param storage 
    def start_merge_and_save(out_path, files = nil, request = nil, storage = nil)
      data, _status_code, _headers = start_merge_and_save_with_http_info(out_path, files, request, storage)
      data
    end

    # @param out_path 
    # @param files Files to merge
    # @param request 
    # @param storage 
    def start_merge_and_save_with_http_info(out_path, files = nil, request = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesAsyncApi.start_merge_and_save ...'
      end

      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling SlidesAsyncApi.start_merge_and_save"
      end
      # resource path
      local_var_path = '/slides/async/merge'

      # query parameters
      query_params = {}
      query_params[:'outPath'] = @api_client.prepare_for_query(out_path) unless out_path.nil?
      query_params[:'storage'] = @api_client.prepare_for_query(storage) unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request)

      # form parameters
      post_files = []
      if files
        post_files = post_files.concat(files)
      end

      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'String')
      return data, status_code, headers
    end
    # @param name 
    # @param format 
    # @param out_path 
    # @param options 
    # @param password 
    # @param folder 
    # @param storage 
    # @param fonts_folder 
    # @param slides 
    def start_save_presentation(name, format, out_path, options = nil, password = nil, folder = nil, storage = nil, fonts_folder = nil, slides = nil)
      data, _status_code, _headers = start_save_presentation_with_http_info(name, format, out_path, options, password, folder, storage, fonts_folder, slides)
      data
    end

    # @param name 
    # @param format 
    # @param out_path 
    # @param options 
    # @param password 
    # @param folder 
    # @param storage 
    # @param fonts_folder 
    # @param slides 
    def start_save_presentation_with_http_info(name, format, out_path, options = nil, password = nil, folder = nil, storage = nil, fonts_folder = nil, slides = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesAsyncApi.start_save_presentation ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesAsyncApi.start_save_presentation"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling SlidesAsyncApi.start_save_presentation"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Pdf', 'Xps', 'Tiff', 'Pptx', 'Odp', 'Otp', 'Ppt', 'Pps', 'Ppsx', 'Pptm', 'Ppsm', 'Pot', 'Potx', 'Potm', 'Html', 'Html5', 'Swf', 'Svg', 'Jpeg', 'Png', 'Gif', 'Bmp', 'Fodp', 'Xaml', 'Mpeg4', 'Md', 'Xml'].any?{ |s| s.casecmp(format)==0 }
        fail ArgumentError, "Invalid value for parameter format: " + format + ". Must be one of Pdf, Xps, Tiff, Pptx, Odp, Otp, Ppt, Pps, Ppsx, Pptm, Ppsm, Pot, Potx, Potm, Html, Html5, Swf, Svg, Jpeg, Png, Gif, Bmp, Fodp, Xaml, Mpeg4, Md, Xml"
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling SlidesAsyncApi.start_save_presentation"
      end
      # resource path
      local_var_path = '/slides/async/{name}/{format}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'format', format)

      # query parameters
      query_params = {}
      query_params[:'outPath'] = @api_client.prepare_for_query(out_path) unless out_path.nil?
      query_params[:'folder'] = @api_client.prepare_for_query(folder) unless folder.nil?
      query_params[:'storage'] = @api_client.prepare_for_query(storage) unless storage.nil?
      query_params[:'fontsFolder'] = @api_client.prepare_for_query(fonts_folder) unless fonts_folder.nil?
      query_params[:'slides'] = @api_client.prepare_for_query(slides) unless slides.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(options)

      # form parameters
      post_files = []

      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'String')
      return data, status_code, headers
    end
  end
end
