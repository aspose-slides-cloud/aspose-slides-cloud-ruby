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
  class SlidesApi
    attr_accessor :api_client

    def initialize(configuration = Configuration.default)
      @api_client = AsposeSlidesCloud::ApiClient.new(configuration)
    end

    # Copy file
    # @param request operation request
    def copy_file(request)
      copy_file_with_http_info(request)
      nil
    end

    # Copy file
    # @param request operation request
    def copy_file_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.copy_file ...'
      end
      # verify the required parameter 'src_path' is set
      if @api_client.config.client_side_validation && request.src_path.nil?
        fail ArgumentError, "Missing the required parameter 'src_path' when calling SlidesApi.copy_file"
      end
      # verify the required parameter 'dest_path' is set
      if @api_client.config.client_side_validation && request.dest_path.nil?
        fail ArgumentError, "Missing the required parameter 'dest_path' when calling SlidesApi.copy_file"
      end
      # resource path
      local_var_path = '/slides/storage/file/copy/{srcPath}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'srcPath', request.src_path)

      # query parameters
      query_params = {}
      query_params[:'destPath'] = request.dest_path unless request.dest_path.nil?
      query_params[:'srcStorageName'] = request.src_storage_name unless request.src_storage_name.nil?
      query_params[:'destStorageName'] = request.dest_storage_name unless request.dest_storage_name.nil?
      query_params[:'versionId'] = request.version_id unless request.version_id.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names)
      return data, status_code, headers
    end
    # Copy folder
    # @param request operation request
    def copy_folder(request)
      copy_folder_with_http_info(request)
      nil
    end

    # Copy folder
    # @param request operation request
    def copy_folder_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.copy_folder ...'
      end
      # verify the required parameter 'src_path' is set
      if @api_client.config.client_side_validation && request.src_path.nil?
        fail ArgumentError, "Missing the required parameter 'src_path' when calling SlidesApi.copy_folder"
      end
      # verify the required parameter 'dest_path' is set
      if @api_client.config.client_side_validation && request.dest_path.nil?
        fail ArgumentError, "Missing the required parameter 'dest_path' when calling SlidesApi.copy_folder"
      end
      # resource path
      local_var_path = '/slides/storage/folder/copy/{srcPath}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'srcPath', request.src_path)

      # query parameters
      query_params = {}
      query_params[:'destPath'] = request.dest_path unless request.dest_path.nil?
      query_params[:'srcStorageName'] = request.src_storage_name unless request.src_storage_name.nil?
      query_params[:'destStorageName'] = request.dest_storage_name unless request.dest_storage_name.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names)
      return data, status_code, headers
    end
    # Create the folder
    # @param request operation request
    def create_folder(request)
      create_folder_with_http_info(request)
      nil
    end

    # Create the folder
    # @param request operation request
    def create_folder_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.create_folder ...'
      end
      # resource path
      local_var_path = '/slides/storage/folder/{path}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', request.path)

      # query parameters
      query_params = {}
      query_params[:'storageName'] = request.storage_name unless request.storage_name.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names)
      return data, status_code, headers
    end
    # Delete a category from a chart.
    # @param request operation request
    def delete_chart_category(request)
      data, _status_code, _headers = delete_chart_category_with_http_info(request)
      data
    end

    # Delete a category from a chart.
    # @param request operation request
    def delete_chart_category_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_chart_category ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_chart_category"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_chart_category"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.delete_chart_category"
      end
      # verify the required parameter 'category_index' is set
      if @api_client.config.client_side_validation && request.category_index.nil?
        fail ArgumentError, "Missing the required parameter 'category_index' when calling SlidesApi.delete_chart_category"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/categories/{categoryIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'categoryIndex', request.category_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Chart')
      return data, status_code, headers
    end
    # Delete a data point from a chart series.
    # @param request operation request
    def delete_chart_data_point(request)
      data, _status_code, _headers = delete_chart_data_point_with_http_info(request)
      data
    end

    # Delete a data point from a chart series.
    # @param request operation request
    def delete_chart_data_point_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_chart_data_point ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_chart_data_point"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_chart_data_point"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.delete_chart_data_point"
      end
      # verify the required parameter 'series_index' is set
      if @api_client.config.client_side_validation && request.series_index.nil?
        fail ArgumentError, "Missing the required parameter 'series_index' when calling SlidesApi.delete_chart_data_point"
      end
      # verify the required parameter 'point_index' is set
      if @api_client.config.client_side_validation && request.point_index.nil?
        fail ArgumentError, "Missing the required parameter 'point_index' when calling SlidesApi.delete_chart_data_point"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/series/{seriesIndex}/dataPoints/{pointIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'seriesIndex', request.series_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'pointIndex', request.point_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Chart')
      return data, status_code, headers
    end
    # Delete a series from a chart.
    # @param request operation request
    def delete_chart_series(request)
      data, _status_code, _headers = delete_chart_series_with_http_info(request)
      data
    end

    # Delete a series from a chart.
    # @param request operation request
    def delete_chart_series_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_chart_series ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_chart_series"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_chart_series"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.delete_chart_series"
      end
      # verify the required parameter 'series_index' is set
      if @api_client.config.client_side_validation && request.series_index.nil?
        fail ArgumentError, "Missing the required parameter 'series_index' when calling SlidesApi.delete_chart_series"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/series/{seriesIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'seriesIndex', request.series_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Chart')
      return data, status_code, headers
    end
    # Delete file
    # @param request operation request
    def delete_file(request)
      delete_file_with_http_info(request)
      nil
    end

    # Delete file
    # @param request operation request
    def delete_file_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_file ...'
      end
      # resource path
      local_var_path = '/slides/storage/file/{path}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', request.path)

      # query parameters
      query_params = {}
      query_params[:'storageName'] = request.storage_name unless request.storage_name.nil?
      query_params[:'versionId'] = request.version_id unless request.version_id.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names)
      return data, status_code, headers
    end
    # Delete folder
    # @param request operation request
    def delete_folder(request)
      delete_folder_with_http_info(request)
      nil
    end

    # Delete folder
    # @param request operation request
    def delete_folder_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_folder ...'
      end
      # resource path
      local_var_path = '/slides/storage/folder/{path}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', request.path)

      # query parameters
      query_params = {}
      query_params[:'storageName'] = request.storage_name unless request.storage_name.nil?
      query_params[:'recursive'] = request.recursive unless request.recursive.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names)
      return data, status_code, headers
    end
    # Remove notes slide.
    # @param request operation request
    def delete_notes_slide(request)
      data, _status_code, _headers = delete_notes_slide_with_http_info(request)
      data
    end

    # Remove notes slide.
    # @param request operation request
    def delete_notes_slide_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_notes_slide ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_notes_slide"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_notes_slide"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/notesSlide'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Slide')
      return data, status_code, headers
    end
    # Remove a paragraph.
    # @param request operation request
    def delete_notes_slide_paragraph(request)
      data, _status_code, _headers = delete_notes_slide_paragraph_with_http_info(request)
      data
    end

    # Remove a paragraph.
    # @param request operation request
    def delete_notes_slide_paragraph_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_notes_slide_paragraph ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_notes_slide_paragraph"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_notes_slide_paragraph"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.delete_notes_slide_paragraph"
      end
      # verify the required parameter 'paragraph_index' is set
      if @api_client.config.client_side_validation && request.paragraph_index.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_index' when calling SlidesApi.delete_notes_slide_paragraph"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs/{paragraphIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'paragraphIndex', request.paragraph_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Paragraphs')
      return data, status_code, headers
    end
    # Remove a range of paragraphs.
    # @param request operation request
    def delete_notes_slide_paragraphs(request)
      data, _status_code, _headers = delete_notes_slide_paragraphs_with_http_info(request)
      data
    end

    # Remove a range of paragraphs.
    # @param request operation request
    def delete_notes_slide_paragraphs_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_notes_slide_paragraphs ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_notes_slide_paragraphs"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_notes_slide_paragraphs"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.delete_notes_slide_paragraphs"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)

      # query parameters
      query_params = {}
      query_params[:'paragraphs'] = request.paragraphs unless request.paragraphs.nil?
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Paragraphs')
      return data, status_code, headers
    end
    # Remove a portion.
    # @param request operation request
    def delete_notes_slide_portion(request)
      data, _status_code, _headers = delete_notes_slide_portion_with_http_info(request)
      data
    end

    # Remove a portion.
    # @param request operation request
    def delete_notes_slide_portion_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_notes_slide_portion ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_notes_slide_portion"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_notes_slide_portion"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.delete_notes_slide_portion"
      end
      # verify the required parameter 'paragraph_index' is set
      if @api_client.config.client_side_validation && request.paragraph_index.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_index' when calling SlidesApi.delete_notes_slide_portion"
      end
      # verify the required parameter 'portion_index' is set
      if @api_client.config.client_side_validation && request.portion_index.nil?
        fail ArgumentError, "Missing the required parameter 'portion_index' when calling SlidesApi.delete_notes_slide_portion"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'paragraphIndex', request.paragraph_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'portionIndex', request.portion_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Portions')
      return data, status_code, headers
    end
    # Remove a range of portions.
    # @param request operation request
    def delete_notes_slide_portions(request)
      data, _status_code, _headers = delete_notes_slide_portions_with_http_info(request)
      data
    end

    # Remove a range of portions.
    # @param request operation request
    def delete_notes_slide_portions_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_notes_slide_portions ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_notes_slide_portions"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_notes_slide_portions"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.delete_notes_slide_portions"
      end
      # verify the required parameter 'paragraph_index' is set
      if @api_client.config.client_side_validation && request.paragraph_index.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_index' when calling SlidesApi.delete_notes_slide_portions"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'paragraphIndex', request.paragraph_index)

      # query parameters
      query_params = {}
      query_params[:'portions'] = request.portions unless request.portions.nil?
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Portions')
      return data, status_code, headers
    end
    # Remove a shape.
    # @param request operation request
    def delete_notes_slide_shape(request)
      data, _status_code, _headers = delete_notes_slide_shape_with_http_info(request)
      data
    end

    # Remove a shape.
    # @param request operation request
    def delete_notes_slide_shape_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_notes_slide_shape ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_notes_slide_shape"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_notes_slide_shape"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.delete_notes_slide_shape"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Shapes')
      return data, status_code, headers
    end
    # Remove a range of shapes.
    # @param request operation request
    def delete_notes_slide_shapes(request)
      data, _status_code, _headers = delete_notes_slide_shapes_with_http_info(request)
      data
    end

    # Remove a range of shapes.
    # @param request operation request
    def delete_notes_slide_shapes_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_notes_slide_shapes ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_notes_slide_shapes"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_notes_slide_shapes"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/notesSlide/shapes'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)

      # query parameters
      query_params = {}
      query_params[:'shapes'] = request.shapes unless request.shapes.nil?
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Shapes')
      return data, status_code, headers
    end
    # Remove a paragraph.
    # @param request operation request
    def delete_paragraph(request)
      data, _status_code, _headers = delete_paragraph_with_http_info(request)
      data
    end

    # Remove a paragraph.
    # @param request operation request
    def delete_paragraph_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_paragraph ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_paragraph"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_paragraph"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.delete_paragraph"
      end
      # verify the required parameter 'paragraph_index' is set
      if @api_client.config.client_side_validation && request.paragraph_index.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_index' when calling SlidesApi.delete_paragraph"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'paragraphIndex', request.paragraph_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Paragraphs')
      return data, status_code, headers
    end
    # Remove a range of paragraphs.
    # @param request operation request
    def delete_paragraphs(request)
      data, _status_code, _headers = delete_paragraphs_with_http_info(request)
      data
    end

    # Remove a range of paragraphs.
    # @param request operation request
    def delete_paragraphs_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_paragraphs ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_paragraphs"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_paragraphs"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.delete_paragraphs"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)

      # query parameters
      query_params = {}
      query_params[:'paragraphs'] = request.paragraphs unless request.paragraphs.nil?
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Paragraphs')
      return data, status_code, headers
    end
    # Remove a portion.
    # @param request operation request
    def delete_portion(request)
      data, _status_code, _headers = delete_portion_with_http_info(request)
      data
    end

    # Remove a portion.
    # @param request operation request
    def delete_portion_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_portion ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_portion"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_portion"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.delete_portion"
      end
      # verify the required parameter 'paragraph_index' is set
      if @api_client.config.client_side_validation && request.paragraph_index.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_index' when calling SlidesApi.delete_portion"
      end
      # verify the required parameter 'portion_index' is set
      if @api_client.config.client_side_validation && request.portion_index.nil?
        fail ArgumentError, "Missing the required parameter 'portion_index' when calling SlidesApi.delete_portion"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'paragraphIndex', request.paragraph_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'portionIndex', request.portion_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Portions')
      return data, status_code, headers
    end
    # Remove a range of portions.
    # @param request operation request
    def delete_portions(request)
      data, _status_code, _headers = delete_portions_with_http_info(request)
      data
    end

    # Remove a range of portions.
    # @param request operation request
    def delete_portions_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_portions ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_portions"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_portions"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.delete_portions"
      end
      # verify the required parameter 'paragraph_index' is set
      if @api_client.config.client_side_validation && request.paragraph_index.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_index' when calling SlidesApi.delete_portions"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'paragraphIndex', request.paragraph_index)

      # query parameters
      query_params = {}
      query_params[:'portions'] = request.portions unless request.portions.nil?
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Portions')
      return data, status_code, headers
    end
    # Remove animation from a slide.
    # @param request operation request
    def delete_slide_animation(request)
      data, _status_code, _headers = delete_slide_animation_with_http_info(request)
      data
    end

    # Remove animation from a slide.
    # @param request operation request
    def delete_slide_animation_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_slide_animation ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_slide_animation"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_slide_animation"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/animation'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'SlideAnimation')
      return data, status_code, headers
    end
    # Remove an effect from slide animation.
    # @param request operation request
    def delete_slide_animation_effect(request)
      data, _status_code, _headers = delete_slide_animation_effect_with_http_info(request)
      data
    end

    # Remove an effect from slide animation.
    # @param request operation request
    def delete_slide_animation_effect_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_slide_animation_effect ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_slide_animation_effect"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_slide_animation_effect"
      end
      # verify the required parameter 'effect_index' is set
      if @api_client.config.client_side_validation && request.effect_index.nil?
        fail ArgumentError, "Missing the required parameter 'effect_index' when calling SlidesApi.delete_slide_animation_effect"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/animation/mainSequence/{effectIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'effectIndex', request.effect_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'SlideAnimation')
      return data, status_code, headers
    end
    # Remove an interactive sequence from slide animation.
    # @param request operation request
    def delete_slide_animation_interactive_sequence(request)
      data, _status_code, _headers = delete_slide_animation_interactive_sequence_with_http_info(request)
      data
    end

    # Remove an interactive sequence from slide animation.
    # @param request operation request
    def delete_slide_animation_interactive_sequence_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_slide_animation_interactive_sequence ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_slide_animation_interactive_sequence"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_slide_animation_interactive_sequence"
      end
      # verify the required parameter 'sequence_index' is set
      if @api_client.config.client_side_validation && request.sequence_index.nil?
        fail ArgumentError, "Missing the required parameter 'sequence_index' when calling SlidesApi.delete_slide_animation_interactive_sequence"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/animation/interactiveSequences/{sequenceIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'sequenceIndex', request.sequence_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'SlideAnimation')
      return data, status_code, headers
    end
    # Remove an effect from slide animation interactive sequence.
    # @param request operation request
    def delete_slide_animation_interactive_sequence_effect(request)
      data, _status_code, _headers = delete_slide_animation_interactive_sequence_effect_with_http_info(request)
      data
    end

    # Remove an effect from slide animation interactive sequence.
    # @param request operation request
    def delete_slide_animation_interactive_sequence_effect_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_slide_animation_interactive_sequence_effect ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_slide_animation_interactive_sequence_effect"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_slide_animation_interactive_sequence_effect"
      end
      # verify the required parameter 'sequence_index' is set
      if @api_client.config.client_side_validation && request.sequence_index.nil?
        fail ArgumentError, "Missing the required parameter 'sequence_index' when calling SlidesApi.delete_slide_animation_interactive_sequence_effect"
      end
      # verify the required parameter 'effect_index' is set
      if @api_client.config.client_side_validation && request.effect_index.nil?
        fail ArgumentError, "Missing the required parameter 'effect_index' when calling SlidesApi.delete_slide_animation_interactive_sequence_effect"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/animation/interactiveSequences/{sequenceIndex}/{effectIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'sequenceIndex', request.sequence_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'effectIndex', request.effect_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'SlideAnimation')
      return data, status_code, headers
    end
    # Clear all interactive sequences from slide animation.
    # @param request operation request
    def delete_slide_animation_interactive_sequences(request)
      data, _status_code, _headers = delete_slide_animation_interactive_sequences_with_http_info(request)
      data
    end

    # Clear all interactive sequences from slide animation.
    # @param request operation request
    def delete_slide_animation_interactive_sequences_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_slide_animation_interactive_sequences ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_slide_animation_interactive_sequences"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_slide_animation_interactive_sequences"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/animation/interactiveSequences'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'SlideAnimation')
      return data, status_code, headers
    end
    # Clear main sequence in slide animation.
    # @param request operation request
    def delete_slide_animation_main_sequence(request)
      data, _status_code, _headers = delete_slide_animation_main_sequence_with_http_info(request)
      data
    end

    # Clear main sequence in slide animation.
    # @param request operation request
    def delete_slide_animation_main_sequence_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_slide_animation_main_sequence ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_slide_animation_main_sequence"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_slide_animation_main_sequence"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/animation/mainSequence'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'SlideAnimation')
      return data, status_code, headers
    end
    # Delete a presentation slide by index.
    # @param request operation request
    def delete_slide_by_index(request)
      data, _status_code, _headers = delete_slide_by_index_with_http_info(request)
      data
    end

    # Delete a presentation slide by index.
    # @param request operation request
    def delete_slide_by_index_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_slide_by_index ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_slide_by_index"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_slide_by_index"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Slides')
      return data, status_code, headers
    end
    # Remove a shape.
    # @param request operation request
    def delete_slide_shape(request)
      data, _status_code, _headers = delete_slide_shape_with_http_info(request)
      data
    end

    # Remove a shape.
    # @param request operation request
    def delete_slide_shape_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_slide_shape ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_slide_shape"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_slide_shape"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.delete_slide_shape"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Shapes')
      return data, status_code, headers
    end
    # Remove a range of shapes.
    # @param request operation request
    def delete_slide_shapes(request)
      data, _status_code, _headers = delete_slide_shapes_with_http_info(request)
      data
    end

    # Remove a range of shapes.
    # @param request operation request
    def delete_slide_shapes_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_slide_shapes ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_slide_shapes"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_slide_shapes"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)

      # query parameters
      query_params = {}
      query_params[:'shapes'] = request.shapes unless request.shapes.nil?
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Shapes')
      return data, status_code, headers
    end
    # Remove a shape (for smart art and group shapes).
    # @param request operation request
    def delete_slide_subshape(request)
      data, _status_code, _headers = delete_slide_subshape_with_http_info(request)
      data
    end

    # Remove a shape (for smart art and group shapes).
    # @param request operation request
    def delete_slide_subshape_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_slide_subshape ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_slide_subshape"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_slide_subshape"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.delete_slide_subshape"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', request.path)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Shapes')
      return data, status_code, headers
    end
    # Remove a range of shapes (for smart art and group shapes).
    # @param request operation request
    def delete_slide_subshapes(request)
      data, _status_code, _headers = delete_slide_subshapes_with_http_info(request)
      data
    end

    # Remove a range of shapes (for smart art and group shapes).
    # @param request operation request
    def delete_slide_subshapes_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_slide_subshapes ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_slide_subshapes"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_slide_subshapes"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{path}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', request.path)

      # query parameters
      query_params = {}
      query_params[:'shapes'] = request.shapes unless request.shapes.nil?
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Shapes')
      return data, status_code, headers
    end
    # Delete presentation slides.
    # @param request operation request
    def delete_slides_clean_slides_list(request)
      data, _status_code, _headers = delete_slides_clean_slides_list_with_http_info(request)
      data
    end

    # Delete presentation slides.
    # @param request operation request
    def delete_slides_clean_slides_list_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_slides_clean_slides_list ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_slides_clean_slides_list"
      end
      # resource path
      local_var_path = '/slides/{name}/slides'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)

      # query parameters
      query_params = {}
      query_params[:'slides'] = request.slides unless request.slides.nil?
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Slides')
      return data, status_code, headers
    end
    # Clean document properties.
    # @param request operation request
    def delete_slides_document_properties(request)
      data, _status_code, _headers = delete_slides_document_properties_with_http_info(request)
      data
    end

    # Clean document properties.
    # @param request operation request
    def delete_slides_document_properties_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_slides_document_properties ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_slides_document_properties"
      end
      # resource path
      local_var_path = '/slides/{name}/documentproperties'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'DocumentProperties')
      return data, status_code, headers
    end
    # Delete document property.
    # @param request operation request
    def delete_slides_document_property(request)
      data, _status_code, _headers = delete_slides_document_property_with_http_info(request)
      data
    end

    # Delete document property.
    # @param request operation request
    def delete_slides_document_property_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_slides_document_property ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_slides_document_property"
      end
      # verify the required parameter 'property_name' is set
      if @api_client.config.client_side_validation && request.property_name.nil?
        fail ArgumentError, "Missing the required parameter 'property_name' when calling SlidesApi.delete_slides_document_property"
      end
      # resource path
      local_var_path = '/slides/{name}/documentproperties/{propertyName}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'propertyName', request.property_name)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'DocumentProperties')
      return data, status_code, headers
    end
    # Remove background from a slide.
    # @param request operation request
    def delete_slides_slide_background(request)
      data, _status_code, _headers = delete_slides_slide_background_with_http_info(request)
      data
    end

    # Remove background from a slide.
    # @param request operation request
    def delete_slides_slide_background_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_slides_slide_background ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_slides_slide_background"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_slides_slide_background"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/background'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'SlideBackground')
      return data, status_code, headers
    end
    # Remove a paragraph (for smart art and group shapes).
    # @param request operation request
    def delete_subshape_paragraph(request)
      data, _status_code, _headers = delete_subshape_paragraph_with_http_info(request)
      data
    end

    # Remove a paragraph (for smart art and group shapes).
    # @param request operation request
    def delete_subshape_paragraph_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_subshape_paragraph ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_subshape_paragraph"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_subshape_paragraph"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.delete_subshape_paragraph"
      end
      # verify the required parameter 'paragraph_index' is set
      if @api_client.config.client_side_validation && request.paragraph_index.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_index' when calling SlidesApi.delete_subshape_paragraph"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', request.path)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'paragraphIndex', request.paragraph_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Paragraphs')
      return data, status_code, headers
    end
    # Remove a range of paragraphs (for smart art and group shapes).
    # @param request operation request
    def delete_subshape_paragraphs(request)
      data, _status_code, _headers = delete_subshape_paragraphs_with_http_info(request)
      data
    end

    # Remove a range of paragraphs (for smart art and group shapes).
    # @param request operation request
    def delete_subshape_paragraphs_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_subshape_paragraphs ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_subshape_paragraphs"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_subshape_paragraphs"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.delete_subshape_paragraphs"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', request.path)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)

      # query parameters
      query_params = {}
      query_params[:'paragraphs'] = request.paragraphs unless request.paragraphs.nil?
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Paragraphs')
      return data, status_code, headers
    end
    # Remove a portion (for smart art and group shapes).
    # @param request operation request
    def delete_subshape_portion(request)
      data, _status_code, _headers = delete_subshape_portion_with_http_info(request)
      data
    end

    # Remove a portion (for smart art and group shapes).
    # @param request operation request
    def delete_subshape_portion_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_subshape_portion ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_subshape_portion"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_subshape_portion"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.delete_subshape_portion"
      end
      # verify the required parameter 'paragraph_index' is set
      if @api_client.config.client_side_validation && request.paragraph_index.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_index' when calling SlidesApi.delete_subshape_portion"
      end
      # verify the required parameter 'portion_index' is set
      if @api_client.config.client_side_validation && request.portion_index.nil?
        fail ArgumentError, "Missing the required parameter 'portion_index' when calling SlidesApi.delete_subshape_portion"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', request.path)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'paragraphIndex', request.paragraph_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'portionIndex', request.portion_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Portions')
      return data, status_code, headers
    end
    # Remove a range of portions (for smart art and group shapes).
    # @param request operation request
    def delete_subshape_portions(request)
      data, _status_code, _headers = delete_subshape_portions_with_http_info(request)
      data
    end

    # Remove a range of portions (for smart art and group shapes).
    # @param request operation request
    def delete_subshape_portions_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_subshape_portions ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_subshape_portions"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_subshape_portions"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.delete_subshape_portions"
      end
      # verify the required parameter 'paragraph_index' is set
      if @api_client.config.client_side_validation && request.paragraph_index.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_index' when calling SlidesApi.delete_subshape_portions"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', request.path)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'paragraphIndex', request.paragraph_index)

      # query parameters
      query_params = {}
      query_params[:'portions'] = request.portions unless request.portions.nil?
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Portions')
      return data, status_code, headers
    end
    # Download file
    # @param request operation request
    def download_file(request)
      data, _status_code, _headers = download_file_with_http_info(request)
      data
    end

    # Download file
    # @param request operation request
    def download_file_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.download_file ...'
      end
      # resource path
      local_var_path = '/slides/storage/file/{path}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', request.path)

      # query parameters
      query_params = {}
      query_params[:'storageName'] = request.storage_name unless request.storage_name.nil?
      query_params[:'versionId'] = request.version_id unless request.version_id.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


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
    # Get disc usage
    # @param request operation request
    def get_disc_usage(request)
      data, _status_code, _headers = get_disc_usage_with_http_info(request)
      data
    end

    # Get disc usage
    # @param request operation request
    def get_disc_usage_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_disc_usage ...'
      end
      # resource path
      local_var_path = '/slides/storage/disc'

      # query parameters
      query_params = {}
      query_params[:'storageName'] = request.storage_name unless request.storage_name.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'DiscUsage')
      return data, status_code, headers
    end
    # Get file versions
    # @param request operation request
    def get_file_versions(request)
      data, _status_code, _headers = get_file_versions_with_http_info(request)
      data
    end

    # Get file versions
    # @param request operation request
    def get_file_versions_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_file_versions ...'
      end
      # resource path
      local_var_path = '/slides/storage/version/{path}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', request.path)

      # query parameters
      query_params = {}
      query_params[:'storageName'] = request.storage_name unless request.storage_name.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'FileVersions')
      return data, status_code, headers
    end
    # Get all files and folders within a folder
    # @param request operation request
    def get_files_list(request)
      data, _status_code, _headers = get_files_list_with_http_info(request)
      data
    end

    # Get all files and folders within a folder
    # @param request operation request
    def get_files_list_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_files_list ...'
      end
      # resource path
      local_var_path = '/slides/storage/folder/{path}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', request.path)

      # query parameters
      query_params = {}
      query_params[:'storageName'] = request.storage_name unless request.storage_name.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'FilesList')
      return data, status_code, headers
    end
    # Read presentation layoutSlide info.
    # @param request operation request
    def get_layout_slide(request)
      data, _status_code, _headers = get_layout_slide_with_http_info(request)
      data
    end

    # Read presentation layoutSlide info.
    # @param request operation request
    def get_layout_slide_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_layout_slide ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_layout_slide"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_layout_slide"
      end
      # resource path
      local_var_path = '/slides/{name}/layoutSlides/{slideIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'LayoutSlide')
      return data, status_code, headers
    end
    # Read presentation layoutSlides info.
    # @param request operation request
    def get_layout_slides_list(request)
      data, _status_code, _headers = get_layout_slides_list_with_http_info(request)
      data
    end

    # Read presentation layoutSlides info.
    # @param request operation request
    def get_layout_slides_list_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_layout_slides_list ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_layout_slides_list"
      end
      # resource path
      local_var_path = '/slides/{name}/layoutSlides'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'LayoutSlides')
      return data, status_code, headers
    end
    # Read presentation masterSlide info.
    # @param request operation request
    def get_master_slide(request)
      data, _status_code, _headers = get_master_slide_with_http_info(request)
      data
    end

    # Read presentation masterSlide info.
    # @param request operation request
    def get_master_slide_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_master_slide ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_master_slide"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_master_slide"
      end
      # resource path
      local_var_path = '/slides/{name}/masterSlides/{slideIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'MasterSlide')
      return data, status_code, headers
    end
    # Read presentation masterSlides info.
    # @param request operation request
    def get_master_slides_list(request)
      data, _status_code, _headers = get_master_slides_list_with_http_info(request)
      data
    end

    # Read presentation masterSlides info.
    # @param request operation request
    def get_master_slides_list_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_master_slides_list ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_master_slides_list"
      end
      # resource path
      local_var_path = '/slides/{name}/masterSlides'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'MasterSlides')
      return data, status_code, headers
    end
    # Read notes slide info.
    # @param request operation request
    def get_notes_slide(request)
      data, _status_code, _headers = get_notes_slide_with_http_info(request)
      data
    end

    # Read notes slide info.
    # @param request operation request
    def get_notes_slide_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_notes_slide ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_notes_slide"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_notes_slide"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/notesSlide'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'NotesSlide')
      return data, status_code, headers
    end
    # Get info whether a notes slide exists.
    # @param request operation request
    def get_notes_slide_exists(request)
      data, _status_code, _headers = get_notes_slide_exists_with_http_info(request)
      data
    end

    # Get info whether a notes slide exists.
    # @param request operation request
    def get_notes_slide_exists_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_notes_slide_exists ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_notes_slide_exists"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_notes_slide_exists"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/notesSlide/exist'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'EntityExists')
      return data, status_code, headers
    end
    # Read slide shape info.
    # @param request operation request
    def get_notes_slide_shape(request)
      data, _status_code, _headers = get_notes_slide_shape_with_http_info(request)
      data
    end

    # Read slide shape info.
    # @param request operation request
    def get_notes_slide_shape_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_notes_slide_shape ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_notes_slide_shape"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_notes_slide_shape"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.get_notes_slide_shape"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'ShapeBase')
      return data, status_code, headers
    end
    # Read shape paragraph info.
    # @param request operation request
    def get_notes_slide_shape_paragraph(request)
      data, _status_code, _headers = get_notes_slide_shape_paragraph_with_http_info(request)
      data
    end

    # Read shape paragraph info.
    # @param request operation request
    def get_notes_slide_shape_paragraph_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_notes_slide_shape_paragraph ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_notes_slide_shape_paragraph"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_notes_slide_shape_paragraph"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.get_notes_slide_shape_paragraph"
      end
      # verify the required parameter 'paragraph_index' is set
      if @api_client.config.client_side_validation && request.paragraph_index.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_index' when calling SlidesApi.get_notes_slide_shape_paragraph"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs/{paragraphIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'paragraphIndex', request.paragraph_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Paragraph')
      return data, status_code, headers
    end
    # Read shape paragraphs info.
    # @param request operation request
    def get_notes_slide_shape_paragraphs(request)
      data, _status_code, _headers = get_notes_slide_shape_paragraphs_with_http_info(request)
      data
    end

    # Read shape paragraphs info.
    # @param request operation request
    def get_notes_slide_shape_paragraphs_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_notes_slide_shape_paragraphs ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_notes_slide_shape_paragraphs"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_notes_slide_shape_paragraphs"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.get_notes_slide_shape_paragraphs"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Paragraphs')
      return data, status_code, headers
    end
    # Read paragraph portion info.
    # @param request operation request
    def get_notes_slide_shape_portion(request)
      data, _status_code, _headers = get_notes_slide_shape_portion_with_http_info(request)
      data
    end

    # Read paragraph portion info.
    # @param request operation request
    def get_notes_slide_shape_portion_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_notes_slide_shape_portion ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_notes_slide_shape_portion"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_notes_slide_shape_portion"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.get_notes_slide_shape_portion"
      end
      # verify the required parameter 'paragraph_index' is set
      if @api_client.config.client_side_validation && request.paragraph_index.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_index' when calling SlidesApi.get_notes_slide_shape_portion"
      end
      # verify the required parameter 'portion_index' is set
      if @api_client.config.client_side_validation && request.portion_index.nil?
        fail ArgumentError, "Missing the required parameter 'portion_index' when calling SlidesApi.get_notes_slide_shape_portion"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'paragraphIndex', request.paragraph_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'portionIndex', request.portion_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Portion')
      return data, status_code, headers
    end
    # Read paragraph portions info.
    # @param request operation request
    def get_notes_slide_shape_portions(request)
      data, _status_code, _headers = get_notes_slide_shape_portions_with_http_info(request)
      data
    end

    # Read paragraph portions info.
    # @param request operation request
    def get_notes_slide_shape_portions_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_notes_slide_shape_portions ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_notes_slide_shape_portions"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_notes_slide_shape_portions"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.get_notes_slide_shape_portions"
      end
      # verify the required parameter 'paragraph_index' is set
      if @api_client.config.client_side_validation && request.paragraph_index.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_index' when calling SlidesApi.get_notes_slide_shape_portions"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'paragraphIndex', request.paragraph_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Portions')
      return data, status_code, headers
    end
    # Read slide shapes info.
    # @param request operation request
    def get_notes_slide_shapes(request)
      data, _status_code, _headers = get_notes_slide_shapes_with_http_info(request)
      data
    end

    # Read slide shapes info.
    # @param request operation request
    def get_notes_slide_shapes_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_notes_slide_shapes ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_notes_slide_shapes"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_notes_slide_shapes"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/notesSlide/shapes'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Shapes')
      return data, status_code, headers
    end
    # Convert notes slide to the specified image format.
    # @param request operation request
    def get_notes_slide_with_format(request)
      data, _status_code, _headers = get_notes_slide_with_format_with_http_info(request)
      data
    end

    # Convert notes slide to the specified image format.
    # @param request operation request
    def get_notes_slide_with_format_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_notes_slide_with_format ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_notes_slide_with_format"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_notes_slide_with_format"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && request.format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling SlidesApi.get_notes_slide_with_format"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Jpeg', 'Png', 'Gif', 'Bmp', 'Tiff'].any?{ |s| s.casecmp(request.format)==0 }
        fail ArgumentError, "invalid value for 'format', must be one of Jpeg, Png, Gif, Bmp, Tiff"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/notesSlide/{format}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'format', request.format)

      # query parameters
      query_params = {}
      query_params[:'width'] = request.width unless request.width.nil?
      query_params[:'height'] = request.height unless request.height.nil?
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?
      query_params[:'fontsFolder'] = request.fonts_folder unless request.fonts_folder.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


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
    # Read paragraph portion info.
    # @param request operation request
    def get_paragraph_portion(request)
      data, _status_code, _headers = get_paragraph_portion_with_http_info(request)
      data
    end

    # Read paragraph portion info.
    # @param request operation request
    def get_paragraph_portion_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_paragraph_portion ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_paragraph_portion"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_paragraph_portion"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.get_paragraph_portion"
      end
      # verify the required parameter 'paragraph_index' is set
      if @api_client.config.client_side_validation && request.paragraph_index.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_index' when calling SlidesApi.get_paragraph_portion"
      end
      # verify the required parameter 'portion_index' is set
      if @api_client.config.client_side_validation && request.portion_index.nil?
        fail ArgumentError, "Missing the required parameter 'portion_index' when calling SlidesApi.get_paragraph_portion"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'paragraphIndex', request.paragraph_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'portionIndex', request.portion_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Portion')
      return data, status_code, headers
    end
    # Read paragraph portions info.
    # @param request operation request
    def get_paragraph_portions(request)
      data, _status_code, _headers = get_paragraph_portions_with_http_info(request)
      data
    end

    # Read paragraph portions info.
    # @param request operation request
    def get_paragraph_portions_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_paragraph_portions ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_paragraph_portions"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_paragraph_portions"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.get_paragraph_portions"
      end
      # verify the required parameter 'paragraph_index' is set
      if @api_client.config.client_side_validation && request.paragraph_index.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_index' when calling SlidesApi.get_paragraph_portions"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'paragraphIndex', request.paragraph_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Portions')
      return data, status_code, headers
    end
    # Read slide animation effects.
    # @param request operation request
    def get_slide_animation(request)
      data, _status_code, _headers = get_slide_animation_with_http_info(request)
      data
    end

    # Read slide animation effects.
    # @param request operation request
    def get_slide_animation_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_slide_animation ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_slide_animation"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_slide_animation"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/animation'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)

      # query parameters
      query_params = {}
      query_params[:'shapeIndex'] = request.shape_index unless request.shape_index.nil?
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'SlideAnimation')
      return data, status_code, headers
    end
    # Read slide shape info.
    # @param request operation request
    def get_slide_shape(request)
      data, _status_code, _headers = get_slide_shape_with_http_info(request)
      data
    end

    # Read slide shape info.
    # @param request operation request
    def get_slide_shape_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_slide_shape ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_slide_shape"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_slide_shape"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.get_slide_shape"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'ShapeBase')
      return data, status_code, headers
    end
    # Read shape paragraph info.
    # @param request operation request
    def get_slide_shape_paragraph(request)
      data, _status_code, _headers = get_slide_shape_paragraph_with_http_info(request)
      data
    end

    # Read shape paragraph info.
    # @param request operation request
    def get_slide_shape_paragraph_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_slide_shape_paragraph ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_slide_shape_paragraph"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_slide_shape_paragraph"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.get_slide_shape_paragraph"
      end
      # verify the required parameter 'paragraph_index' is set
      if @api_client.config.client_side_validation && request.paragraph_index.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_index' when calling SlidesApi.get_slide_shape_paragraph"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'paragraphIndex', request.paragraph_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Paragraph')
      return data, status_code, headers
    end
    # Read shape paragraphs info.
    # @param request operation request
    def get_slide_shape_paragraphs(request)
      data, _status_code, _headers = get_slide_shape_paragraphs_with_http_info(request)
      data
    end

    # Read shape paragraphs info.
    # @param request operation request
    def get_slide_shape_paragraphs_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_slide_shape_paragraphs ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_slide_shape_paragraphs"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_slide_shape_paragraphs"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.get_slide_shape_paragraphs"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Paragraphs')
      return data, status_code, headers
    end
    # Read slide shapes info.
    # @param request operation request
    def get_slide_shapes(request)
      data, _status_code, _headers = get_slide_shapes_with_http_info(request)
      data
    end

    # Read slide shapes info.
    # @param request operation request
    def get_slide_shapes_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_slide_shapes ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_slide_shapes"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_slide_shapes"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Shapes')
      return data, status_code, headers
    end
    # Read slide shape info (for smart art and group shapes).
    # @param request operation request
    def get_slide_subshape(request)
      data, _status_code, _headers = get_slide_subshape_with_http_info(request)
      data
    end

    # Read slide shape info (for smart art and group shapes).
    # @param request operation request
    def get_slide_subshape_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_slide_subshape ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_slide_subshape"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_slide_subshape"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.get_slide_subshape"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', request.path)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'ShapeBase')
      return data, status_code, headers
    end
    # Read shape paragraph info (for smart art and group shapes).
    # @param request operation request
    def get_slide_subshape_paragraph(request)
      data, _status_code, _headers = get_slide_subshape_paragraph_with_http_info(request)
      data
    end

    # Read shape paragraph info (for smart art and group shapes).
    # @param request operation request
    def get_slide_subshape_paragraph_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_slide_subshape_paragraph ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_slide_subshape_paragraph"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_slide_subshape_paragraph"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.get_slide_subshape_paragraph"
      end
      # verify the required parameter 'paragraph_index' is set
      if @api_client.config.client_side_validation && request.paragraph_index.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_index' when calling SlidesApi.get_slide_subshape_paragraph"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', request.path)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'paragraphIndex', request.paragraph_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Paragraph')
      return data, status_code, headers
    end
    # Read shape paragraphs info (for smart art and group shapes).
    # @param request operation request
    def get_slide_subshape_paragraphs(request)
      data, _status_code, _headers = get_slide_subshape_paragraphs_with_http_info(request)
      data
    end

    # Read shape paragraphs info (for smart art and group shapes).
    # @param request operation request
    def get_slide_subshape_paragraphs_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_slide_subshape_paragraphs ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_slide_subshape_paragraphs"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_slide_subshape_paragraphs"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.get_slide_subshape_paragraphs"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', request.path)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Paragraphs')
      return data, status_code, headers
    end
    # Read slide shapes info.
    # @param request operation request
    def get_slide_subshapes(request)
      data, _status_code, _headers = get_slide_subshapes_with_http_info(request)
      data
    end

    # Read slide shapes info.
    # @param request operation request
    def get_slide_subshapes_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_slide_subshapes ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_slide_subshapes"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_slide_subshapes"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{path}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', request.path)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Shapes')
      return data, status_code, headers
    end
    # Get API info.
    def get_slides_api_info()
      data, _status_code, _headers = get_slides_api_info_with_http_info
      data
    end

    # Get API info.
    def get_slides_api_info_with_http_info()
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_slides_api_info ...'
      end
      # resource path
      local_var_path = '/slides/info'

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

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'ApiInfo')
      return data, status_code, headers
    end
    # Read presentation info.
    # @param request operation request
    def get_slides_document(request)
      data, _status_code, _headers = get_slides_document_with_http_info(request)
      data
    end

    # Read presentation info.
    # @param request operation request
    def get_slides_document_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_slides_document ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_slides_document"
      end
      # resource path
      local_var_path = '/slides/{name}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Document')
      return data, status_code, headers
    end
    # Read presentation document properties.
    # @param request operation request
    def get_slides_document_properties(request)
      data, _status_code, _headers = get_slides_document_properties_with_http_info(request)
      data
    end

    # Read presentation document properties.
    # @param request operation request
    def get_slides_document_properties_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_slides_document_properties ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_slides_document_properties"
      end
      # resource path
      local_var_path = '/slides/{name}/documentproperties'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'DocumentProperties')
      return data, status_code, headers
    end
    # Read presentation document property.
    # @param request operation request
    def get_slides_document_property(request)
      data, _status_code, _headers = get_slides_document_property_with_http_info(request)
      data
    end

    # Read presentation document property.
    # @param request operation request
    def get_slides_document_property_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_slides_document_property ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_slides_document_property"
      end
      # verify the required parameter 'property_name' is set
      if @api_client.config.client_side_validation && request.property_name.nil?
        fail ArgumentError, "Missing the required parameter 'property_name' when calling SlidesApi.get_slides_document_property"
      end
      # resource path
      local_var_path = '/slides/{name}/documentproperties/{propertyName}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'propertyName', request.property_name)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'DocumentProperty')
      return data, status_code, headers
    end
    # Get image binary data.
    # @param request operation request
    def get_slides_image_with_default_format(request)
      data, _status_code, _headers = get_slides_image_with_default_format_with_http_info(request)
      data
    end

    # Get image binary data.
    # @param request operation request
    def get_slides_image_with_default_format_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_slides_image_with_default_format ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_slides_image_with_default_format"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && request.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling SlidesApi.get_slides_image_with_default_format"
      end
      # resource path
      local_var_path = '/slides/{name}/images/{index}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'index', request.index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


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
    # Get image in specified format.
    # @param request operation request
    def get_slides_image_with_format(request)
      data, _status_code, _headers = get_slides_image_with_format_with_http_info(request)
      data
    end

    # Get image in specified format.
    # @param request operation request
    def get_slides_image_with_format_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_slides_image_with_format ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_slides_image_with_format"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && request.index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling SlidesApi.get_slides_image_with_format"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && request.format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling SlidesApi.get_slides_image_with_format"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Jpeg', 'Png', 'Gif', 'Bmp', 'Tiff'].any?{ |s| s.casecmp(request.format)==0 }
        fail ArgumentError, "invalid value for 'format', must be one of Jpeg, Png, Gif, Bmp, Tiff"
      end
      # resource path
      local_var_path = '/slides/{name}/images/{index}/{format}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'index', request.index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'format', request.format)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


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
    # Read presentation images info.
    # @param request operation request
    def get_slides_images(request)
      data, _status_code, _headers = get_slides_images_with_http_info(request)
      data
    end

    # Read presentation images info.
    # @param request operation request
    def get_slides_images_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_slides_images ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_slides_images"
      end
      # resource path
      local_var_path = '/slides/{name}/images'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Images')
      return data, status_code, headers
    end
    # Read slide placeholder info.
    # @param request operation request
    def get_slides_placeholder(request)
      data, _status_code, _headers = get_slides_placeholder_with_http_info(request)
      data
    end

    # Read slide placeholder info.
    # @param request operation request
    def get_slides_placeholder_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_slides_placeholder ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_slides_placeholder"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_slides_placeholder"
      end
      # verify the required parameter 'placeholder_index' is set
      if @api_client.config.client_side_validation && request.placeholder_index.nil?
        fail ArgumentError, "Missing the required parameter 'placeholder_index' when calling SlidesApi.get_slides_placeholder"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/placeholders/{placeholderIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'placeholderIndex', request.placeholder_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Placeholder')
      return data, status_code, headers
    end
    # Read slide placeholders info.
    # @param request operation request
    def get_slides_placeholders(request)
      data, _status_code, _headers = get_slides_placeholders_with_http_info(request)
      data
    end

    # Read slide placeholders info.
    # @param request operation request
    def get_slides_placeholders_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_slides_placeholders ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_slides_placeholders"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_slides_placeholders"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/placeholders'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Placeholders')
      return data, status_code, headers
    end
    # Extract presentation text items.
    # @param request operation request
    def get_slides_presentation_text_items(request)
      data, _status_code, _headers = get_slides_presentation_text_items_with_http_info(request)
      data
    end

    # Extract presentation text items.
    # @param request operation request
    def get_slides_presentation_text_items_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_slides_presentation_text_items ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_slides_presentation_text_items"
      end
      # resource path
      local_var_path = '/slides/{name}/textItems'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)

      # query parameters
      query_params = {}
      query_params[:'withEmpty'] = request.with_empty unless request.with_empty.nil?
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'TextItems')
      return data, status_code, headers
    end
    # Read presentation slide info.
    # @param request operation request
    def get_slides_slide(request)
      data, _status_code, _headers = get_slides_slide_with_http_info(request)
      data
    end

    # Read presentation slide info.
    # @param request operation request
    def get_slides_slide_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_slides_slide ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_slides_slide"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_slides_slide"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Slide')
      return data, status_code, headers
    end
    # Read slide background info.
    # @param request operation request
    def get_slides_slide_background(request)
      data, _status_code, _headers = get_slides_slide_background_with_http_info(request)
      data
    end

    # Read slide background info.
    # @param request operation request
    def get_slides_slide_background_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_slides_slide_background ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_slides_slide_background"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_slides_slide_background"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/background'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'SlideBackground')
      return data, status_code, headers
    end
    # Read presentation slide comments.
    # @param request operation request
    def get_slides_slide_comments(request)
      data, _status_code, _headers = get_slides_slide_comments_with_http_info(request)
      data
    end

    # Read presentation slide comments.
    # @param request operation request
    def get_slides_slide_comments_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_slides_slide_comments ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_slides_slide_comments"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_slides_slide_comments"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/comments'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'SlideComments')
      return data, status_code, headers
    end
    # Read slide images info.
    # @param request operation request
    def get_slides_slide_images(request)
      data, _status_code, _headers = get_slides_slide_images_with_http_info(request)
      data
    end

    # Read slide images info.
    # @param request operation request
    def get_slides_slide_images_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_slides_slide_images ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_slides_slide_images"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_slides_slide_images"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/images'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Images')
      return data, status_code, headers
    end
    # Extract slide text items.
    # @param request operation request
    def get_slides_slide_text_items(request)
      data, _status_code, _headers = get_slides_slide_text_items_with_http_info(request)
      data
    end

    # Extract slide text items.
    # @param request operation request
    def get_slides_slide_text_items_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_slides_slide_text_items ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_slides_slide_text_items"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_slides_slide_text_items"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/textItems'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)

      # query parameters
      query_params = {}
      query_params[:'withEmpty'] = request.with_empty unless request.with_empty.nil?
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'TextItems')
      return data, status_code, headers
    end
    # Read presentation slides info.
    # @param request operation request
    def get_slides_slides_list(request)
      data, _status_code, _headers = get_slides_slides_list_with_http_info(request)
      data
    end

    # Read presentation slides info.
    # @param request operation request
    def get_slides_slides_list_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_slides_slides_list ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_slides_slides_list"
      end
      # resource path
      local_var_path = '/slides/{name}/slides'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Slides')
      return data, status_code, headers
    end
    # Read slide theme info.
    # @param request operation request
    def get_slides_theme(request)
      data, _status_code, _headers = get_slides_theme_with_http_info(request)
      data
    end

    # Read slide theme info.
    # @param request operation request
    def get_slides_theme_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_slides_theme ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_slides_theme"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_slides_theme"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/theme'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Theme')
      return data, status_code, headers
    end
    # Read slide theme color scheme info.
    # @param request operation request
    def get_slides_theme_color_scheme(request)
      data, _status_code, _headers = get_slides_theme_color_scheme_with_http_info(request)
      data
    end

    # Read slide theme color scheme info.
    # @param request operation request
    def get_slides_theme_color_scheme_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_slides_theme_color_scheme ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_slides_theme_color_scheme"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_slides_theme_color_scheme"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/theme/colorScheme'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'ColorScheme')
      return data, status_code, headers
    end
    # Read slide theme font scheme info.
    # @param request operation request
    def get_slides_theme_font_scheme(request)
      data, _status_code, _headers = get_slides_theme_font_scheme_with_http_info(request)
      data
    end

    # Read slide theme font scheme info.
    # @param request operation request
    def get_slides_theme_font_scheme_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_slides_theme_font_scheme ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_slides_theme_font_scheme"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_slides_theme_font_scheme"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/theme/fontScheme'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'FontScheme')
      return data, status_code, headers
    end
    # Read slide theme format scheme info.
    # @param request operation request
    def get_slides_theme_format_scheme(request)
      data, _status_code, _headers = get_slides_theme_format_scheme_with_http_info(request)
      data
    end

    # Read slide theme format scheme info.
    # @param request operation request
    def get_slides_theme_format_scheme_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_slides_theme_format_scheme ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_slides_theme_format_scheme"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_slides_theme_format_scheme"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/theme/formatScheme'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'FormatScheme')
      return data, status_code, headers
    end
    # Read presentation document properties.
    # @param request operation request
    def get_slides_view_properties(request)
      data, _status_code, _headers = get_slides_view_properties_with_http_info(request)
      data
    end

    # Read presentation document properties.
    # @param request operation request
    def get_slides_view_properties_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_slides_view_properties ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_slides_view_properties"
      end
      # resource path
      local_var_path = '/slides/{name}/viewProperties'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'ViewProperties')
      return data, status_code, headers
    end
    # Read paragraph portion info (for smart art and group shapes).
    # @param request operation request
    def get_subshape_paragraph_portion(request)
      data, _status_code, _headers = get_subshape_paragraph_portion_with_http_info(request)
      data
    end

    # Read paragraph portion info (for smart art and group shapes).
    # @param request operation request
    def get_subshape_paragraph_portion_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_subshape_paragraph_portion ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_subshape_paragraph_portion"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_subshape_paragraph_portion"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.get_subshape_paragraph_portion"
      end
      # verify the required parameter 'paragraph_index' is set
      if @api_client.config.client_side_validation && request.paragraph_index.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_index' when calling SlidesApi.get_subshape_paragraph_portion"
      end
      # verify the required parameter 'portion_index' is set
      if @api_client.config.client_side_validation && request.portion_index.nil?
        fail ArgumentError, "Missing the required parameter 'portion_index' when calling SlidesApi.get_subshape_paragraph_portion"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', request.path)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'paragraphIndex', request.paragraph_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'portionIndex', request.portion_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Portion')
      return data, status_code, headers
    end
    # Read paragraph portions info (for smart art and group shapes).
    # @param request operation request
    def get_subshape_paragraph_portions(request)
      data, _status_code, _headers = get_subshape_paragraph_portions_with_http_info(request)
      data
    end

    # Read paragraph portions info (for smart art and group shapes).
    # @param request operation request
    def get_subshape_paragraph_portions_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_subshape_paragraph_portions ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_subshape_paragraph_portions"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_subshape_paragraph_portions"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.get_subshape_paragraph_portions"
      end
      # verify the required parameter 'paragraph_index' is set
      if @api_client.config.client_side_validation && request.paragraph_index.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_index' when calling SlidesApi.get_subshape_paragraph_portions"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', request.path)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'paragraphIndex', request.paragraph_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Portions')
      return data, status_code, headers
    end
    # Move file
    # @param request operation request
    def move_file(request)
      move_file_with_http_info(request)
      nil
    end

    # Move file
    # @param request operation request
    def move_file_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.move_file ...'
      end
      # verify the required parameter 'src_path' is set
      if @api_client.config.client_side_validation && request.src_path.nil?
        fail ArgumentError, "Missing the required parameter 'src_path' when calling SlidesApi.move_file"
      end
      # verify the required parameter 'dest_path' is set
      if @api_client.config.client_side_validation && request.dest_path.nil?
        fail ArgumentError, "Missing the required parameter 'dest_path' when calling SlidesApi.move_file"
      end
      # resource path
      local_var_path = '/slides/storage/file/move/{srcPath}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'srcPath', request.src_path)

      # query parameters
      query_params = {}
      query_params[:'destPath'] = request.dest_path unless request.dest_path.nil?
      query_params[:'srcStorageName'] = request.src_storage_name unless request.src_storage_name.nil?
      query_params[:'destStorageName'] = request.dest_storage_name unless request.dest_storage_name.nil?
      query_params[:'versionId'] = request.version_id unless request.version_id.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names)
      return data, status_code, headers
    end
    # Move folder
    # @param request operation request
    def move_folder(request)
      move_folder_with_http_info(request)
      nil
    end

    # Move folder
    # @param request operation request
    def move_folder_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.move_folder ...'
      end
      # verify the required parameter 'src_path' is set
      if @api_client.config.client_side_validation && request.src_path.nil?
        fail ArgumentError, "Missing the required parameter 'src_path' when calling SlidesApi.move_folder"
      end
      # verify the required parameter 'dest_path' is set
      if @api_client.config.client_side_validation && request.dest_path.nil?
        fail ArgumentError, "Missing the required parameter 'dest_path' when calling SlidesApi.move_folder"
      end
      # resource path
      local_var_path = '/slides/storage/folder/move/{srcPath}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'srcPath', request.src_path)

      # query parameters
      query_params = {}
      query_params[:'destPath'] = request.dest_path unless request.dest_path.nil?
      query_params[:'srcStorageName'] = request.src_storage_name unless request.src_storage_name.nil?
      query_params[:'destStorageName'] = request.dest_storage_name unless request.dest_storage_name.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names)
      return data, status_code, headers
    end
    # Check if file or folder exists
    # @param request operation request
    def object_exists(request)
      data, _status_code, _headers = object_exists_with_http_info(request)
      data
    end

    # Check if file or folder exists
    # @param request operation request
    def object_exists_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.object_exists ...'
      end
      # resource path
      local_var_path = '/slides/storage/exist/{path}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', request.path)

      # query parameters
      query_params = {}
      query_params[:'storageName'] = request.storage_name unless request.storage_name.nil?
      query_params[:'versionId'] = request.version_id unless request.version_id.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'ObjectExist')
      return data, status_code, headers
    end
    # Creates new paragraph.
    # @param request operation request
    def post_add_new_paragraph(request)
      data, _status_code, _headers = post_add_new_paragraph_with_http_info(request)
      data
    end

    # Creates new paragraph.
    # @param request operation request
    def post_add_new_paragraph_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.post_add_new_paragraph ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.post_add_new_paragraph"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.post_add_new_paragraph"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.post_add_new_paragraph"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?
      query_params[:'position'] = request.position unless request.position.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.dto)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Paragraph')
      return data, status_code, headers
    end
    # Creates new portion.
    # @param request operation request
    def post_add_new_portion(request)
      data, _status_code, _headers = post_add_new_portion_with_http_info(request)
      data
    end

    # Creates new portion.
    # @param request operation request
    def post_add_new_portion_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.post_add_new_portion ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.post_add_new_portion"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.post_add_new_portion"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.post_add_new_portion"
      end
      # verify the required parameter 'paragraph_index' is set
      if @api_client.config.client_side_validation && request.paragraph_index.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_index' when calling SlidesApi.post_add_new_portion"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'paragraphIndex', request.paragraph_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?
      query_params[:'position'] = request.position unless request.position.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.dto)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Portion')
      return data, status_code, headers
    end
    # Create new shape.
    # @param request operation request
    def post_add_new_shape(request)
      data, _status_code, _headers = post_add_new_shape_with_http_info(request)
      data
    end

    # Create new shape.
    # @param request operation request
    def post_add_new_shape_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.post_add_new_shape ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.post_add_new_shape"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.post_add_new_shape"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?
      query_params[:'shapeToClone'] = request.shape_to_clone unless request.shape_to_clone.nil?
      query_params[:'position'] = request.position unless request.position.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.dto)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'ShapeBase')
      return data, status_code, headers
    end
    # Create new shape (for smart art and group shapes).
    # @param request operation request
    def post_add_new_subshape(request)
      data, _status_code, _headers = post_add_new_subshape_with_http_info(request)
      data
    end

    # Create new shape (for smart art and group shapes).
    # @param request operation request
    def post_add_new_subshape_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.post_add_new_subshape ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.post_add_new_subshape"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.post_add_new_subshape"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{path}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', request.path)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?
      query_params[:'shapeToClone'] = request.shape_to_clone unless request.shape_to_clone.nil?
      query_params[:'position'] = request.position unless request.position.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.dto)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'ShapeBase')
      return data, status_code, headers
    end
    # Creates new paragraph (for smart art and group shapes).
    # @param request operation request
    def post_add_new_subshape_paragraph(request)
      data, _status_code, _headers = post_add_new_subshape_paragraph_with_http_info(request)
      data
    end

    # Creates new paragraph (for smart art and group shapes).
    # @param request operation request
    def post_add_new_subshape_paragraph_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.post_add_new_subshape_paragraph ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.post_add_new_subshape_paragraph"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.post_add_new_subshape_paragraph"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.post_add_new_subshape_paragraph"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', request.path)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?
      query_params[:'position'] = request.position unless request.position.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.dto)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Paragraph')
      return data, status_code, headers
    end
    # Creates new portion (for smart art and group shapes).
    # @param request operation request
    def post_add_new_subshape_portion(request)
      data, _status_code, _headers = post_add_new_subshape_portion_with_http_info(request)
      data
    end

    # Creates new portion (for smart art and group shapes).
    # @param request operation request
    def post_add_new_subshape_portion_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.post_add_new_subshape_portion ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.post_add_new_subshape_portion"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.post_add_new_subshape_portion"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.post_add_new_subshape_portion"
      end
      # verify the required parameter 'paragraph_index' is set
      if @api_client.config.client_side_validation && request.paragraph_index.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_index' when calling SlidesApi.post_add_new_subshape_portion"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', request.path)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'paragraphIndex', request.paragraph_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?
      query_params[:'position'] = request.position unless request.position.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.dto)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Portion')
      return data, status_code, headers
    end
    # Add new notes slide.
    # @param request operation request
    def post_add_notes_slide(request)
      data, _status_code, _headers = post_add_notes_slide_with_http_info(request)
      data
    end

    # Add new notes slide.
    # @param request operation request
    def post_add_notes_slide_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.post_add_notes_slide ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.post_add_notes_slide"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.post_add_notes_slide"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/notesSlide'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.dto)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'NotesSlide')
      return data, status_code, headers
    end
    # Add a new category to a chart.
    # @param request operation request
    def post_chart_category(request)
      data, _status_code, _headers = post_chart_category_with_http_info(request)
      data
    end

    # Add a new category to a chart.
    # @param request operation request
    def post_chart_category_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.post_chart_category ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.post_chart_category"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.post_chart_category"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.post_chart_category"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/categories'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.category)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Chart')
      return data, status_code, headers
    end
    # Add a new data point to a chart series.
    # @param request operation request
    def post_chart_data_point(request)
      data, _status_code, _headers = post_chart_data_point_with_http_info(request)
      data
    end

    # Add a new data point to a chart series.
    # @param request operation request
    def post_chart_data_point_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.post_chart_data_point ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.post_chart_data_point"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.post_chart_data_point"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.post_chart_data_point"
      end
      # verify the required parameter 'series_index' is set
      if @api_client.config.client_side_validation && request.series_index.nil?
        fail ArgumentError, "Missing the required parameter 'series_index' when calling SlidesApi.post_chart_data_point"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/series/{seriesIndex}/dataPoints'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'seriesIndex', request.series_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.data_point)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Chart')
      return data, status_code, headers
    end
    # Add a new series to a chart.
    # @param request operation request
    def post_chart_series(request)
      data, _status_code, _headers = post_chart_series_with_http_info(request)
      data
    end

    # Add a new series to a chart.
    # @param request operation request
    def post_chart_series_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.post_chart_series ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.post_chart_series"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.post_chart_series"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.post_chart_series"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/series'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.series)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Chart')
      return data, status_code, headers
    end
    # Copy layoutSlide from source presentation.
    # @param request operation request
    def post_copy_layout_slide_from_source_presentation(request)
      data, _status_code, _headers = post_copy_layout_slide_from_source_presentation_with_http_info(request)
      data
    end

    # Copy layoutSlide from source presentation.
    # @param request operation request
    def post_copy_layout_slide_from_source_presentation_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.post_copy_layout_slide_from_source_presentation ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.post_copy_layout_slide_from_source_presentation"
      end
      # verify the required parameter 'clone_from' is set
      if @api_client.config.client_side_validation && request.clone_from.nil?
        fail ArgumentError, "Missing the required parameter 'clone_from' when calling SlidesApi.post_copy_layout_slide_from_source_presentation"
      end
      # verify the required parameter 'clone_from_position' is set
      if @api_client.config.client_side_validation && request.clone_from_position.nil?
        fail ArgumentError, "Missing the required parameter 'clone_from_position' when calling SlidesApi.post_copy_layout_slide_from_source_presentation"
      end
      # resource path
      local_var_path = '/slides/{name}/layoutSlides'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)

      # query parameters
      query_params = {}
      query_params[:'cloneFrom'] = request.clone_from unless request.clone_from.nil?
      query_params[:'cloneFromPosition'] = request.clone_from_position unless request.clone_from_position.nil?
      query_params[:'cloneFromPassword'] = request.clone_from_password unless request.clone_from_password.nil?
      query_params[:'cloneFromStorage'] = request.clone_from_storage unless request.clone_from_storage.nil?
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'LayoutSlide')
      return data, status_code, headers
    end
    # Copy masterSlide from source presentation.
    # @param request operation request
    def post_copy_master_slide_from_source_presentation(request)
      data, _status_code, _headers = post_copy_master_slide_from_source_presentation_with_http_info(request)
      data
    end

    # Copy masterSlide from source presentation.
    # @param request operation request
    def post_copy_master_slide_from_source_presentation_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.post_copy_master_slide_from_source_presentation ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.post_copy_master_slide_from_source_presentation"
      end
      # verify the required parameter 'clone_from' is set
      if @api_client.config.client_side_validation && request.clone_from.nil?
        fail ArgumentError, "Missing the required parameter 'clone_from' when calling SlidesApi.post_copy_master_slide_from_source_presentation"
      end
      # verify the required parameter 'clone_from_position' is set
      if @api_client.config.client_side_validation && request.clone_from_position.nil?
        fail ArgumentError, "Missing the required parameter 'clone_from_position' when calling SlidesApi.post_copy_master_slide_from_source_presentation"
      end
      # resource path
      local_var_path = '/slides/{name}/masterSlides'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)

      # query parameters
      query_params = {}
      query_params[:'cloneFrom'] = request.clone_from unless request.clone_from.nil?
      query_params[:'cloneFromPosition'] = request.clone_from_position unless request.clone_from_position.nil?
      query_params[:'cloneFromPassword'] = request.clone_from_password unless request.clone_from_password.nil?
      query_params[:'cloneFromStorage'] = request.clone_from_storage unless request.clone_from_storage.nil?
      query_params[:'applyToAll'] = request.apply_to_all unless request.apply_to_all.nil?
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'MasterSlide')
      return data, status_code, headers
    end
    # Read notes slide info.
    # @param request operation request
    def post_get_notes_slide(request)
      data, _status_code, _headers = post_get_notes_slide_with_http_info(request)
      data
    end

    # Read notes slide info.
    # @param request operation request
    def post_get_notes_slide_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.post_get_notes_slide ...'
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.post_get_notes_slide"
      end
      # resource path
      local_var_path = '/slides/slides/{slideIndex}/notesSlide'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/octet-stream', 'multipart/form-data'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.document)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'NotesSlide')
      return data, status_code, headers
    end
    # Get info whether a notes slide exists.
    # @param request operation request
    def post_get_notes_slide_exists(request)
      data, _status_code, _headers = post_get_notes_slide_exists_with_http_info(request)
      data
    end

    # Get info whether a notes slide exists.
    # @param request operation request
    def post_get_notes_slide_exists_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.post_get_notes_slide_exists ...'
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.post_get_notes_slide_exists"
      end
      # resource path
      local_var_path = '/slides/slides/{slideIndex}/notesSlide/exist'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/octet-stream'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.document)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'EntityExists')
      return data, status_code, headers
    end
    # Convert notes slide to the specified image format.
    # @param request operation request
    def post_get_notes_slide_with_format(request)
      data, _status_code, _headers = post_get_notes_slide_with_format_with_http_info(request)
      data
    end

    # Convert notes slide to the specified image format.
    # @param request operation request
    def post_get_notes_slide_with_format_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.post_get_notes_slide_with_format ...'
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.post_get_notes_slide_with_format"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && request.format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling SlidesApi.post_get_notes_slide_with_format"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Jpeg', 'Png', 'Gif', 'Bmp', 'Tiff'].any?{ |s| s.casecmp(request.format)==0 }
        fail ArgumentError, "invalid value for 'format', must be one of Jpeg, Png, Gif, Bmp, Tiff"
      end
      # resource path
      local_var_path = '/slides/slides/{slideIndex}/notesSlide/{format}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'format', request.format)

      # query parameters
      query_params = {}
      query_params[:'width'] = request.width unless request.width.nil?
      query_params[:'height'] = request.height unless request.height.nil?
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'fontsFolder'] = request.fonts_folder unless request.fonts_folder.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/octet-stream', 'multipart/form-data'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.document)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'File')
      return data, status_code, headers
    end
    # Creates new paragraph.
    # @param request operation request
    def post_notes_slide_add_new_paragraph(request)
      data, _status_code, _headers = post_notes_slide_add_new_paragraph_with_http_info(request)
      data
    end

    # Creates new paragraph.
    # @param request operation request
    def post_notes_slide_add_new_paragraph_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.post_notes_slide_add_new_paragraph ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.post_notes_slide_add_new_paragraph"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.post_notes_slide_add_new_paragraph"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.post_notes_slide_add_new_paragraph"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?
      query_params[:'position'] = request.position unless request.position.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.dto)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Paragraph')
      return data, status_code, headers
    end
    # Creates new portion.
    # @param request operation request
    def post_notes_slide_add_new_portion(request)
      data, _status_code, _headers = post_notes_slide_add_new_portion_with_http_info(request)
      data
    end

    # Creates new portion.
    # @param request operation request
    def post_notes_slide_add_new_portion_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.post_notes_slide_add_new_portion ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.post_notes_slide_add_new_portion"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.post_notes_slide_add_new_portion"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.post_notes_slide_add_new_portion"
      end
      # verify the required parameter 'paragraph_index' is set
      if @api_client.config.client_side_validation && request.paragraph_index.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_index' when calling SlidesApi.post_notes_slide_add_new_portion"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'paragraphIndex', request.paragraph_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?
      query_params[:'position'] = request.position unless request.position.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.dto)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Portion')
      return data, status_code, headers
    end
    # Create new shape.
    # @param request operation request
    def post_notes_slide_add_new_shape(request)
      data, _status_code, _headers = post_notes_slide_add_new_shape_with_http_info(request)
      data
    end

    # Create new shape.
    # @param request operation request
    def post_notes_slide_add_new_shape_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.post_notes_slide_add_new_shape ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.post_notes_slide_add_new_shape"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.post_notes_slide_add_new_shape"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/notesSlide/shapes'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?
      query_params[:'shapeToClone'] = request.shape_to_clone unless request.shape_to_clone.nil?
      query_params[:'position'] = request.position unless request.position.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.dto)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'ShapeBase')
      return data, status_code, headers
    end
    # Render shape to specified picture format.
    # @param request operation request
    def post_notes_slide_shape_save_as(request)
      data, _status_code, _headers = post_notes_slide_shape_save_as_with_http_info(request)
      data
    end

    # Render shape to specified picture format.
    # @param request operation request
    def post_notes_slide_shape_save_as_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.post_notes_slide_shape_save_as ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.post_notes_slide_shape_save_as"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.post_notes_slide_shape_save_as"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.post_notes_slide_shape_save_as"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && request.format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling SlidesApi.post_notes_slide_shape_save_as"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Jpeg', 'Png', 'Gif', 'Bmp', 'Tiff', 'Svg'].any?{ |s| s.casecmp(request.format)==0 }
        fail ArgumentError, "invalid value for 'format', must be one of Jpeg, Png, Gif, Bmp, Tiff, Svg"
      end
      if @api_client.config.client_side_validation && request.bounds && !['Slide', 'Shape', 'Appearance'].any?{ |s| s.casecmp(request.bounds)==0 }
        fail ArgumentError, 'invalid value for "bounds", must be one of Slide, Shape, Appearance'
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/{format}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'format', request.format)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?
      query_params[:'scaleX'] = request.scale_x unless request.scale_x.nil?
      query_params[:'scaleY'] = request.scale_y unless request.scale_y.nil?
      query_params[:'bounds'] = request.bounds unless request.bounds.nil?
      query_params[:'fontsFolder'] = request.fonts_folder unless request.fonts_folder.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.options)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'File')
      return data, status_code, headers
    end
    # Merge the presentation with other presentations specified in the request parameter.
    # @param request operation request
    def post_presentation_merge(request)
      data, _status_code, _headers = post_presentation_merge_with_http_info(request)
      data
    end

    # Merge the presentation with other presentations specified in the request parameter.
    # @param request operation request
    def post_presentation_merge_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.post_presentation_merge ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.post_presentation_merge"
      end
      # resource path
      local_var_path = '/slides/{name}/merge'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.request)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Document')
      return data, status_code, headers
    end
    # Render shape to specified picture format.
    # @param request operation request
    def post_shape_save_as(request)
      data, _status_code, _headers = post_shape_save_as_with_http_info(request)
      data
    end

    # Render shape to specified picture format.
    # @param request operation request
    def post_shape_save_as_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.post_shape_save_as ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.post_shape_save_as"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.post_shape_save_as"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.post_shape_save_as"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && request.format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling SlidesApi.post_shape_save_as"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Jpeg', 'Png', 'Gif', 'Bmp', 'Tiff', 'Svg'].any?{ |s| s.casecmp(request.format)==0 }
        fail ArgumentError, "invalid value for 'format', must be one of Jpeg, Png, Gif, Bmp, Tiff, Svg"
      end
      if @api_client.config.client_side_validation && request.bounds && !['Slide', 'Shape', 'Appearance'].any?{ |s| s.casecmp(request.bounds)==0 }
        fail ArgumentError, 'invalid value for "bounds", must be one of Slide, Shape, Appearance'
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/{format}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'format', request.format)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?
      query_params[:'scaleX'] = request.scale_x unless request.scale_x.nil?
      query_params[:'scaleY'] = request.scale_y unless request.scale_y.nil?
      query_params[:'bounds'] = request.bounds unless request.bounds.nil?
      query_params[:'fontsFolder'] = request.fonts_folder unless request.fonts_folder.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.options)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'File')
      return data, status_code, headers
    end
    # Add an effect to slide animation.
    # @param request operation request
    def post_slide_animation_effect(request)
      data, _status_code, _headers = post_slide_animation_effect_with_http_info(request)
      data
    end

    # Add an effect to slide animation.
    # @param request operation request
    def post_slide_animation_effect_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.post_slide_animation_effect ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.post_slide_animation_effect"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.post_slide_animation_effect"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/animation/mainSequence'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.effect)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'SlideAnimation')
      return data, status_code, headers
    end
    # Set slide animation.
    # @param request operation request
    def post_slide_animation_interactive_sequence(request)
      data, _status_code, _headers = post_slide_animation_interactive_sequence_with_http_info(request)
      data
    end

    # Set slide animation.
    # @param request operation request
    def post_slide_animation_interactive_sequence_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.post_slide_animation_interactive_sequence ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.post_slide_animation_interactive_sequence"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.post_slide_animation_interactive_sequence"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/animation/interactiveSequences'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.sequence)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'SlideAnimation')
      return data, status_code, headers
    end
    # Add an animation effect to a slide interactive sequence.
    # @param request operation request
    def post_slide_animation_interactive_sequence_effect(request)
      data, _status_code, _headers = post_slide_animation_interactive_sequence_effect_with_http_info(request)
      data
    end

    # Add an animation effect to a slide interactive sequence.
    # @param request operation request
    def post_slide_animation_interactive_sequence_effect_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.post_slide_animation_interactive_sequence_effect ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.post_slide_animation_interactive_sequence_effect"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.post_slide_animation_interactive_sequence_effect"
      end
      # verify the required parameter 'sequence_index' is set
      if @api_client.config.client_side_validation && request.sequence_index.nil?
        fail ArgumentError, "Missing the required parameter 'sequence_index' when calling SlidesApi.post_slide_animation_interactive_sequence_effect"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/animation/interactiveSequences/{sequenceIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'sequenceIndex', request.sequence_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.effect)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'SlideAnimation')
      return data, status_code, headers
    end
    # Save a slide to a specified format.
    # @param request operation request
    def post_slide_save_as(request)
      data, _status_code, _headers = post_slide_save_as_with_http_info(request)
      data
    end

    # Save a slide to a specified format.
    # @param request operation request
    def post_slide_save_as_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.post_slide_save_as ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.post_slide_save_as"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.post_slide_save_as"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && request.format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling SlidesApi.post_slide_save_as"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Jpeg', 'Png', 'Gif', 'Bmp', 'Tiff', 'Html', 'Pdf', 'Xps', 'Pptx', 'Odp', 'Otp', 'Ppt', 'Pps', 'Ppsx', 'Pptm', 'Ppsm', 'Potx', 'Pot', 'Potm', 'Svg', 'Fodp'].any?{ |s| s.casecmp(request.format)==0 }
        fail ArgumentError, "invalid value for 'format', must be one of Jpeg, Png, Gif, Bmp, Tiff, Html, Pdf, Xps, Pptx, Odp, Otp, Ppt, Pps, Ppsx, Pptm, Ppsm, Potx, Pot, Potm, Svg, Fodp"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/{format}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'format', request.format)

      # query parameters
      query_params = {}
      query_params[:'width'] = request.width unless request.width.nil?
      query_params[:'height'] = request.height unless request.height.nil?
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?
      query_params[:'fontsFolder'] = request.fonts_folder unless request.fonts_folder.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.options)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'File')
      return data, status_code, headers
    end
    # Create a slide.
    # @param request operation request
    def post_slides_add(request)
      data, _status_code, _headers = post_slides_add_with_http_info(request)
      data
    end

    # Create a slide.
    # @param request operation request
    def post_slides_add_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.post_slides_add ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.post_slides_add"
      end
      # resource path
      local_var_path = '/slides/{name}/slides'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)

      # query parameters
      query_params = {}
      query_params[:'position'] = request.position unless request.position.nil?
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?
      query_params[:'layoutAlias'] = request.layout_alias unless request.layout_alias.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Slides')
      return data, status_code, headers
    end
    # Convert presentation from request content to format specified.
    # @param request operation request
    def post_slides_convert(request)
      data, _status_code, _headers = post_slides_convert_with_http_info(request)
      data
    end

    # Convert presentation from request content to format specified.
    # @param request operation request
    def post_slides_convert_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.post_slides_convert ...'
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && request.format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling SlidesApi.post_slides_convert"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Pdf', 'Xps', 'Tiff', 'Pptx', 'Odp', 'Otp', 'Ppt', 'Pps', 'Ppsx', 'Pptm', 'Ppsm', 'Pot', 'Potx', 'Potm', 'Html', 'Swf', 'Svg', 'Jpeg', 'Png', 'Gif', 'Bmp', 'Fodp'].any?{ |s| s.casecmp(request.format)==0 }
        fail ArgumentError, "invalid value for 'format', must be one of Pdf, Xps, Tiff, Pptx, Odp, Otp, Ppt, Pps, Ppsx, Pptm, Ppsm, Pot, Potx, Potm, Html, Swf, Svg, Jpeg, Png, Gif, Bmp, Fodp"
      end
      # resource path
      local_var_path = '/slides/convert/{format}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'format', request.format)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'fontsFolder'] = request.fonts_folder unless request.fonts_folder.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/octet-stream', 'multipart/form-data'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.document)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'File')
      return data, status_code, headers
    end
    # Copy a slide from the current or another presentation.
    # @param request operation request
    def post_slides_copy(request)
      data, _status_code, _headers = post_slides_copy_with_http_info(request)
      data
    end

    # Copy a slide from the current or another presentation.
    # @param request operation request
    def post_slides_copy_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.post_slides_copy ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.post_slides_copy"
      end
      # verify the required parameter 'slide_to_copy' is set
      if @api_client.config.client_side_validation && request.slide_to_copy.nil?
        fail ArgumentError, "Missing the required parameter 'slide_to_copy' when calling SlidesApi.post_slides_copy"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/copy'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)

      # query parameters
      query_params = {}
      query_params[:'slideToCopy'] = request.slide_to_copy unless request.slide_to_copy.nil?
      query_params[:'position'] = request.position unless request.position.nil?
      query_params[:'source'] = request.source unless request.source.nil?
      query_params[:'sourcePassword'] = request.source_password unless request.source_password.nil?
      query_params[:'sourceStorage'] = request.source_storage unless request.source_storage.nil?
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Slides')
      return data, status_code, headers
    end
    # Create a presentation.
    # @param request operation request
    def post_slides_document(request)
      data, _status_code, _headers = post_slides_document_with_http_info(request)
      data
    end

    # Create a presentation.
    # @param request operation request
    def post_slides_document_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.post_slides_document ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.post_slides_document"
      end
      # resource path
      local_var_path = '/slides/{name}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)

      # query parameters
      query_params = {}
      query_params[:'inputPassword'] = request.input_password unless request.input_password.nil?
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/octet-stream', 'multipart/form-data'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.data)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Document')
      return data, status_code, headers
    end
    # Create presentation document from html.
    # @param request operation request
    def post_slides_document_from_html(request)
      data, _status_code, _headers = post_slides_document_from_html_with_http_info(request)
      data
    end

    # Create presentation document from html.
    # @param request operation request
    def post_slides_document_from_html_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.post_slides_document_from_html ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.post_slides_document_from_html"
      end
      # resource path
      local_var_path = '/slides/{name}/fromHtml'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.html)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Document')
      return data, status_code, headers
    end
    # Create a presentation from an existing source.
    # @param request operation request
    def post_slides_document_from_source(request)
      data, _status_code, _headers = post_slides_document_from_source_with_http_info(request)
      data
    end

    # Create a presentation from an existing source.
    # @param request operation request
    def post_slides_document_from_source_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.post_slides_document_from_source ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.post_slides_document_from_source"
      end
      # resource path
      local_var_path = '/slides/{name}/fromSource'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)

      # query parameters
      query_params = {}
      query_params[:'sourcePath'] = request.source_path unless request.source_path.nil?
      query_params[:'sourcePassword'] = request.source_password unless request.source_password.nil?
      query_params[:'sourceStorage'] = request.source_storage unless request.source_storage.nil?
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Document')
      return data, status_code, headers
    end
    # Create a presentation.
    # @param request operation request
    def post_slides_document_from_template(request)
      data, _status_code, _headers = post_slides_document_from_template_with_http_info(request)
      data
    end

    # Create a presentation.
    # @param request operation request
    def post_slides_document_from_template_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.post_slides_document_from_template ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.post_slides_document_from_template"
      end
      # verify the required parameter 'template_path' is set
      if @api_client.config.client_side_validation && request.template_path.nil?
        fail ArgumentError, "Missing the required parameter 'template_path' when calling SlidesApi.post_slides_document_from_template"
      end
      # resource path
      local_var_path = '/slides/{name}/fromTemplate'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)

      # query parameters
      query_params = {}
      query_params[:'templatePath'] = request.template_path unless request.template_path.nil?
      query_params[:'templatePassword'] = request.template_password unless request.template_password.nil?
      query_params[:'templateStorage'] = request.template_storage unless request.template_storage.nil?
      query_params[:'isImageDataEmbedded'] = request.is_image_data_embedded unless request.is_image_data_embedded.nil?
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.data)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Document')
      return data, status_code, headers
    end
    # Performs slides pipeline.
    # @param request operation request
    def post_slides_pipeline(request)
      data, _status_code, _headers = post_slides_pipeline_with_http_info(request)
      data
    end

    # Performs slides pipeline.
    # @param request operation request
    def post_slides_pipeline_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.post_slides_pipeline ...'
      end
      # resource path
      local_var_path = '/slides/pipeline'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.pipeline)

      # form parameters

      post_files = nil
      post_files = request.files


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'File')
      return data, status_code, headers
    end
    # Replace text with a new value.
    # @param request operation request
    def post_slides_presentation_replace_text(request)
      data, _status_code, _headers = post_slides_presentation_replace_text_with_http_info(request)
      data
    end

    # Replace text with a new value.
    # @param request operation request
    def post_slides_presentation_replace_text_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.post_slides_presentation_replace_text ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.post_slides_presentation_replace_text"
      end
      # verify the required parameter 'old_value' is set
      if @api_client.config.client_side_validation && request.old_value.nil?
        fail ArgumentError, "Missing the required parameter 'old_value' when calling SlidesApi.post_slides_presentation_replace_text"
      end
      # verify the required parameter 'new_value' is set
      if @api_client.config.client_side_validation && request.new_value.nil?
        fail ArgumentError, "Missing the required parameter 'new_value' when calling SlidesApi.post_slides_presentation_replace_text"
      end
      # resource path
      local_var_path = '/slides/{name}/replaceText'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)

      # query parameters
      query_params = {}
      query_params[:'oldValue'] = request.old_value unless request.old_value.nil?
      query_params[:'newValue'] = request.new_value unless request.new_value.nil?
      query_params[:'ignoreCase'] = request.ignore_case unless request.ignore_case.nil?
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'DocumentReplaceResult')
      return data, status_code, headers
    end
    # Reorder presentation slide position.
    # @param request operation request
    def post_slides_reorder(request)
      data, _status_code, _headers = post_slides_reorder_with_http_info(request)
      data
    end

    # Reorder presentation slide position.
    # @param request operation request
    def post_slides_reorder_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.post_slides_reorder ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.post_slides_reorder"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.post_slides_reorder"
      end
      # verify the required parameter 'new_position' is set
      if @api_client.config.client_side_validation && request.new_position.nil?
        fail ArgumentError, "Missing the required parameter 'new_position' when calling SlidesApi.post_slides_reorder"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/move'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)

      # query parameters
      query_params = {}
      query_params[:'newPosition'] = request.new_position unless request.new_position.nil?
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Slides')
      return data, status_code, headers
    end
    # Reorder presentation slides positions.
    # @param request operation request
    def post_slides_reorder_many(request)
      data, _status_code, _headers = post_slides_reorder_many_with_http_info(request)
      data
    end

    # Reorder presentation slides positions.
    # @param request operation request
    def post_slides_reorder_many_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.post_slides_reorder_many ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.post_slides_reorder_many"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/reorder'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)

      # query parameters
      query_params = {}
      query_params[:'oldPositions'] = request.old_positions unless request.old_positions.nil?
      query_params[:'newPositions'] = request.new_positions unless request.new_positions.nil?
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Slides')
      return data, status_code, headers
    end
    # Save a presentation to a specified format.
    # @param request operation request
    def post_slides_save_as(request)
      data, _status_code, _headers = post_slides_save_as_with_http_info(request)
      data
    end

    # Save a presentation to a specified format.
    # @param request operation request
    def post_slides_save_as_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.post_slides_save_as ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.post_slides_save_as"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && request.format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling SlidesApi.post_slides_save_as"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Pdf', 'Xps', 'Tiff', 'Pptx', 'Odp', 'Otp', 'Ppt', 'Pps', 'Ppsx', 'Pptm', 'Ppsm', 'Pot', 'Potx', 'Potm', 'Html', 'Swf', 'Svg', 'Jpeg', 'Png', 'Gif', 'Bmp', 'Fodp'].any?{ |s| s.casecmp(request.format)==0 }
        fail ArgumentError, "invalid value for 'format', must be one of Pdf, Xps, Tiff, Pptx, Odp, Otp, Ppt, Pps, Ppsx, Pptm, Ppsm, Pot, Potx, Potm, Html, Swf, Svg, Jpeg, Png, Gif, Bmp, Fodp"
      end
      # resource path
      local_var_path = '/slides/{name}/{format}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'format', request.format)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'fontsFolder'] = request.fonts_folder unless request.fonts_folder.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.options)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'File')
      return data, status_code, headers
    end
    # Set document properties.
    # @param request operation request
    def post_slides_set_document_properties(request)
      data, _status_code, _headers = post_slides_set_document_properties_with_http_info(request)
      data
    end

    # Set document properties.
    # @param request operation request
    def post_slides_set_document_properties_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.post_slides_set_document_properties ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.post_slides_set_document_properties"
      end
      # resource path
      local_var_path = '/slides/{name}/documentproperties'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.properties)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'DocumentProperties')
      return data, status_code, headers
    end
    # Replace text with a new value.
    # @param request operation request
    def post_slides_slide_replace_text(request)
      data, _status_code, _headers = post_slides_slide_replace_text_with_http_info(request)
      data
    end

    # Replace text with a new value.
    # @param request operation request
    def post_slides_slide_replace_text_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.post_slides_slide_replace_text ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.post_slides_slide_replace_text"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.post_slides_slide_replace_text"
      end
      # verify the required parameter 'old_value' is set
      if @api_client.config.client_side_validation && request.old_value.nil?
        fail ArgumentError, "Missing the required parameter 'old_value' when calling SlidesApi.post_slides_slide_replace_text"
      end
      # verify the required parameter 'new_value' is set
      if @api_client.config.client_side_validation && request.new_value.nil?
        fail ArgumentError, "Missing the required parameter 'new_value' when calling SlidesApi.post_slides_slide_replace_text"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/replaceText'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)

      # query parameters
      query_params = {}
      query_params[:'oldValue'] = request.old_value unless request.old_value.nil?
      query_params[:'newValue'] = request.new_value unless request.new_value.nil?
      query_params[:'ignoreCase'] = request.ignore_case unless request.ignore_case.nil?
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'SlideReplaceResult')
      return data, status_code, headers
    end
    # Splitting presentations. Create one image per slide.
    # @param request operation request
    def post_slides_split(request)
      data, _status_code, _headers = post_slides_split_with_http_info(request)
      data
    end

    # Splitting presentations. Create one image per slide.
    # @param request operation request
    def post_slides_split_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.post_slides_split ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.post_slides_split"
      end
      if @api_client.config.client_side_validation && request.format && !['Jpeg', 'Png', 'Gif', 'Bmp', 'Tiff', 'Html', 'Pdf', 'Xps', 'Pptx', 'Odp', 'Otp', 'Ppt', 'Pps', 'Ppsx', 'Pptm', 'Ppsm', 'Potx', 'Pot', 'Potm', 'Svg', 'Fodp'].any?{ |s| s.casecmp(request.format)==0 }
        fail ArgumentError, 'invalid value for "format", must be one of Jpeg, Png, Gif, Bmp, Tiff, Html, Pdf, Xps, Pptx, Odp, Otp, Ppt, Pps, Ppsx, Pptm, Ppsm, Potx, Pot, Potm, Svg, Fodp'
      end
      # resource path
      local_var_path = '/slides/{name}/split'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)

      # query parameters
      query_params = {}
      query_params[:'format'] = request.format unless request.format.nil?
      query_params[:'width'] = request.width unless request.width.nil?
      query_params[:'height'] = request.height unless request.height.nil?
      query_params[:'to'] = request.to unless request.to.nil?
      query_params[:'from'] = request.from unless request.from.nil?
      query_params[:'destFolder'] = request.dest_folder unless request.dest_folder.nil?
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'fontsFolder'] = request.fonts_folder unless request.fonts_folder.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.options)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'SplitDocumentResult')
      return data, status_code, headers
    end
    # Render shape to specified picture format (for smart art and group shapes).
    # @param request operation request
    def post_subshape_save_as(request)
      data, _status_code, _headers = post_subshape_save_as_with_http_info(request)
      data
    end

    # Render shape to specified picture format (for smart art and group shapes).
    # @param request operation request
    def post_subshape_save_as_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.post_subshape_save_as ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.post_subshape_save_as"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.post_subshape_save_as"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.post_subshape_save_as"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && request.format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling SlidesApi.post_subshape_save_as"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Jpeg', 'Png', 'Gif', 'Bmp', 'Tiff', 'Svg'].any?{ |s| s.casecmp(request.format)==0 }
        fail ArgumentError, "invalid value for 'format', must be one of Jpeg, Png, Gif, Bmp, Tiff, Svg"
      end
      if @api_client.config.client_side_validation && request.bounds && !['Slide', 'Shape', 'Appearance'].any?{ |s| s.casecmp(request.bounds)==0 }
        fail ArgumentError, 'invalid value for "bounds", must be one of Slide, Shape, Appearance'
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/{format}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', request.path)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'format', request.format)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?
      query_params[:'scaleX'] = request.scale_x unless request.scale_x.nil?
      query_params[:'scaleY'] = request.scale_y unless request.scale_y.nil?
      query_params[:'bounds'] = request.bounds unless request.bounds.nil?
      query_params[:'fontsFolder'] = request.fonts_folder unless request.fonts_folder.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.options)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'File')
      return data, status_code, headers
    end
    # Update a chart category.
    # @param request operation request
    def put_chart_category(request)
      data, _status_code, _headers = put_chart_category_with_http_info(request)
      data
    end

    # Update a chart category.
    # @param request operation request
    def put_chart_category_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.put_chart_category ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.put_chart_category"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.put_chart_category"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.put_chart_category"
      end
      # verify the required parameter 'category_index' is set
      if @api_client.config.client_side_validation && request.category_index.nil?
        fail ArgumentError, "Missing the required parameter 'category_index' when calling SlidesApi.put_chart_category"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/categories/{categoryIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'categoryIndex', request.category_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.category)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Chart')
      return data, status_code, headers
    end
    # Update a data point in a chart series.
    # @param request operation request
    def put_chart_data_point(request)
      data, _status_code, _headers = put_chart_data_point_with_http_info(request)
      data
    end

    # Update a data point in a chart series.
    # @param request operation request
    def put_chart_data_point_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.put_chart_data_point ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.put_chart_data_point"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.put_chart_data_point"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.put_chart_data_point"
      end
      # verify the required parameter 'series_index' is set
      if @api_client.config.client_side_validation && request.series_index.nil?
        fail ArgumentError, "Missing the required parameter 'series_index' when calling SlidesApi.put_chart_data_point"
      end
      # verify the required parameter 'point_index' is set
      if @api_client.config.client_side_validation && request.point_index.nil?
        fail ArgumentError, "Missing the required parameter 'point_index' when calling SlidesApi.put_chart_data_point"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/series/{seriesIndex}/dataPoints/{pointIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'seriesIndex', request.series_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'pointIndex', request.point_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.data_point)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Chart')
      return data, status_code, headers
    end
    # Update a series in a chart.
    # @param request operation request
    def put_chart_series(request)
      data, _status_code, _headers = put_chart_series_with_http_info(request)
      data
    end

    # Update a series in a chart.
    # @param request operation request
    def put_chart_series_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.put_chart_series ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.put_chart_series"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.put_chart_series"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.put_chart_series"
      end
      # verify the required parameter 'series_index' is set
      if @api_client.config.client_side_validation && request.series_index.nil?
        fail ArgumentError, "Missing the required parameter 'series_index' when calling SlidesApi.put_chart_series"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/series/{seriesIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'seriesIndex', request.series_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.series)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Chart')
      return data, status_code, headers
    end
    # Update a layoutSlide.
    # @param request operation request
    def put_layout_slide(request)
      data, _status_code, _headers = put_layout_slide_with_http_info(request)
      data
    end

    # Update a layoutSlide.
    # @param request operation request
    def put_layout_slide_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.put_layout_slide ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.put_layout_slide"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.put_layout_slide"
      end
      # resource path
      local_var_path = '/slides/{name}/layoutSlides/{slideIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.slide_dto)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'LayoutSlide')
      return data, status_code, headers
    end
    # Render shape to specified picture format.
    # @param request operation request
    def put_notes_slide_shape_save_as(request)
      put_notes_slide_shape_save_as_with_http_info(request)
      nil
    end

    # Render shape to specified picture format.
    # @param request operation request
    def put_notes_slide_shape_save_as_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.put_notes_slide_shape_save_as ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.put_notes_slide_shape_save_as"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.put_notes_slide_shape_save_as"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.put_notes_slide_shape_save_as"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && request.format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling SlidesApi.put_notes_slide_shape_save_as"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Jpeg', 'Png', 'Gif', 'Bmp', 'Tiff', 'Svg'].any?{ |s| s.casecmp(request.format)==0 }
        fail ArgumentError, "invalid value for 'format', must be one of Jpeg, Png, Gif, Bmp, Tiff, Svg"
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && request.out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling SlidesApi.put_notes_slide_shape_save_as"
      end
      if @api_client.config.client_side_validation && request.bounds && !['Slide', 'Shape', 'Appearance'].any?{ |s| s.casecmp(request.bounds)==0 }
        fail ArgumentError, 'invalid value for "bounds", must be one of Slide, Shape, Appearance'
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/{format}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'format', request.format)

      # query parameters
      query_params = {}
      query_params[:'outPath'] = request.out_path unless request.out_path.nil?
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?
      query_params[:'scaleX'] = request.scale_x unless request.scale_x.nil?
      query_params[:'scaleY'] = request.scale_y unless request.scale_y.nil?
      query_params[:'bounds'] = request.bounds unless request.bounds.nil?
      query_params[:'fontsFolder'] = request.fonts_folder unless request.fonts_folder.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.options)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names)
      return data, status_code, headers
    end
    # Merge the presentation with other presentations or some of their slides specified in the request parameter.
    # @param request operation request
    def put_presentation_merge(request)
      data, _status_code, _headers = put_presentation_merge_with_http_info(request)
      data
    end

    # Merge the presentation with other presentations or some of their slides specified in the request parameter.
    # @param request operation request
    def put_presentation_merge_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.put_presentation_merge ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.put_presentation_merge"
      end
      # resource path
      local_var_path = '/slides/{name}/merge'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.request)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Document')
      return data, status_code, headers
    end
    # Update portion properties.
    # @param request operation request
    def put_set_paragraph_portion_properties(request)
      data, _status_code, _headers = put_set_paragraph_portion_properties_with_http_info(request)
      data
    end

    # Update portion properties.
    # @param request operation request
    def put_set_paragraph_portion_properties_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.put_set_paragraph_portion_properties ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.put_set_paragraph_portion_properties"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.put_set_paragraph_portion_properties"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.put_set_paragraph_portion_properties"
      end
      # verify the required parameter 'paragraph_index' is set
      if @api_client.config.client_side_validation && request.paragraph_index.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_index' when calling SlidesApi.put_set_paragraph_portion_properties"
      end
      # verify the required parameter 'portion_index' is set
      if @api_client.config.client_side_validation && request.portion_index.nil?
        fail ArgumentError, "Missing the required parameter 'portion_index' when calling SlidesApi.put_set_paragraph_portion_properties"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'paragraphIndex', request.paragraph_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'portionIndex', request.portion_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.dto)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Portion')
      return data, status_code, headers
    end
    # Update paragraph properties.
    # @param request operation request
    def put_set_paragraph_properties(request)
      data, _status_code, _headers = put_set_paragraph_properties_with_http_info(request)
      data
    end

    # Update paragraph properties.
    # @param request operation request
    def put_set_paragraph_properties_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.put_set_paragraph_properties ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.put_set_paragraph_properties"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.put_set_paragraph_properties"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.put_set_paragraph_properties"
      end
      # verify the required parameter 'paragraph_index' is set
      if @api_client.config.client_side_validation && request.paragraph_index.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_index' when calling SlidesApi.put_set_paragraph_properties"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'paragraphIndex', request.paragraph_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.dto)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Paragraph')
      return data, status_code, headers
    end
    # Update portion properties (for smart art and group shapes).
    # @param request operation request
    def put_set_subshape_paragraph_portion_properties(request)
      data, _status_code, _headers = put_set_subshape_paragraph_portion_properties_with_http_info(request)
      data
    end

    # Update portion properties (for smart art and group shapes).
    # @param request operation request
    def put_set_subshape_paragraph_portion_properties_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.put_set_subshape_paragraph_portion_properties ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.put_set_subshape_paragraph_portion_properties"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.put_set_subshape_paragraph_portion_properties"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.put_set_subshape_paragraph_portion_properties"
      end
      # verify the required parameter 'paragraph_index' is set
      if @api_client.config.client_side_validation && request.paragraph_index.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_index' when calling SlidesApi.put_set_subshape_paragraph_portion_properties"
      end
      # verify the required parameter 'portion_index' is set
      if @api_client.config.client_side_validation && request.portion_index.nil?
        fail ArgumentError, "Missing the required parameter 'portion_index' when calling SlidesApi.put_set_subshape_paragraph_portion_properties"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', request.path)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'paragraphIndex', request.paragraph_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'portionIndex', request.portion_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.dto)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Portion')
      return data, status_code, headers
    end
    # Update paragraph properties (for smart art and group shapes).
    # @param request operation request
    def put_set_subshape_paragraph_properties(request)
      data, _status_code, _headers = put_set_subshape_paragraph_properties_with_http_info(request)
      data
    end

    # Update paragraph properties (for smart art and group shapes).
    # @param request operation request
    def put_set_subshape_paragraph_properties_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.put_set_subshape_paragraph_properties ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.put_set_subshape_paragraph_properties"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.put_set_subshape_paragraph_properties"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.put_set_subshape_paragraph_properties"
      end
      # verify the required parameter 'paragraph_index' is set
      if @api_client.config.client_side_validation && request.paragraph_index.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_index' when calling SlidesApi.put_set_subshape_paragraph_properties"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', request.path)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'paragraphIndex', request.paragraph_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.dto)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Paragraph')
      return data, status_code, headers
    end
    # Render shape to specified picture format.
    # @param request operation request
    def put_shape_save_as(request)
      put_shape_save_as_with_http_info(request)
      nil
    end

    # Render shape to specified picture format.
    # @param request operation request
    def put_shape_save_as_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.put_shape_save_as ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.put_shape_save_as"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.put_shape_save_as"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.put_shape_save_as"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && request.format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling SlidesApi.put_shape_save_as"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Jpeg', 'Png', 'Gif', 'Bmp', 'Tiff', 'Svg'].any?{ |s| s.casecmp(request.format)==0 }
        fail ArgumentError, "invalid value for 'format', must be one of Jpeg, Png, Gif, Bmp, Tiff, Svg"
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && request.out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling SlidesApi.put_shape_save_as"
      end
      if @api_client.config.client_side_validation && request.bounds && !['Slide', 'Shape', 'Appearance'].any?{ |s| s.casecmp(request.bounds)==0 }
        fail ArgumentError, 'invalid value for "bounds", must be one of Slide, Shape, Appearance'
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/{format}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'format', request.format)

      # query parameters
      query_params = {}
      query_params[:'outPath'] = request.out_path unless request.out_path.nil?
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?
      query_params[:'scaleX'] = request.scale_x unless request.scale_x.nil?
      query_params[:'scaleY'] = request.scale_y unless request.scale_y.nil?
      query_params[:'bounds'] = request.bounds unless request.bounds.nil?
      query_params[:'fontsFolder'] = request.fonts_folder unless request.fonts_folder.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.options)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names)
      return data, status_code, headers
    end
    # Set slide animation.
    # @param request operation request
    def put_slide_animation(request)
      data, _status_code, _headers = put_slide_animation_with_http_info(request)
      data
    end

    # Set slide animation.
    # @param request operation request
    def put_slide_animation_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.put_slide_animation ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.put_slide_animation"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.put_slide_animation"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/animation'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.animation)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'SlideAnimation')
      return data, status_code, headers
    end
    # Modify an animation effect for a slide.
    # @param request operation request
    def put_slide_animation_effect(request)
      data, _status_code, _headers = put_slide_animation_effect_with_http_info(request)
      data
    end

    # Modify an animation effect for a slide.
    # @param request operation request
    def put_slide_animation_effect_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.put_slide_animation_effect ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.put_slide_animation_effect"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.put_slide_animation_effect"
      end
      # verify the required parameter 'effect_index' is set
      if @api_client.config.client_side_validation && request.effect_index.nil?
        fail ArgumentError, "Missing the required parameter 'effect_index' when calling SlidesApi.put_slide_animation_effect"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/animation/mainSequence/{effectIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'effectIndex', request.effect_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.effect)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'SlideAnimation')
      return data, status_code, headers
    end
    # Modify an animation effect for a slide interactive sequence.
    # @param request operation request
    def put_slide_animation_interactive_sequence_effect(request)
      data, _status_code, _headers = put_slide_animation_interactive_sequence_effect_with_http_info(request)
      data
    end

    # Modify an animation effect for a slide interactive sequence.
    # @param request operation request
    def put_slide_animation_interactive_sequence_effect_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.put_slide_animation_interactive_sequence_effect ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.put_slide_animation_interactive_sequence_effect"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.put_slide_animation_interactive_sequence_effect"
      end
      # verify the required parameter 'sequence_index' is set
      if @api_client.config.client_side_validation && request.sequence_index.nil?
        fail ArgumentError, "Missing the required parameter 'sequence_index' when calling SlidesApi.put_slide_animation_interactive_sequence_effect"
      end
      # verify the required parameter 'effect_index' is set
      if @api_client.config.client_side_validation && request.effect_index.nil?
        fail ArgumentError, "Missing the required parameter 'effect_index' when calling SlidesApi.put_slide_animation_interactive_sequence_effect"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/animation/interactiveSequences/{sequenceIndex}/{effectIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'sequenceIndex', request.sequence_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'effectIndex', request.effect_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.effect)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'SlideAnimation')
      return data, status_code, headers
    end
    # Save a slide to a specified format.
    # @param request operation request
    def put_slide_save_as(request)
      put_slide_save_as_with_http_info(request)
      nil
    end

    # Save a slide to a specified format.
    # @param request operation request
    def put_slide_save_as_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.put_slide_save_as ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.put_slide_save_as"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.put_slide_save_as"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && request.format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling SlidesApi.put_slide_save_as"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Jpeg', 'Png', 'Gif', 'Bmp', 'Tiff', 'Html', 'Pdf', 'Xps', 'Pptx', 'Odp', 'Otp', 'Ppt', 'Pps', 'Ppsx', 'Pptm', 'Ppsm', 'Potx', 'Pot', 'Potm', 'Svg', 'Fodp'].any?{ |s| s.casecmp(request.format)==0 }
        fail ArgumentError, "invalid value for 'format', must be one of Jpeg, Png, Gif, Bmp, Tiff, Html, Pdf, Xps, Pptx, Odp, Otp, Ppt, Pps, Ppsx, Pptm, Ppsm, Potx, Pot, Potm, Svg, Fodp"
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && request.out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling SlidesApi.put_slide_save_as"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/{format}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'format', request.format)

      # query parameters
      query_params = {}
      query_params[:'outPath'] = request.out_path unless request.out_path.nil?
      query_params[:'width'] = request.width unless request.width.nil?
      query_params[:'height'] = request.height unless request.height.nil?
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?
      query_params[:'fontsFolder'] = request.fonts_folder unless request.fonts_folder.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.options)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names)
      return data, status_code, headers
    end
    # Update shape properties.
    # @param request operation request
    def put_slide_shape_info(request)
      data, _status_code, _headers = put_slide_shape_info_with_http_info(request)
      data
    end

    # Update shape properties.
    # @param request operation request
    def put_slide_shape_info_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.put_slide_shape_info ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.put_slide_shape_info"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.put_slide_shape_info"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.put_slide_shape_info"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.dto)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'ShapeBase')
      return data, status_code, headers
    end
    # Update shape properties (for smart art and group shapes).
    # @param request operation request
    def put_slide_subshape_info(request)
      data, _status_code, _headers = put_slide_subshape_info_with_http_info(request)
      data
    end

    # Update shape properties (for smart art and group shapes).
    # @param request operation request
    def put_slide_subshape_info_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.put_slide_subshape_info ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.put_slide_subshape_info"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.put_slide_subshape_info"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.put_slide_subshape_info"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', request.path)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.dto)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'ShapeBase')
      return data, status_code, headers
    end
    # Convert presentation from request content to format specified.
    # @param request operation request
    def put_slides_convert(request)
      put_slides_convert_with_http_info(request)
      nil
    end

    # Convert presentation from request content to format specified.
    # @param request operation request
    def put_slides_convert_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.put_slides_convert ...'
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && request.format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling SlidesApi.put_slides_convert"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Pdf', 'Xps', 'Tiff', 'Pptx', 'Odp', 'Otp', 'Ppt', 'Pps', 'Ppsx', 'Pptm', 'Ppsm', 'Pot', 'Potx', 'Potm', 'Html', 'Swf', 'Svg', 'Jpeg', 'Png', 'Gif', 'Bmp', 'Fodp'].any?{ |s| s.casecmp(request.format)==0 }
        fail ArgumentError, "invalid value for 'format', must be one of Pdf, Xps, Tiff, Pptx, Odp, Otp, Ppt, Pps, Ppsx, Pptm, Ppsm, Pot, Potx, Potm, Html, Swf, Svg, Jpeg, Png, Gif, Bmp, Fodp"
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && request.out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling SlidesApi.put_slides_convert"
      end
      # resource path
      local_var_path = '/slides/convert/{format}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'format', request.format)

      # query parameters
      query_params = {}
      query_params[:'outPath'] = request.out_path unless request.out_path.nil?
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'fontsFolder'] = request.fonts_folder unless request.fonts_folder.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/octet-stream', 'multipart/form-data'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.document)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names)
      return data, status_code, headers
    end
    # Update presentation document from html.
    # @param request operation request
    def put_slides_document_from_html(request)
      data, _status_code, _headers = put_slides_document_from_html_with_http_info(request)
      data
    end

    # Update presentation document from html.
    # @param request operation request
    def put_slides_document_from_html_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.put_slides_document_from_html ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.put_slides_document_from_html"
      end
      # resource path
      local_var_path = '/slides/{name}/fromHtml'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.html)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Document')
      return data, status_code, headers
    end
    # Save a presentation to a specified format.
    # @param request operation request
    def put_slides_save_as(request)
      put_slides_save_as_with_http_info(request)
      nil
    end

    # Save a presentation to a specified format.
    # @param request operation request
    def put_slides_save_as_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.put_slides_save_as ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.put_slides_save_as"
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && request.out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling SlidesApi.put_slides_save_as"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && request.format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling SlidesApi.put_slides_save_as"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Pdf', 'Xps', 'Tiff', 'Pptx', 'Odp', 'Otp', 'Ppt', 'Pps', 'Ppsx', 'Pptm', 'Ppsm', 'Pot', 'Potx', 'Potm', 'Html', 'Swf', 'Svg', 'Jpeg', 'Png', 'Gif', 'Bmp', 'Fodp'].any?{ |s| s.casecmp(request.format)==0 }
        fail ArgumentError, "invalid value for 'format', must be one of Pdf, Xps, Tiff, Pptx, Odp, Otp, Ppt, Pps, Ppsx, Pptm, Ppsm, Pot, Potx, Potm, Html, Swf, Svg, Jpeg, Png, Gif, Bmp, Fodp"
      end
      # resource path
      local_var_path = '/slides/{name}/{format}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'format', request.format)

      # query parameters
      query_params = {}
      query_params[:'outPath'] = request.out_path unless request.out_path.nil?
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'fontsFolder'] = request.fonts_folder unless request.fonts_folder.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.options)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names)
      return data, status_code, headers
    end
    # Set document property.
    # @param request operation request
    def put_slides_set_document_property(request)
      data, _status_code, _headers = put_slides_set_document_property_with_http_info(request)
      data
    end

    # Set document property.
    # @param request operation request
    def put_slides_set_document_property_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.put_slides_set_document_property ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.put_slides_set_document_property"
      end
      # verify the required parameter 'property_name' is set
      if @api_client.config.client_side_validation && request.property_name.nil?
        fail ArgumentError, "Missing the required parameter 'property_name' when calling SlidesApi.put_slides_set_document_property"
      end
      # resource path
      local_var_path = '/slides/{name}/documentproperties/{propertyName}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'propertyName', request.property_name)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.property)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'DocumentProperty')
      return data, status_code, headers
    end
    # Update a slide.
    # @param request operation request
    def put_slides_slide(request)
      data, _status_code, _headers = put_slides_slide_with_http_info(request)
      data
    end

    # Update a slide.
    # @param request operation request
    def put_slides_slide_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.put_slides_slide ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.put_slides_slide"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.put_slides_slide"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.slide_dto)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Slide')
      return data, status_code, headers
    end
    # Set background for a slide.
    # @param request operation request
    def put_slides_slide_background(request)
      data, _status_code, _headers = put_slides_slide_background_with_http_info(request)
      data
    end

    # Set background for a slide.
    # @param request operation request
    def put_slides_slide_background_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.put_slides_slide_background ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.put_slides_slide_background"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.put_slides_slide_background"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/background'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.background)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'SlideBackground')
      return data, status_code, headers
    end
    # Set background color for a slide.
    # @param request operation request
    def put_slides_slide_background_color(request)
      data, _status_code, _headers = put_slides_slide_background_color_with_http_info(request)
      data
    end

    # Set background color for a slide.
    # @param request operation request
    def put_slides_slide_background_color_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.put_slides_slide_background_color ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.put_slides_slide_background_color"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.put_slides_slide_background_color"
      end
      # verify the required parameter 'color' is set
      if @api_client.config.client_side_validation && request.color.nil?
        fail ArgumentError, "Missing the required parameter 'color' when calling SlidesApi.put_slides_slide_background_color"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/backgroundColor'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)

      # query parameters
      query_params = {}
      query_params[:'color'] = request.color unless request.color.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'SlideBackground')
      return data, status_code, headers
    end
    # Set slide size for a presentation.
    # @param request operation request
    def put_slides_slide_size(request)
      data, _status_code, _headers = put_slides_slide_size_with_http_info(request)
      data
    end

    # Set slide size for a presentation.
    # @param request operation request
    def put_slides_slide_size_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.put_slides_slide_size ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.put_slides_slide_size"
      end
      if @api_client.config.client_side_validation && request.size_type && !['OnScreen', 'LetterPaper', 'A4Paper', 'Slide35mm', 'Overhead', 'Banner', 'Custom', 'Ledger', 'A3Paper', 'B4IsoPaper', 'B5IsoPaper', 'B4JisPaper', 'B5JisPaper', 'HagakiCard', 'OnScreen16x9', 'OnScreen16x10', 'Widescreen'].any?{ |s| s.casecmp(request.size_type)==0 }
        fail ArgumentError, 'invalid value for "size_type", must be one of OnScreen, LetterPaper, A4Paper, Slide35mm, Overhead, Banner, Custom, Ledger, A3Paper, B4IsoPaper, B5IsoPaper, B4JisPaper, B5JisPaper, HagakiCard, OnScreen16x9, OnScreen16x10, Widescreen'
      end
      if @api_client.config.client_side_validation && request.scale_type && !['DoNotScale', 'EnsureFit', 'Maximize'].any?{ |s| s.casecmp(request.scale_type)==0 }
        fail ArgumentError, 'invalid value for "scale_type", must be one of DoNotScale, EnsureFit, Maximize'
      end
      # resource path
      local_var_path = '/slides/{name}/slideSize'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'width'] = request.width unless request.width.nil?
      query_params[:'height'] = request.height unless request.height.nil?
      query_params[:'sizeType'] = request.size_type unless request.size_type.nil?
      query_params[:'scaleType'] = request.scale_type unless request.scale_type.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = nil

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Document')
      return data, status_code, headers
    end
    # Update presentation document properties.
    # @param request operation request
    def put_slides_view_properties(request)
      data, _status_code, _headers = put_slides_view_properties_with_http_info(request)
      data
    end

    # Update presentation document properties.
    # @param request operation request
    def put_slides_view_properties_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.put_slides_view_properties ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.put_slides_view_properties"
      end
      # resource path
      local_var_path = '/slides/{name}/viewProperties'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.dto)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'ViewProperties')
      return data, status_code, headers
    end
    # Render shape to specified picture format.
    # @param request operation request
    def put_subshape_save_as(request)
      put_subshape_save_as_with_http_info(request)
      nil
    end

    # Render shape to specified picture format.
    # @param request operation request
    def put_subshape_save_as_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.put_subshape_save_as ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.put_subshape_save_as"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.put_subshape_save_as"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.put_subshape_save_as"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && request.format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling SlidesApi.put_subshape_save_as"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Jpeg', 'Png', 'Gif', 'Bmp', 'Tiff', 'Svg'].any?{ |s| s.casecmp(request.format)==0 }
        fail ArgumentError, "invalid value for 'format', must be one of Jpeg, Png, Gif, Bmp, Tiff, Svg"
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && request.out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling SlidesApi.put_subshape_save_as"
      end
      if @api_client.config.client_side_validation && request.bounds && !['Slide', 'Shape', 'Appearance'].any?{ |s| s.casecmp(request.bounds)==0 }
        fail ArgumentError, 'invalid value for "bounds", must be one of Slide, Shape, Appearance'
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/{format}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', request.path)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'format', request.format)

      # query parameters
      query_params = {}
      query_params[:'outPath'] = request.out_path unless request.out_path.nil?
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?
      query_params[:'scaleX'] = request.scale_x unless request.scale_x.nil?
      query_params[:'scaleY'] = request.scale_y unless request.scale_y.nil?
      query_params[:'bounds'] = request.bounds unless request.bounds.nil?
      query_params[:'fontsFolder'] = request.fonts_folder unless request.fonts_folder.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.options)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names)
      return data, status_code, headers
    end
    # Update notes slide properties.
    # @param request operation request
    def put_update_notes_slide(request)
      data, _status_code, _headers = put_update_notes_slide_with_http_info(request)
      data
    end

    # Update notes slide properties.
    # @param request operation request
    def put_update_notes_slide_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.put_update_notes_slide ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.put_update_notes_slide"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.put_update_notes_slide"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/notesSlide'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.dto)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'NotesSlide')
      return data, status_code, headers
    end
    # Update shape properties.
    # @param request operation request
    def put_update_notes_slide_shape(request)
      data, _status_code, _headers = put_update_notes_slide_shape_with_http_info(request)
      data
    end

    # Update shape properties.
    # @param request operation request
    def put_update_notes_slide_shape_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.put_update_notes_slide_shape ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.put_update_notes_slide_shape"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.put_update_notes_slide_shape"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.put_update_notes_slide_shape"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.dto)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'ShapeBase')
      return data, status_code, headers
    end
    # Update paragraph properties.
    # @param request operation request
    def put_update_notes_slide_shape_paragraph(request)
      data, _status_code, _headers = put_update_notes_slide_shape_paragraph_with_http_info(request)
      data
    end

    # Update paragraph properties.
    # @param request operation request
    def put_update_notes_slide_shape_paragraph_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.put_update_notes_slide_shape_paragraph ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.put_update_notes_slide_shape_paragraph"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.put_update_notes_slide_shape_paragraph"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.put_update_notes_slide_shape_paragraph"
      end
      # verify the required parameter 'paragraph_index' is set
      if @api_client.config.client_side_validation && request.paragraph_index.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_index' when calling SlidesApi.put_update_notes_slide_shape_paragraph"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs/{paragraphIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'paragraphIndex', request.paragraph_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.dto)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Paragraph')
      return data, status_code, headers
    end
    # Update portion properties.
    # @param request operation request
    def put_update_notes_slide_shape_portion(request)
      data, _status_code, _headers = put_update_notes_slide_shape_portion_with_http_info(request)
      data
    end

    # Update portion properties.
    # @param request operation request
    def put_update_notes_slide_shape_portion_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.put_update_notes_slide_shape_portion ...'
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && request.name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.put_update_notes_slide_shape_portion"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && request.slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.put_update_notes_slide_shape_portion"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && request.shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.put_update_notes_slide_shape_portion"
      end
      # verify the required parameter 'paragraph_index' is set
      if @api_client.config.client_side_validation && request.paragraph_index.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_index' when calling SlidesApi.put_update_notes_slide_shape_portion"
      end
      # verify the required parameter 'portion_index' is set
      if @api_client.config.client_side_validation && request.portion_index.nil?
        fail ArgumentError, "Missing the required parameter 'portion_index' when calling SlidesApi.put_update_notes_slide_shape_portion"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', request.name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', request.slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', request.shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'paragraphIndex', request.paragraph_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'portionIndex', request.portion_index)

      # query parameters
      query_params = {}
      query_params[:'password'] = request.password unless request.password.nil?
      query_params[:'folder'] = request.folder unless request.folder.nil?
      query_params[:'storage'] = request.storage unless request.storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # http body (model)
      post_body = @api_client.object_to_http_body(request.dto)

      # form parameters

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Portion')
      return data, status_code, headers
    end
    # Check if storage exists
    # @param request operation request
    def storage_exists(request)
      data, _status_code, _headers = storage_exists_with_http_info(request)
      data
    end

    # Check if storage exists
    # @param request operation request
    def storage_exists_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.storage_exists ...'
      end
      # verify the required parameter 'storage_name' is set
      if @api_client.config.client_side_validation && request.storage_name.nil?
        fail ArgumentError, "Missing the required parameter 'storage_name' when calling SlidesApi.storage_exists"
      end
      # resource path
      local_var_path = '/slides/storage/{storageName}/exist'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'storageName', request.storage_name)

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

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'StorageExist')
      return data, status_code, headers
    end
    # Upload file
    # @param request operation request
    def upload_file(request)
      data, _status_code, _headers = upload_file_with_http_info(request)
      data
    end

    # Upload file
    # @param request operation request
    def upload_file_with_http_info(request)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.upload_file ...'
      end
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && request.file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling SlidesApi.upload_file"
      end
      # resource path
      local_var_path = '/slides/storage/file/{path}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', request.path)

      # query parameters
      query_params = {}
      query_params[:'storageName'] = request.storage_name unless request.storage_name.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # http body (model)
      post_body = nil

      # form parameters
      post_body = request.file

      post_files = nil


      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'FilesUploadResult')
      return data, status_code, headers
    end
  end
end
