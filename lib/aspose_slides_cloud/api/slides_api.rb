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

    # Changes the placement of selected shapes on the slide. Aligns shapes to the margins or the edge of the slide or aligns them relative to each other.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param alignment_type Alignment type that will be applied to the shapes.
    # @param align_to_slide If true, shapes will be aligned relative to the slide edges.
    # @param shapes Shapes indexes.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def align_shapes(name, slide_index, alignment_type, align_to_slide = nil, shapes = nil, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = align_shapes_with_http_info(name, slide_index, alignment_type, align_to_slide, shapes, password, folder, storage)
      data
    end

    # Changes the placement of selected shapes on the slide. Aligns shapes to the margins or the edge of the slide or aligns them relative to each other.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param alignment_type Alignment type that will be applied to the shapes.
    # @param align_to_slide If true, shapes will be aligned relative to the slide edges.
    # @param shapes Shapes indexes.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def align_shapes_with_http_info(name, slide_index, alignment_type, align_to_slide = nil, shapes = nil, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.align_shapes ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.align_shapes"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.align_shapes"
      end
      # verify the required parameter 'alignment_type' is set
      if @api_client.config.client_side_validation && alignment_type.nil?
        fail ArgumentError, "Missing the required parameter 'alignment_type' when calling SlidesApi.align_shapes"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['AlignLeft', 'AlignRight', 'AlignCenter', 'AlignTop', 'AlignMiddle', 'AlignBottom', 'DistributeHorizontally', 'DistributeVertically'].any?{ |s| s.casecmp(alignment_type)==0 }
        fail ArgumentError, "Value " + alignment_type + " is not supported for 'alignment_type', must be one of AlignLeft, AlignRight, AlignCenter, AlignTop, AlignMiddle, AlignBottom, DistributeHorizontally, DistributeVertically"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/align/{alignmentType}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'alignmentType', alignment_type)

      # query parameters
      query_params = {}
      query_params[:'alignToSlide'] = align_to_slide unless align_to_slide.nil?
      query_params[:'shapes'] = shapes unless shapes.nil?
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Shapes')
      return data, status_code, headers
    end
    # Convert presentation from request content to format specified.
    # @param document Document data.
    # @param format Export format.
    # @param password Document password.
    # @param storage Document storage.
    # @param fonts_folder Custom fonts folder.
    def convert(document, format, password = nil, storage = nil, fonts_folder = nil)
      data, _status_code, _headers = convert_with_http_info(document, format, password, storage, fonts_folder)
      data
    end

    # Convert presentation from request content to format specified.
    # @param document Document data.
    # @param format Export format.
    # @param password Document password.
    # @param storage Document storage.
    # @param fonts_folder Custom fonts folder.
    def convert_with_http_info(document, format, password = nil, storage = nil, fonts_folder = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.convert ...'
      end

      # verify the required parameter 'document' is set
      if @api_client.config.client_side_validation && document.nil?
        fail ArgumentError, "Missing the required parameter 'document' when calling SlidesApi.convert"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling SlidesApi.convert"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Pdf', 'Xps', 'Tiff', 'Pptx', 'Odp', 'Otp', 'Ppt', 'Pps', 'Ppsx', 'Pptm', 'Ppsm', 'Pot', 'Potx', 'Potm', 'Html', 'Swf', 'Svg', 'Jpeg', 'Png', 'Gif', 'Bmp', 'Fodp'].any?{ |s| s.casecmp(format)==0 }
        fail ArgumentError, "Value " + format + " is not supported for 'format', must be one of Pdf, Xps, Tiff, Pptx, Odp, Otp, Ppt, Pps, Ppsx, Pptm, Ppsm, Pot, Potx, Potm, Html, Swf, Svg, Jpeg, Png, Gif, Bmp, Fodp"
      end
      # resource path
      local_var_path = '/slides/convert/{format}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'format', format)

      # query parameters
      query_params = {}
      query_params[:'storage'] = storage unless storage.nil?
      query_params[:'fontsFolder'] = fonts_folder unless fonts_folder.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

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
        :return_type => 'File')
      return data, status_code, headers
    end
    # Convert presentation from request content to format specified.
    # @param document Document data.
    # @param format Export format.
    # @param out_path Path to save result.
    # @param password Document password.
    # @param storage Document storage.
    # @param fonts_folder Custom fonts folder.
    def convert_and_save(document, format, out_path, password = nil, storage = nil, fonts_folder = nil)
      convert_and_save_with_http_info(document, format, out_path, password, storage, fonts_folder)
      nil
    end

    # Convert presentation from request content to format specified.
    # @param document Document data.
    # @param format Export format.
    # @param out_path Path to save result.
    # @param password Document password.
    # @param storage Document storage.
    # @param fonts_folder Custom fonts folder.
    def convert_and_save_with_http_info(document, format, out_path, password = nil, storage = nil, fonts_folder = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.convert_and_save ...'
      end

      # verify the required parameter 'document' is set
      if @api_client.config.client_side_validation && document.nil?
        fail ArgumentError, "Missing the required parameter 'document' when calling SlidesApi.convert_and_save"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling SlidesApi.convert_and_save"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Pdf', 'Xps', 'Tiff', 'Pptx', 'Odp', 'Otp', 'Ppt', 'Pps', 'Ppsx', 'Pptm', 'Ppsm', 'Pot', 'Potx', 'Potm', 'Html', 'Swf', 'Svg', 'Jpeg', 'Png', 'Gif', 'Bmp', 'Fodp'].any?{ |s| s.casecmp(format)==0 }
        fail ArgumentError, "Value " + format + " is not supported for 'format', must be one of Pdf, Xps, Tiff, Pptx, Odp, Otp, Ppt, Pps, Ppsx, Pptm, Ppsm, Pot, Potx, Potm, Html, Swf, Svg, Jpeg, Png, Gif, Bmp, Fodp"
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling SlidesApi.convert_and_save"
      end
      # resource path
      local_var_path = '/slides/convert/{format}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'format', format)

      # query parameters
      query_params = {}
      query_params[:'outPath'] = out_path unless out_path.nil?
      query_params[:'storage'] = storage unless storage.nil?
      query_params[:'fontsFolder'] = fonts_folder unless fonts_folder.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

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
        :auth_names => auth_names)
      return data, status_code, headers
    end
    # Copy file
    # @param src_path Source file path e.g. '/folder/file.ext'
    # @param dest_path Destination file path
    # @param src_storage_name Source storage name
    # @param dest_storage_name Destination storage name
    # @param version_id File version ID to copy
    def copy_file(src_path, dest_path, src_storage_name = nil, dest_storage_name = nil, version_id = nil)
      copy_file_with_http_info(src_path, dest_path, src_storage_name, dest_storage_name, version_id)
      nil
    end

    # Copy file
    # @param src_path Source file path e.g. '/folder/file.ext'
    # @param dest_path Destination file path
    # @param src_storage_name Source storage name
    # @param dest_storage_name Destination storage name
    # @param version_id File version ID to copy
    def copy_file_with_http_info(src_path, dest_path, src_storage_name = nil, dest_storage_name = nil, version_id = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.copy_file ...'
      end

      # verify the required parameter 'src_path' is set
      if @api_client.config.client_side_validation && src_path.nil?
        fail ArgumentError, "Missing the required parameter 'src_path' when calling SlidesApi.copy_file"
      end
      # verify the required parameter 'dest_path' is set
      if @api_client.config.client_side_validation && dest_path.nil?
        fail ArgumentError, "Missing the required parameter 'dest_path' when calling SlidesApi.copy_file"
      end
      # resource path
      local_var_path = '/slides/storage/file/copy/{srcPath}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'srcPath', src_path)

      # query parameters
      query_params = {}
      query_params[:'destPath'] = dest_path unless dest_path.nil?
      query_params[:'srcStorageName'] = src_storage_name unless src_storage_name.nil?
      query_params[:'destStorageName'] = dest_storage_name unless dest_storage_name.nil?
      query_params[:'versionId'] = version_id unless version_id.nil?

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
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names)
      return data, status_code, headers
    end
    # Copy folder
    # @param src_path Source folder path e.g. '/src'
    # @param dest_path Destination folder path e.g. '/dst'
    # @param src_storage_name Source storage name
    # @param dest_storage_name Destination storage name
    def copy_folder(src_path, dest_path, src_storage_name = nil, dest_storage_name = nil)
      copy_folder_with_http_info(src_path, dest_path, src_storage_name, dest_storage_name)
      nil
    end

    # Copy folder
    # @param src_path Source folder path e.g. '/src'
    # @param dest_path Destination folder path e.g. '/dst'
    # @param src_storage_name Source storage name
    # @param dest_storage_name Destination storage name
    def copy_folder_with_http_info(src_path, dest_path, src_storage_name = nil, dest_storage_name = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.copy_folder ...'
      end

      # verify the required parameter 'src_path' is set
      if @api_client.config.client_side_validation && src_path.nil?
        fail ArgumentError, "Missing the required parameter 'src_path' when calling SlidesApi.copy_folder"
      end
      # verify the required parameter 'dest_path' is set
      if @api_client.config.client_side_validation && dest_path.nil?
        fail ArgumentError, "Missing the required parameter 'dest_path' when calling SlidesApi.copy_folder"
      end
      # resource path
      local_var_path = '/slides/storage/folder/copy/{srcPath}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'srcPath', src_path)

      # query parameters
      query_params = {}
      query_params[:'destPath'] = dest_path unless dest_path.nil?
      query_params[:'srcStorageName'] = src_storage_name unless src_storage_name.nil?
      query_params[:'destStorageName'] = dest_storage_name unless dest_storage_name.nil?

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
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names)
      return data, status_code, headers
    end
    # Copy layoutSlide from source presentation.
    # @param name Document name.
    # @param clone_from Name of the document to clone layoutSlide from.
    # @param clone_from_position Position of cloned layout slide.
    # @param clone_from_password Password for the document to clone layoutSlide from.
    # @param clone_from_storage Storage of the document to clone layoutSlide from.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def copy_layout_slide(name, clone_from, clone_from_position, clone_from_password = nil, clone_from_storage = nil, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = copy_layout_slide_with_http_info(name, clone_from, clone_from_position, clone_from_password, clone_from_storage, password, folder, storage)
      data
    end

    # Copy layoutSlide from source presentation.
    # @param name Document name.
    # @param clone_from Name of the document to clone layoutSlide from.
    # @param clone_from_position Position of cloned layout slide.
    # @param clone_from_password Password for the document to clone layoutSlide from.
    # @param clone_from_storage Storage of the document to clone layoutSlide from.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def copy_layout_slide_with_http_info(name, clone_from, clone_from_position, clone_from_password = nil, clone_from_storage = nil, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.copy_layout_slide ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.copy_layout_slide"
      end
      # verify the required parameter 'clone_from' is set
      if @api_client.config.client_side_validation && clone_from.nil?
        fail ArgumentError, "Missing the required parameter 'clone_from' when calling SlidesApi.copy_layout_slide"
      end
      # verify the required parameter 'clone_from_position' is set
      if @api_client.config.client_side_validation && clone_from_position.nil?
        fail ArgumentError, "Missing the required parameter 'clone_from_position' when calling SlidesApi.copy_layout_slide"
      end
      # resource path
      local_var_path = '/slides/{name}/layoutSlides'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)

      # query parameters
      query_params = {}
      query_params[:'cloneFrom'] = clone_from unless clone_from.nil?
      query_params[:'cloneFromPosition'] = clone_from_position unless clone_from_position.nil?
      query_params[:'cloneFromStorage'] = clone_from_storage unless clone_from_storage.nil?
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'cloneFromPassword'] = clone_from_password unless clone_from_password.nil?
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

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
    # @param name Document name.
    # @param clone_from Name of the document to clone masterSlide from.
    # @param clone_from_position Position of cloned master slide.
    # @param clone_from_password Password for the document to clone masterSlide from.
    # @param clone_from_storage Storage of the document to clone masterSlide from.
    # @param apply_to_all True to apply cloned master slide to every existing slide.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def copy_master_slide(name, clone_from, clone_from_position, clone_from_password = nil, clone_from_storage = nil, apply_to_all = nil, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = copy_master_slide_with_http_info(name, clone_from, clone_from_position, clone_from_password, clone_from_storage, apply_to_all, password, folder, storage)
      data
    end

    # Copy masterSlide from source presentation.
    # @param name Document name.
    # @param clone_from Name of the document to clone masterSlide from.
    # @param clone_from_position Position of cloned master slide.
    # @param clone_from_password Password for the document to clone masterSlide from.
    # @param clone_from_storage Storage of the document to clone masterSlide from.
    # @param apply_to_all True to apply cloned master slide to every existing slide.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def copy_master_slide_with_http_info(name, clone_from, clone_from_position, clone_from_password = nil, clone_from_storage = nil, apply_to_all = nil, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.copy_master_slide ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.copy_master_slide"
      end
      # verify the required parameter 'clone_from' is set
      if @api_client.config.client_side_validation && clone_from.nil?
        fail ArgumentError, "Missing the required parameter 'clone_from' when calling SlidesApi.copy_master_slide"
      end
      # verify the required parameter 'clone_from_position' is set
      if @api_client.config.client_side_validation && clone_from_position.nil?
        fail ArgumentError, "Missing the required parameter 'clone_from_position' when calling SlidesApi.copy_master_slide"
      end
      # resource path
      local_var_path = '/slides/{name}/masterSlides'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)

      # query parameters
      query_params = {}
      query_params[:'cloneFrom'] = clone_from unless clone_from.nil?
      query_params[:'cloneFromPosition'] = clone_from_position unless clone_from_position.nil?
      query_params[:'cloneFromStorage'] = clone_from_storage unless clone_from_storage.nil?
      query_params[:'applyToAll'] = apply_to_all unless apply_to_all.nil?
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'cloneFromPassword'] = clone_from_password unless clone_from_password.nil?
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

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
    # Copy a slide from the current or another presentation.
    # @param name Document name.
    # @param slide_to_copy The index of the slide to be copied from the source presentation.
    # @param position The target position at which to copy the slide. Copy to the end by default.
    # @param source Name of the document to copy a slide from.
    # @param source_password Password for the document to copy a slide from.
    # @param source_storage Template storage name.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def copy_slide(name, slide_to_copy, position = nil, source = nil, source_password = nil, source_storage = nil, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = copy_slide_with_http_info(name, slide_to_copy, position, source, source_password, source_storage, password, folder, storage)
      data
    end

    # Copy a slide from the current or another presentation.
    # @param name Document name.
    # @param slide_to_copy The index of the slide to be copied from the source presentation.
    # @param position The target position at which to copy the slide. Copy to the end by default.
    # @param source Name of the document to copy a slide from.
    # @param source_password Password for the document to copy a slide from.
    # @param source_storage Template storage name.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def copy_slide_with_http_info(name, slide_to_copy, position = nil, source = nil, source_password = nil, source_storage = nil, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.copy_slide ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.copy_slide"
      end
      # verify the required parameter 'slide_to_copy' is set
      if @api_client.config.client_side_validation && slide_to_copy.nil?
        fail ArgumentError, "Missing the required parameter 'slide_to_copy' when calling SlidesApi.copy_slide"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/copy'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)

      # query parameters
      query_params = {}
      query_params[:'slideToCopy'] = slide_to_copy unless slide_to_copy.nil?
      query_params[:'position'] = position unless position.nil?
      query_params[:'source'] = source unless source.nil?
      query_params[:'sourceStorage'] = source_storage unless source_storage.nil?
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'sourcePassword'] = source_password unless source_password.nil?
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

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
    # Add an effect to slide animation.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param effect Animation effect DTO.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def create_animation_effect(name, slide_index, effect, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = create_animation_effect_with_http_info(name, slide_index, effect, password, folder, storage)
      data
    end

    # Add an effect to slide animation.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param effect Animation effect DTO.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def create_animation_effect_with_http_info(name, slide_index, effect, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.create_animation_effect ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.create_animation_effect"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.create_animation_effect"
      end
      # verify the required parameter 'effect' is set
      if @api_client.config.client_side_validation && effect.nil?
        fail ArgumentError, "Missing the required parameter 'effect' when calling SlidesApi.create_animation_effect"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/animation/mainSequence'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(effect)

      # form parameters
      post_files = []

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
    # @param name Document name.
    # @param slide_index Slide index.
    # @param sequence Animation sequence DTO.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def create_animation_interactive_sequence(name, slide_index, sequence, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = create_animation_interactive_sequence_with_http_info(name, slide_index, sequence, password, folder, storage)
      data
    end

    # Set slide animation.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param sequence Animation sequence DTO.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def create_animation_interactive_sequence_with_http_info(name, slide_index, sequence, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.create_animation_interactive_sequence ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.create_animation_interactive_sequence"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.create_animation_interactive_sequence"
      end
      # verify the required parameter 'sequence' is set
      if @api_client.config.client_side_validation && sequence.nil?
        fail ArgumentError, "Missing the required parameter 'sequence' when calling SlidesApi.create_animation_interactive_sequence"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/animation/interactiveSequences'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(sequence)

      # form parameters
      post_files = []

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
    # @param name Document name.
    # @param slide_index Slide index.
    # @param sequence_index The position of the interactive sequence.
    # @param effect Animation effect DTO.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def create_animation_interactive_sequence_effect(name, slide_index, sequence_index, effect, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = create_animation_interactive_sequence_effect_with_http_info(name, slide_index, sequence_index, effect, password, folder, storage)
      data
    end

    # Add an animation effect to a slide interactive sequence.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param sequence_index The position of the interactive sequence.
    # @param effect Animation effect DTO.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def create_animation_interactive_sequence_effect_with_http_info(name, slide_index, sequence_index, effect, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.create_animation_interactive_sequence_effect ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.create_animation_interactive_sequence_effect"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.create_animation_interactive_sequence_effect"
      end
      # verify the required parameter 'sequence_index' is set
      if @api_client.config.client_side_validation && sequence_index.nil?
        fail ArgumentError, "Missing the required parameter 'sequence_index' when calling SlidesApi.create_animation_interactive_sequence_effect"
      end
      # verify the required parameter 'effect' is set
      if @api_client.config.client_side_validation && effect.nil?
        fail ArgumentError, "Missing the required parameter 'effect' when calling SlidesApi.create_animation_interactive_sequence_effect"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/animation/interactiveSequences/{sequenceIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'sequenceIndex', sequence_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(effect)

      # form parameters
      post_files = []

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
    # Add a new category to a chart.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param category Category DTO.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def create_chart_category(name, slide_index, shape_index, category, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = create_chart_category_with_http_info(name, slide_index, shape_index, category, password, folder, storage)
      data
    end

    # Add a new category to a chart.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param category Category DTO.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def create_chart_category_with_http_info(name, slide_index, shape_index, category, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.create_chart_category ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.create_chart_category"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.create_chart_category"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.create_chart_category"
      end
      # verify the required parameter 'category' is set
      if @api_client.config.client_side_validation && category.nil?
        fail ArgumentError, "Missing the required parameter 'category' when calling SlidesApi.create_chart_category"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/categories'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(category)

      # form parameters
      post_files = []

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
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param series_index Series index.
    # @param data_point Data point DTO.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def create_chart_data_point(name, slide_index, shape_index, series_index, data_point, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = create_chart_data_point_with_http_info(name, slide_index, shape_index, series_index, data_point, password, folder, storage)
      data
    end

    # Add a new data point to a chart series.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param series_index Series index.
    # @param data_point Data point DTO.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def create_chart_data_point_with_http_info(name, slide_index, shape_index, series_index, data_point, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.create_chart_data_point ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.create_chart_data_point"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.create_chart_data_point"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.create_chart_data_point"
      end
      # verify the required parameter 'series_index' is set
      if @api_client.config.client_side_validation && series_index.nil?
        fail ArgumentError, "Missing the required parameter 'series_index' when calling SlidesApi.create_chart_data_point"
      end
      # verify the required parameter 'data_point' is set
      if @api_client.config.client_side_validation && data_point.nil?
        fail ArgumentError, "Missing the required parameter 'data_point' when calling SlidesApi.create_chart_data_point"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/series/{seriesIndex}/dataPoints'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'seriesIndex', series_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(data_point)

      # form parameters
      post_files = []

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
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index (must be a chart).
    # @param series Series DTO.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def create_chart_series(name, slide_index, shape_index, series, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = create_chart_series_with_http_info(name, slide_index, shape_index, series, password, folder, storage)
      data
    end

    # Add a new series to a chart.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index (must be a chart).
    # @param series Series DTO.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def create_chart_series_with_http_info(name, slide_index, shape_index, series, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.create_chart_series ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.create_chart_series"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.create_chart_series"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.create_chart_series"
      end
      # verify the required parameter 'series' is set
      if @api_client.config.client_side_validation && series.nil?
        fail ArgumentError, "Missing the required parameter 'series' when calling SlidesApi.create_chart_series"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/series'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(series)

      # form parameters
      post_files = []

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
    # Adds the comment on the slide.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param dto Comment DTO.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def create_comment(name, slide_index, dto, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = create_comment_with_http_info(name, slide_index, dto, password, folder, storage)
      data
    end

    # Adds the comment on the slide.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param dto Comment DTO.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def create_comment_with_http_info(name, slide_index, dto, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.create_comment ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.create_comment"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.create_comment"
      end
      # verify the required parameter 'dto' is set
      if @api_client.config.client_side_validation && dto.nil?
        fail ArgumentError, "Missing the required parameter 'dto' when calling SlidesApi.create_comment"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/comments'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(dto)

      # form parameters
      post_files = []

      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'SlideComments')
      return data, status_code, headers
    end
    # Adds the comment on the slide.
    # @param document Document data.
    # @param slide_index Slide index.
    # @param dto Comment DTO.
    # @param password Document password.
    def create_comment_online(document, slide_index, dto, password = nil)
      data, _status_code, _headers = create_comment_online_with_http_info(document, slide_index, dto, password)
      data
    end

    # Adds the comment on the slide.
    # @param document Document data.
    # @param slide_index Slide index.
    # @param dto Comment DTO.
    # @param password Document password.
    def create_comment_online_with_http_info(document, slide_index, dto, password = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.create_comment_online ...'
      end

      # verify the required parameter 'document' is set
      if @api_client.config.client_side_validation && document.nil?
        fail ArgumentError, "Missing the required parameter 'document' when calling SlidesApi.create_comment_online"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.create_comment_online"
      end
      # verify the required parameter 'dto' is set
      if @api_client.config.client_side_validation && dto.nil?
        fail ArgumentError, "Missing the required parameter 'dto' when calling SlidesApi.create_comment_online"
      end
      # resource path
      local_var_path = '/slides/slides/{slideIndex}/comments'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(dto)

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
        :return_type => 'File')
      return data, status_code, headers
    end
    # Create the folder
    # @param path Folder path to create e.g. 'folder_1/folder_2/'
    # @param storage_name Storage name
    def create_folder(path, storage_name = nil)
      create_folder_with_http_info(path, storage_name)
      nil
    end

    # Create the folder
    # @param path Folder path to create e.g. 'folder_1/folder_2/'
    # @param storage_name Storage name
    def create_folder_with_http_info(path, storage_name = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.create_folder ...'
      end

      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling SlidesApi.create_folder"
      end
      # resource path
      local_var_path = '/slides/storage/folder/{path}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', path)

      # query parameters
      query_params = {}
      query_params[:'storageName'] = storage_name unless storage_name.nil?

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
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names)
      return data, status_code, headers
    end
    # Adds an image watermark to each slide of the presentation.  Image can be provided as a part of the form or withing PictureFrame DTO for detailed customization. Both options are applicable simultaneously. 
    # @param name Document name.
    # @param image Image data.
    # @param picture_frame PictureFrame DTO
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def create_image_watermark(name, image = nil, picture_frame = nil, password = nil, folder = nil, storage = nil)
      create_image_watermark_with_http_info(name, image, picture_frame, password, folder, storage)
      nil
    end

    # Adds an image watermark to each slide of the presentation.  Image can be provided as a part of the form or withing PictureFrame DTO for detailed customization. Both options are applicable simultaneously. 
    # @param name Document name.
    # @param image Image data.
    # @param picture_frame PictureFrame DTO
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def create_image_watermark_with_http_info(name, image = nil, picture_frame = nil, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.create_image_watermark ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.create_image_watermark"
      end
      # resource path
      local_var_path = '/slides/{name}/watermark/image'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(picture_frame)

      # form parameters
      post_files = []
      if image
        post_files = post_files.push(image)
      end

      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names)
      return data, status_code, headers
    end
    # Adds an image watermark to each slide of the presentation.  Image can be provided as a part of the form or withing PictureFrame DTO for detailed customization. Both options are applicable simultaneously. 
    # @param document Document data.
    # @param image Image data.
    # @param picture_frame PictureFrame DTO.
    # @param password Document password.
    def create_image_watermark_online(document, image = nil, picture_frame = nil, password = nil)
      data, _status_code, _headers = create_image_watermark_online_with_http_info(document, image, picture_frame, password)
      data
    end

    # Adds an image watermark to each slide of the presentation.  Image can be provided as a part of the form or withing PictureFrame DTO for detailed customization. Both options are applicable simultaneously. 
    # @param document Document data.
    # @param image Image data.
    # @param picture_frame PictureFrame DTO.
    # @param password Document password.
    def create_image_watermark_online_with_http_info(document, image = nil, picture_frame = nil, password = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.create_image_watermark_online ...'
      end

      # verify the required parameter 'document' is set
      if @api_client.config.client_side_validation && document.nil?
        fail ArgumentError, "Missing the required parameter 'document' when calling SlidesApi.create_image_watermark_online"
      end
      # resource path
      local_var_path = '/slides/watermark/image'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(picture_frame)

      # form parameters
      post_files = []
      if document
        post_files = post_files.push(document)
      end
      if image
        post_files = post_files.push(image)
      end

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
    # Add new notes slide.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param dto A NotesSlide object with notes slide data.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def create_notes_slide(name, slide_index, dto, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = create_notes_slide_with_http_info(name, slide_index, dto, password, folder, storage)
      data
    end

    # Add new notes slide.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param dto A NotesSlide object with notes slide data.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def create_notes_slide_with_http_info(name, slide_index, dto, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.create_notes_slide ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.create_notes_slide"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.create_notes_slide"
      end
      # verify the required parameter 'dto' is set
      if @api_client.config.client_side_validation && dto.nil?
        fail ArgumentError, "Missing the required parameter 'dto' when calling SlidesApi.create_notes_slide"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/notesSlide'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(dto)

      # form parameters
      post_files = []

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
    # Creates new paragraph.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param dto Paragraph DTO.
    # @param position Position of the new paragraph in the list. Default is at the end of the list.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def create_notes_slide_paragraph(name, slide_index, shape_index, dto, position = nil, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = create_notes_slide_paragraph_with_http_info(name, slide_index, shape_index, dto, position, password, folder, storage)
      data
    end

    # Creates new paragraph.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param dto Paragraph DTO.
    # @param position Position of the new paragraph in the list. Default is at the end of the list.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def create_notes_slide_paragraph_with_http_info(name, slide_index, shape_index, dto, position = nil, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.create_notes_slide_paragraph ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.create_notes_slide_paragraph"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.create_notes_slide_paragraph"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.create_notes_slide_paragraph"
      end
      # verify the required parameter 'dto' is set
      if @api_client.config.client_side_validation && dto.nil?
        fail ArgumentError, "Missing the required parameter 'dto' when calling SlidesApi.create_notes_slide_paragraph"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)

      # query parameters
      query_params = {}
      query_params[:'position'] = position unless position.nil?
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(dto)

      # form parameters
      post_files = []

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
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param paragraph_index Paragraph index.
    # @param dto Portion DTO.
    # @param position Position of the new portion in the list. Default is at the end of the list.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def create_notes_slide_portion(name, slide_index, shape_index, paragraph_index, dto, position = nil, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = create_notes_slide_portion_with_http_info(name, slide_index, shape_index, paragraph_index, dto, position, password, folder, storage)
      data
    end

    # Creates new portion.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param paragraph_index Paragraph index.
    # @param dto Portion DTO.
    # @param position Position of the new portion in the list. Default is at the end of the list.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def create_notes_slide_portion_with_http_info(name, slide_index, shape_index, paragraph_index, dto, position = nil, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.create_notes_slide_portion ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.create_notes_slide_portion"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.create_notes_slide_portion"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.create_notes_slide_portion"
      end
      # verify the required parameter 'paragraph_index' is set
      if @api_client.config.client_side_validation && paragraph_index.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_index' when calling SlidesApi.create_notes_slide_portion"
      end
      # verify the required parameter 'dto' is set
      if @api_client.config.client_side_validation && dto.nil?
        fail ArgumentError, "Missing the required parameter 'dto' when calling SlidesApi.create_notes_slide_portion"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'paragraphIndex', paragraph_index)

      # query parameters
      query_params = {}
      query_params[:'position'] = position unless position.nil?
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(dto)

      # form parameters
      post_files = []

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
    # @param name Document name.
    # @param slide_index Slide index.
    # @param dto Shape DTO.
    # @param shape_to_clone Optional index for clone shape instead of adding a new one.
    # @param position Position of the new shape in the list. Default is at the end of the list.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def create_notes_slide_shape(name, slide_index, dto, shape_to_clone = nil, position = nil, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = create_notes_slide_shape_with_http_info(name, slide_index, dto, shape_to_clone, position, password, folder, storage)
      data
    end

    # Create new shape.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param dto Shape DTO.
    # @param shape_to_clone Optional index for clone shape instead of adding a new one.
    # @param position Position of the new shape in the list. Default is at the end of the list.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def create_notes_slide_shape_with_http_info(name, slide_index, dto, shape_to_clone = nil, position = nil, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.create_notes_slide_shape ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.create_notes_slide_shape"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.create_notes_slide_shape"
      end
      # verify the required parameter 'dto' is set
      if @api_client.config.client_side_validation && dto.nil?
        fail ArgumentError, "Missing the required parameter 'dto' when calling SlidesApi.create_notes_slide_shape"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/notesSlide/shapes'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)

      # query parameters
      query_params = {}
      query_params[:'shapeToClone'] = shape_to_clone unless shape_to_clone.nil?
      query_params[:'position'] = position unless position.nil?
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(dto)

      # form parameters
      post_files = []

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
    # Creates new paragraph.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param dto Paragraph DTO.
    # @param position Position of the new paragraph in the list. Default is at the end of the list.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def create_paragraph(name, slide_index, shape_index, dto, position = nil, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = create_paragraph_with_http_info(name, slide_index, shape_index, dto, position, password, folder, storage)
      data
    end

    # Creates new paragraph.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param dto Paragraph DTO.
    # @param position Position of the new paragraph in the list. Default is at the end of the list.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def create_paragraph_with_http_info(name, slide_index, shape_index, dto, position = nil, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.create_paragraph ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.create_paragraph"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.create_paragraph"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.create_paragraph"
      end
      # verify the required parameter 'dto' is set
      if @api_client.config.client_side_validation && dto.nil?
        fail ArgumentError, "Missing the required parameter 'dto' when calling SlidesApi.create_paragraph"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)

      # query parameters
      query_params = {}
      query_params[:'position'] = position unless position.nil?
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(dto)

      # form parameters
      post_files = []

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
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param paragraph_index Paragraph index.
    # @param dto Portion DTO.
    # @param position Position of the new portion in the list. Default is at the end of the list.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def create_portion(name, slide_index, shape_index, paragraph_index, dto, position = nil, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = create_portion_with_http_info(name, slide_index, shape_index, paragraph_index, dto, position, password, folder, storage)
      data
    end

    # Creates new portion.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param paragraph_index Paragraph index.
    # @param dto Portion DTO.
    # @param position Position of the new portion in the list. Default is at the end of the list.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def create_portion_with_http_info(name, slide_index, shape_index, paragraph_index, dto, position = nil, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.create_portion ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.create_portion"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.create_portion"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.create_portion"
      end
      # verify the required parameter 'paragraph_index' is set
      if @api_client.config.client_side_validation && paragraph_index.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_index' when calling SlidesApi.create_portion"
      end
      # verify the required parameter 'dto' is set
      if @api_client.config.client_side_validation && dto.nil?
        fail ArgumentError, "Missing the required parameter 'dto' when calling SlidesApi.create_portion"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'paragraphIndex', paragraph_index)

      # query parameters
      query_params = {}
      query_params[:'position'] = position unless position.nil?
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(dto)

      # form parameters
      post_files = []

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
    # Create a presentation.
    # @param name Document name.
    # @param data Document input data.
    # @param input_password The password for input document.
    # @param password The document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def create_presentation(name, data = nil, input_password = nil, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = create_presentation_with_http_info(name, data, input_password, password, folder, storage)
      data
    end

    # Create a presentation.
    # @param name Document name.
    # @param data Document input data.
    # @param input_password The password for input document.
    # @param password The document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def create_presentation_with_http_info(name, data = nil, input_password = nil, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.create_presentation ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.create_presentation"
      end
      # resource path
      local_var_path = '/slides/{name}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])
      header_params[:'inputPassword'] = input_password unless input_password.nil?
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []
      if data
        post_files = post_files.push(data)
      end

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
    # @param name Document name.
    # @param source_path Template file path.
    # @param source_password Template file password.
    # @param source_storage Template storage name.
    # @param password The document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def create_presentation_from_source(name, source_path = nil, source_password = nil, source_storage = nil, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = create_presentation_from_source_with_http_info(name, source_path, source_password, source_storage, password, folder, storage)
      data
    end

    # Create a presentation from an existing source.
    # @param name Document name.
    # @param source_path Template file path.
    # @param source_password Template file password.
    # @param source_storage Template storage name.
    # @param password The document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def create_presentation_from_source_with_http_info(name, source_path = nil, source_password = nil, source_storage = nil, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.create_presentation_from_source ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.create_presentation_from_source"
      end
      # resource path
      local_var_path = '/slides/{name}/fromSource'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)

      # query parameters
      query_params = {}
      query_params[:'sourcePath'] = source_path unless source_path.nil?
      query_params[:'sourceStorage'] = source_storage unless source_storage.nil?
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'sourcePassword'] = source_password unless source_password.nil?
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

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
    # @param name Document name.
    # @param template_path Template file path.
    # @param data Document input data.
    # @param template_password Template file password.
    # @param template_storage Template storage name.
    # @param is_image_data_embedded True if image data is embedded.
    # @param password The document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def create_presentation_from_template(name, template_path, data = nil, template_password = nil, template_storage = nil, is_image_data_embedded = nil, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = create_presentation_from_template_with_http_info(name, template_path, data, template_password, template_storage, is_image_data_embedded, password, folder, storage)
      data
    end

    # Create a presentation.
    # @param name Document name.
    # @param template_path Template file path.
    # @param data Document input data.
    # @param template_password Template file password.
    # @param template_storage Template storage name.
    # @param is_image_data_embedded True if image data is embedded.
    # @param password The document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def create_presentation_from_template_with_http_info(name, template_path, data = nil, template_password = nil, template_storage = nil, is_image_data_embedded = nil, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.create_presentation_from_template ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.create_presentation_from_template"
      end
      # verify the required parameter 'template_path' is set
      if @api_client.config.client_side_validation && template_path.nil?
        fail ArgumentError, "Missing the required parameter 'template_path' when calling SlidesApi.create_presentation_from_template"
      end
      # resource path
      local_var_path = '/slides/{name}/fromTemplate'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)

      # query parameters
      query_params = {}
      query_params[:'templatePath'] = template_path unless template_path.nil?
      query_params[:'templateStorage'] = template_storage unless template_storage.nil?
      query_params[:'isImageDataEmbedded'] = is_image_data_embedded unless is_image_data_embedded.nil?
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'templatePassword'] = template_password unless template_password.nil?
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(data)

      # form parameters
      post_files = []

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
    # Create a section starting at a specified slide index.
    # @param name Document name.
    # @param section_name Section name.
    # @param slide_index Slide index (one-based).
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def create_section(name, section_name, slide_index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = create_section_with_http_info(name, section_name, slide_index, password, folder, storage)
      data
    end

    # Create a section starting at a specified slide index.
    # @param name Document name.
    # @param section_name Section name.
    # @param slide_index Slide index (one-based).
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def create_section_with_http_info(name, section_name, slide_index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.create_section ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.create_section"
      end
      # verify the required parameter 'section_name' is set
      if @api_client.config.client_side_validation && section_name.nil?
        fail ArgumentError, "Missing the required parameter 'section_name' when calling SlidesApi.create_section"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.create_section"
      end
      # resource path
      local_var_path = '/slides/{name}/sections'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)

      # query parameters
      query_params = {}
      query_params[:'sectionName'] = section_name unless section_name.nil?
      query_params[:'slideIndex'] = slide_index unless slide_index.nil?
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Sections')
      return data, status_code, headers
    end
    # Create new shape.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param dto Shape DTO.
    # @param shape_to_clone Optional index for clone shape instead of adding a new one.
    # @param position Position of the new shape in the list. Default is at the end of the list.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def create_shape(name, slide_index, dto = nil, shape_to_clone = nil, position = nil, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = create_shape_with_http_info(name, slide_index, dto, shape_to_clone, position, password, folder, storage)
      data
    end

    # Create new shape.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param dto Shape DTO.
    # @param shape_to_clone Optional index for clone shape instead of adding a new one.
    # @param position Position of the new shape in the list. Default is at the end of the list.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def create_shape_with_http_info(name, slide_index, dto = nil, shape_to_clone = nil, position = nil, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.create_shape ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.create_shape"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.create_shape"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)

      # query parameters
      query_params = {}
      query_params[:'shapeToClone'] = shape_to_clone unless shape_to_clone.nil?
      query_params[:'position'] = position unless position.nil?
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(dto)

      # form parameters
      post_files = []

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
    # Create a slide.
    # @param name Document name.
    # @param layout_alias Alias of layout slide for new slide. Alias may be the type of layout, name of layout slide or index
    # @param position The target position at which to create the slide. Add to the end by default.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def create_slide(name, layout_alias = nil, position = nil, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = create_slide_with_http_info(name, layout_alias, position, password, folder, storage)
      data
    end

    # Create a slide.
    # @param name Document name.
    # @param layout_alias Alias of layout slide for new slide. Alias may be the type of layout, name of layout slide or index
    # @param position The target position at which to create the slide. Add to the end by default.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def create_slide_with_http_info(name, layout_alias = nil, position = nil, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.create_slide ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.create_slide"
      end
      # resource path
      local_var_path = '/slides/{name}/slides'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)

      # query parameters
      query_params = {}
      query_params[:'layoutAlias'] = layout_alias unless layout_alias.nil?
      query_params[:'position'] = position unless position.nil?
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

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
    # Create new shape (for smart art and group shapes).
    # @param name Document name.
    # @param slide_index Slide index.
    # @param path Shape path.
    # @param dto Shape DTO.
    # @param shape_to_clone Optional index for clone shape instead of adding a new one.
    # @param position Position of the new shape in the list. Default is at the end of the list.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def create_subshape(name, slide_index, path, dto = nil, shape_to_clone = nil, position = nil, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = create_subshape_with_http_info(name, slide_index, path, dto, shape_to_clone, position, password, folder, storage)
      data
    end

    # Create new shape (for smart art and group shapes).
    # @param name Document name.
    # @param slide_index Slide index.
    # @param path Shape path.
    # @param dto Shape DTO.
    # @param shape_to_clone Optional index for clone shape instead of adding a new one.
    # @param position Position of the new shape in the list. Default is at the end of the list.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def create_subshape_with_http_info(name, slide_index, path, dto = nil, shape_to_clone = nil, position = nil, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.create_subshape ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.create_subshape"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.create_subshape"
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling SlidesApi.create_subshape"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{path}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', path)

      # query parameters
      query_params = {}
      query_params[:'shapeToClone'] = shape_to_clone unless shape_to_clone.nil?
      query_params[:'position'] = position unless position.nil?
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(dto)

      # form parameters
      post_files = []

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
    # @param name Document name.
    # @param slide_index Slide index.
    # @param path Shape path.
    # @param shape_index Shape index.
    # @param dto Paragraph DTO.
    # @param position Position of the new paragraph in the list. Default is at the end of the list.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def create_subshape_paragraph(name, slide_index, path, shape_index, dto, position = nil, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = create_subshape_paragraph_with_http_info(name, slide_index, path, shape_index, dto, position, password, folder, storage)
      data
    end

    # Creates new paragraph (for smart art and group shapes).
    # @param name Document name.
    # @param slide_index Slide index.
    # @param path Shape path.
    # @param shape_index Shape index.
    # @param dto Paragraph DTO.
    # @param position Position of the new paragraph in the list. Default is at the end of the list.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def create_subshape_paragraph_with_http_info(name, slide_index, path, shape_index, dto, position = nil, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.create_subshape_paragraph ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.create_subshape_paragraph"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.create_subshape_paragraph"
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling SlidesApi.create_subshape_paragraph"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.create_subshape_paragraph"
      end
      # verify the required parameter 'dto' is set
      if @api_client.config.client_side_validation && dto.nil?
        fail ArgumentError, "Missing the required parameter 'dto' when calling SlidesApi.create_subshape_paragraph"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', path)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)

      # query parameters
      query_params = {}
      query_params[:'position'] = position unless position.nil?
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(dto)

      # form parameters
      post_files = []

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
    # @param name Document name.
    # @param slide_index Slide index.
    # @param path Shape path.
    # @param shape_index Shape index.
    # @param paragraph_index Paragraph index.
    # @param dto Portion DTO.
    # @param position Position of the new portion in the list. Default is at the end of the list.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def create_subshape_portion(name, slide_index, path, shape_index, paragraph_index, dto, position = nil, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = create_subshape_portion_with_http_info(name, slide_index, path, shape_index, paragraph_index, dto, position, password, folder, storage)
      data
    end

    # Creates new portion (for smart art and group shapes).
    # @param name Document name.
    # @param slide_index Slide index.
    # @param path Shape path.
    # @param shape_index Shape index.
    # @param paragraph_index Paragraph index.
    # @param dto Portion DTO.
    # @param position Position of the new portion in the list. Default is at the end of the list.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def create_subshape_portion_with_http_info(name, slide_index, path, shape_index, paragraph_index, dto, position = nil, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.create_subshape_portion ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.create_subshape_portion"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.create_subshape_portion"
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling SlidesApi.create_subshape_portion"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.create_subshape_portion"
      end
      # verify the required parameter 'paragraph_index' is set
      if @api_client.config.client_side_validation && paragraph_index.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_index' when calling SlidesApi.create_subshape_portion"
      end
      # verify the required parameter 'dto' is set
      if @api_client.config.client_side_validation && dto.nil?
        fail ArgumentError, "Missing the required parameter 'dto' when calling SlidesApi.create_subshape_portion"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', path)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'paragraphIndex', paragraph_index)

      # query parameters
      query_params = {}
      query_params[:'position'] = position unless position.nil?
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(dto)

      # form parameters
      post_files = []

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
    # Adds a text watermark to each slide of the presentation. Text watermark can be setup via method arguments or withing Shape DTO for detailed customization. Both options are applicable simultaneously. 
    # @param name Document name.
    # @param shape Shape DTO
    # @param font_height Watermark font height.
    # @param text Watermark text.
    # @param font_name Watermark font name.
    # @param font_color Watermark font color.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def create_watermark(name, shape = nil, font_height = nil, text = nil, font_name = nil, font_color = nil, password = nil, folder = nil, storage = nil)
      create_watermark_with_http_info(name, shape, font_height, text, font_name, font_color, password, folder, storage)
      nil
    end

    # Adds a text watermark to each slide of the presentation. Text watermark can be setup via method arguments or withing Shape DTO for detailed customization. Both options are applicable simultaneously. 
    # @param name Document name.
    # @param shape Shape DTO
    # @param font_height Watermark font height.
    # @param text Watermark text.
    # @param font_name Watermark font name.
    # @param font_color Watermark font color.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def create_watermark_with_http_info(name, shape = nil, font_height = nil, text = nil, font_name = nil, font_color = nil, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.create_watermark ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.create_watermark"
      end
      # resource path
      local_var_path = '/slides/{name}/watermark'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)

      # query parameters
      query_params = {}
      query_params[:'fontHeight'] = font_height unless font_height.nil?
      query_params[:'text'] = text unless text.nil?
      query_params[:'fontName'] = font_name unless font_name.nil?
      query_params[:'fontColor'] = font_color unless font_color.nil?
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(shape)

      # form parameters
      post_files = []

      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names)
      return data, status_code, headers
    end
    # Adds a text watermark to each slide of the presentation. Text watermark can be setup via method arguments or withing Shape DTO for detailed customization. Both options are applicable simultaneously. 
    # @param document Document data.
    # @param shape Shape DTO
    # @param font_height Watermark font height.
    # @param text Watermark text.
    # @param font_name Watermark font name.
    # @param font_color Watermark font color.
    # @param password Document password.
    def create_watermark_online(document, shape = nil, font_height = nil, text = nil, font_name = nil, font_color = nil, password = nil)
      data, _status_code, _headers = create_watermark_online_with_http_info(document, shape, font_height, text, font_name, font_color, password)
      data
    end

    # Adds a text watermark to each slide of the presentation. Text watermark can be setup via method arguments or withing Shape DTO for detailed customization. Both options are applicable simultaneously. 
    # @param document Document data.
    # @param shape Shape DTO
    # @param font_height Watermark font height.
    # @param text Watermark text.
    # @param font_name Watermark font name.
    # @param font_color Watermark font color.
    # @param password Document password.
    def create_watermark_online_with_http_info(document, shape = nil, font_height = nil, text = nil, font_name = nil, font_color = nil, password = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.create_watermark_online ...'
      end

      # verify the required parameter 'document' is set
      if @api_client.config.client_side_validation && document.nil?
        fail ArgumentError, "Missing the required parameter 'document' when calling SlidesApi.create_watermark_online"
      end
      # resource path
      local_var_path = '/slides/watermark'

      # query parameters
      query_params = {}
      query_params[:'fontHeight'] = font_height unless font_height.nil?
      query_params[:'text'] = text unless text.nil?
      query_params[:'fontName'] = font_name unless font_name.nil?
      query_params[:'fontColor'] = font_color unless font_color.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(shape)

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
        :return_type => 'File')
      return data, status_code, headers
    end
    # Remove animation from a slide.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_animation(name, slide_index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = delete_animation_with_http_info(name, slide_index, password, folder, storage)
      data
    end

    # Remove animation from a slide.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_animation_with_http_info(name, slide_index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_animation ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_animation"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_animation"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/animation'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

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
    # @param name Document name.
    # @param slide_index Slide index.
    # @param effect_index Index of the effect to be removed.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_animation_effect(name, slide_index, effect_index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = delete_animation_effect_with_http_info(name, slide_index, effect_index, password, folder, storage)
      data
    end

    # Remove an effect from slide animation.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param effect_index Index of the effect to be removed.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_animation_effect_with_http_info(name, slide_index, effect_index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_animation_effect ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_animation_effect"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_animation_effect"
      end
      # verify the required parameter 'effect_index' is set
      if @api_client.config.client_side_validation && effect_index.nil?
        fail ArgumentError, "Missing the required parameter 'effect_index' when calling SlidesApi.delete_animation_effect"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/animation/mainSequence/{effectIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'effectIndex', effect_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

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
    # @param name Document name.
    # @param slide_index Slide index.
    # @param sequence_index The index of an interactive sequence to be deleted.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_animation_interactive_sequence(name, slide_index, sequence_index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = delete_animation_interactive_sequence_with_http_info(name, slide_index, sequence_index, password, folder, storage)
      data
    end

    # Remove an interactive sequence from slide animation.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param sequence_index The index of an interactive sequence to be deleted.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_animation_interactive_sequence_with_http_info(name, slide_index, sequence_index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_animation_interactive_sequence ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_animation_interactive_sequence"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_animation_interactive_sequence"
      end
      # verify the required parameter 'sequence_index' is set
      if @api_client.config.client_side_validation && sequence_index.nil?
        fail ArgumentError, "Missing the required parameter 'sequence_index' when calling SlidesApi.delete_animation_interactive_sequence"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/animation/interactiveSequences/{sequenceIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'sequenceIndex', sequence_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

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
    # @param name Document name.
    # @param slide_index Slide index.
    # @param sequence_index Interactive sequence index.
    # @param effect_index Index of the effect to be removed.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_animation_interactive_sequence_effect(name, slide_index, sequence_index, effect_index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = delete_animation_interactive_sequence_effect_with_http_info(name, slide_index, sequence_index, effect_index, password, folder, storage)
      data
    end

    # Remove an effect from slide animation interactive sequence.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param sequence_index Interactive sequence index.
    # @param effect_index Index of the effect to be removed.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_animation_interactive_sequence_effect_with_http_info(name, slide_index, sequence_index, effect_index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_animation_interactive_sequence_effect ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_animation_interactive_sequence_effect"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_animation_interactive_sequence_effect"
      end
      # verify the required parameter 'sequence_index' is set
      if @api_client.config.client_side_validation && sequence_index.nil?
        fail ArgumentError, "Missing the required parameter 'sequence_index' when calling SlidesApi.delete_animation_interactive_sequence_effect"
      end
      # verify the required parameter 'effect_index' is set
      if @api_client.config.client_side_validation && effect_index.nil?
        fail ArgumentError, "Missing the required parameter 'effect_index' when calling SlidesApi.delete_animation_interactive_sequence_effect"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/animation/interactiveSequences/{sequenceIndex}/{effectIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'sequenceIndex', sequence_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'effectIndex', effect_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

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
    # @param name Document name.
    # @param slide_index Slide index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_animation_interactive_sequences(name, slide_index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = delete_animation_interactive_sequences_with_http_info(name, slide_index, password, folder, storage)
      data
    end

    # Clear all interactive sequences from slide animation.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_animation_interactive_sequences_with_http_info(name, slide_index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_animation_interactive_sequences ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_animation_interactive_sequences"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_animation_interactive_sequences"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/animation/interactiveSequences'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

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
    # @param name Document name.
    # @param slide_index Slide index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_animation_main_sequence(name, slide_index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = delete_animation_main_sequence_with_http_info(name, slide_index, password, folder, storage)
      data
    end

    # Clear main sequence in slide animation.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_animation_main_sequence_with_http_info(name, slide_index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_animation_main_sequence ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_animation_main_sequence"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_animation_main_sequence"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/animation/mainSequence'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

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
    # Remove background from a slide.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_background(name, slide_index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = delete_background_with_http_info(name, slide_index, password, folder, storage)
      data
    end

    # Remove background from a slide.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_background_with_http_info(name, slide_index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_background ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_background"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_background"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/background'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

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
    # Delete a category from a chart.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param category_index Category index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_chart_category(name, slide_index, shape_index, category_index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = delete_chart_category_with_http_info(name, slide_index, shape_index, category_index, password, folder, storage)
      data
    end

    # Delete a category from a chart.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param category_index Category index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_chart_category_with_http_info(name, slide_index, shape_index, category_index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_chart_category ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_chart_category"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_chart_category"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.delete_chart_category"
      end
      # verify the required parameter 'category_index' is set
      if @api_client.config.client_side_validation && category_index.nil?
        fail ArgumentError, "Missing the required parameter 'category_index' when calling SlidesApi.delete_chart_category"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/categories/{categoryIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'categoryIndex', category_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

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
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param series_index Series index.
    # @param point_index Data point index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_chart_data_point(name, slide_index, shape_index, series_index, point_index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = delete_chart_data_point_with_http_info(name, slide_index, shape_index, series_index, point_index, password, folder, storage)
      data
    end

    # Delete a data point from a chart series.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param series_index Series index.
    # @param point_index Data point index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_chart_data_point_with_http_info(name, slide_index, shape_index, series_index, point_index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_chart_data_point ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_chart_data_point"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_chart_data_point"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.delete_chart_data_point"
      end
      # verify the required parameter 'series_index' is set
      if @api_client.config.client_side_validation && series_index.nil?
        fail ArgumentError, "Missing the required parameter 'series_index' when calling SlidesApi.delete_chart_data_point"
      end
      # verify the required parameter 'point_index' is set
      if @api_client.config.client_side_validation && point_index.nil?
        fail ArgumentError, "Missing the required parameter 'point_index' when calling SlidesApi.delete_chart_data_point"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/series/{seriesIndex}/dataPoints/{pointIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'seriesIndex', series_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'pointIndex', point_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

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
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index (must be a chart).
    # @param series_index Series index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_chart_series(name, slide_index, shape_index, series_index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = delete_chart_series_with_http_info(name, slide_index, shape_index, series_index, password, folder, storage)
      data
    end

    # Delete a series from a chart.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index (must be a chart).
    # @param series_index Series index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_chart_series_with_http_info(name, slide_index, shape_index, series_index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_chart_series ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_chart_series"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_chart_series"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.delete_chart_series"
      end
      # verify the required parameter 'series_index' is set
      if @api_client.config.client_side_validation && series_index.nil?
        fail ArgumentError, "Missing the required parameter 'series_index' when calling SlidesApi.delete_chart_series"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/series/{seriesIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'seriesIndex', series_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

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
    # Removes comments of the specified author from the presentation. If author value is not provided all comments will be removed. 
    # @param name Document name.
    # @param author Author of comments.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_comments(name, author = nil, password = nil, folder = nil, storage = nil)
      delete_comments_with_http_info(name, author, password, folder, storage)
      nil
    end

    # Removes comments of the specified author from the presentation. If author value is not provided all comments will be removed. 
    # @param name Document name.
    # @param author Author of comments.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_comments_with_http_info(name, author = nil, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_comments ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_comments"
      end
      # resource path
      local_var_path = '/slides/{name}/comments'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)

      # query parameters
      query_params = {}
      query_params[:'author'] = author unless author.nil?
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names)
      return data, status_code, headers
    end
    # Removes comments of the specified author from the presentation. If author value is not provided all comments will be removed. 
    # @param document Document data.
    # @param author Author of comments.
    # @param password Document password.
    def delete_comments_online(document, author = nil, password = nil)
      data, _status_code, _headers = delete_comments_online_with_http_info(document, author, password)
      data
    end

    # Removes comments of the specified author from the presentation. If author value is not provided all comments will be removed. 
    # @param document Document data.
    # @param author Author of comments.
    # @param password Document password.
    def delete_comments_online_with_http_info(document, author = nil, password = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_comments_online ...'
      end

      # verify the required parameter 'document' is set
      if @api_client.config.client_side_validation && document.nil?
        fail ArgumentError, "Missing the required parameter 'document' when calling SlidesApi.delete_comments_online"
      end
      # resource path
      local_var_path = '/slides/comments/delete'

      # query parameters
      query_params = {}
      query_params[:'author'] = author unless author.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

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
        :return_type => 'File')
      return data, status_code, headers
    end
    # Clean document properties.
    # @param name Document name.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_document_properties(name, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = delete_document_properties_with_http_info(name, password, folder, storage)
      data
    end

    # Clean document properties.
    # @param name Document name.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_document_properties_with_http_info(name, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_document_properties ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_document_properties"
      end
      # resource path
      local_var_path = '/slides/{name}/documentproperties'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

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
    # @param name Document name.
    # @param property_name The property name.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_document_property(name, property_name, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = delete_document_property_with_http_info(name, property_name, password, folder, storage)
      data
    end

    # Delete document property.
    # @param name Document name.
    # @param property_name The property name.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_document_property_with_http_info(name, property_name, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_document_property ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_document_property"
      end
      # verify the required parameter 'property_name' is set
      if @api_client.config.client_side_validation && property_name.nil?
        fail ArgumentError, "Missing the required parameter 'property_name' when calling SlidesApi.delete_document_property"
      end
      # resource path
      local_var_path = '/slides/{name}/documentproperties/{propertyName}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'propertyName', property_name)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

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
    # Delete file
    # @param path File path e.g. '/folder/file.ext'
    # @param storage_name Storage name
    # @param version_id File version ID to delete
    def delete_file(path, storage_name = nil, version_id = nil)
      delete_file_with_http_info(path, storage_name, version_id)
      nil
    end

    # Delete file
    # @param path File path e.g. '/folder/file.ext'
    # @param storage_name Storage name
    # @param version_id File version ID to delete
    def delete_file_with_http_info(path, storage_name = nil, version_id = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_file ...'
      end

      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling SlidesApi.delete_file"
      end
      # resource path
      local_var_path = '/slides/storage/file/{path}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', path)

      # query parameters
      query_params = {}
      query_params[:'storageName'] = storage_name unless storage_name.nil?
      query_params[:'versionId'] = version_id unless version_id.nil?

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names)
      return data, status_code, headers
    end
    # Delete folder
    # @param path Folder path e.g. '/folder'
    # @param storage_name Storage name
    # @param recursive Enable to delete folders, subfolders and files
    def delete_folder(path, storage_name = nil, recursive = nil)
      delete_folder_with_http_info(path, storage_name, recursive)
      nil
    end

    # Delete folder
    # @param path Folder path e.g. '/folder'
    # @param storage_name Storage name
    # @param recursive Enable to delete folders, subfolders and files
    def delete_folder_with_http_info(path, storage_name = nil, recursive = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_folder ...'
      end

      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling SlidesApi.delete_folder"
      end
      # resource path
      local_var_path = '/slides/storage/folder/{path}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', path)

      # query parameters
      query_params = {}
      query_params[:'storageName'] = storage_name unless storage_name.nil?
      query_params[:'recursive'] = recursive unless recursive.nil?

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names)
      return data, status_code, headers
    end
    # Remove notes slide.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_notes_slide(name, slide_index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = delete_notes_slide_with_http_info(name, slide_index, password, folder, storage)
      data
    end

    # Remove notes slide.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_notes_slide_with_http_info(name, slide_index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_notes_slide ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_notes_slide"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_notes_slide"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/notesSlide'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

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
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param paragraph_index Paragraph index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_notes_slide_paragraph(name, slide_index, shape_index, paragraph_index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = delete_notes_slide_paragraph_with_http_info(name, slide_index, shape_index, paragraph_index, password, folder, storage)
      data
    end

    # Remove a paragraph.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param paragraph_index Paragraph index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_notes_slide_paragraph_with_http_info(name, slide_index, shape_index, paragraph_index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_notes_slide_paragraph ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_notes_slide_paragraph"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_notes_slide_paragraph"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.delete_notes_slide_paragraph"
      end
      # verify the required parameter 'paragraph_index' is set
      if @api_client.config.client_side_validation && paragraph_index.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_index' when calling SlidesApi.delete_notes_slide_paragraph"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs/{paragraphIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'paragraphIndex', paragraph_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

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
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param paragraphs The indices of the shapes to be deleted; delete all by default.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_notes_slide_paragraphs(name, slide_index, shape_index, paragraphs = nil, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = delete_notes_slide_paragraphs_with_http_info(name, slide_index, shape_index, paragraphs, password, folder, storage)
      data
    end

    # Remove a range of paragraphs.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param paragraphs The indices of the shapes to be deleted; delete all by default.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_notes_slide_paragraphs_with_http_info(name, slide_index, shape_index, paragraphs = nil, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_notes_slide_paragraphs ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_notes_slide_paragraphs"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_notes_slide_paragraphs"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.delete_notes_slide_paragraphs"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)

      # query parameters
      query_params = {}
      query_params[:'paragraphs'] = paragraphs unless paragraphs.nil?
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

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
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param paragraph_index Paragraph index.
    # @param portion_index Portion index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_notes_slide_portion(name, slide_index, shape_index, paragraph_index, portion_index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = delete_notes_slide_portion_with_http_info(name, slide_index, shape_index, paragraph_index, portion_index, password, folder, storage)
      data
    end

    # Remove a portion.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param paragraph_index Paragraph index.
    # @param portion_index Portion index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_notes_slide_portion_with_http_info(name, slide_index, shape_index, paragraph_index, portion_index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_notes_slide_portion ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_notes_slide_portion"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_notes_slide_portion"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.delete_notes_slide_portion"
      end
      # verify the required parameter 'paragraph_index' is set
      if @api_client.config.client_side_validation && paragraph_index.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_index' when calling SlidesApi.delete_notes_slide_portion"
      end
      # verify the required parameter 'portion_index' is set
      if @api_client.config.client_side_validation && portion_index.nil?
        fail ArgumentError, "Missing the required parameter 'portion_index' when calling SlidesApi.delete_notes_slide_portion"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'paragraphIndex', paragraph_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'portionIndex', portion_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

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
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param paragraph_index Paragraph index.
    # @param portions The indices of the shapes to be deleted; delete all by default.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_notes_slide_portions(name, slide_index, shape_index, paragraph_index, portions = nil, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = delete_notes_slide_portions_with_http_info(name, slide_index, shape_index, paragraph_index, portions, password, folder, storage)
      data
    end

    # Remove a range of portions.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param paragraph_index Paragraph index.
    # @param portions The indices of the shapes to be deleted; delete all by default.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_notes_slide_portions_with_http_info(name, slide_index, shape_index, paragraph_index, portions = nil, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_notes_slide_portions ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_notes_slide_portions"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_notes_slide_portions"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.delete_notes_slide_portions"
      end
      # verify the required parameter 'paragraph_index' is set
      if @api_client.config.client_side_validation && paragraph_index.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_index' when calling SlidesApi.delete_notes_slide_portions"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'paragraphIndex', paragraph_index)

      # query parameters
      query_params = {}
      query_params[:'portions'] = portions unless portions.nil?
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

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
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_notes_slide_shape(name, slide_index, shape_index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = delete_notes_slide_shape_with_http_info(name, slide_index, shape_index, password, folder, storage)
      data
    end

    # Remove a shape.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_notes_slide_shape_with_http_info(name, slide_index, shape_index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_notes_slide_shape ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_notes_slide_shape"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_notes_slide_shape"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.delete_notes_slide_shape"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

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
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shapes The indices of the shapes to be deleted; delete all by default.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_notes_slide_shapes(name, slide_index, shapes = nil, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = delete_notes_slide_shapes_with_http_info(name, slide_index, shapes, password, folder, storage)
      data
    end

    # Remove a range of shapes.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shapes The indices of the shapes to be deleted; delete all by default.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_notes_slide_shapes_with_http_info(name, slide_index, shapes = nil, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_notes_slide_shapes ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_notes_slide_shapes"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_notes_slide_shapes"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/notesSlide/shapes'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)

      # query parameters
      query_params = {}
      query_params[:'shapes'] = shapes unless shapes.nil?
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

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
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param paragraph_index Paragraph index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_paragraph(name, slide_index, shape_index, paragraph_index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = delete_paragraph_with_http_info(name, slide_index, shape_index, paragraph_index, password, folder, storage)
      data
    end

    # Remove a paragraph.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param paragraph_index Paragraph index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_paragraph_with_http_info(name, slide_index, shape_index, paragraph_index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_paragraph ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_paragraph"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_paragraph"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.delete_paragraph"
      end
      # verify the required parameter 'paragraph_index' is set
      if @api_client.config.client_side_validation && paragraph_index.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_index' when calling SlidesApi.delete_paragraph"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'paragraphIndex', paragraph_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

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
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param paragraphs The indices of the shapes to be deleted; delete all by default.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_paragraphs(name, slide_index, shape_index, paragraphs = nil, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = delete_paragraphs_with_http_info(name, slide_index, shape_index, paragraphs, password, folder, storage)
      data
    end

    # Remove a range of paragraphs.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param paragraphs The indices of the shapes to be deleted; delete all by default.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_paragraphs_with_http_info(name, slide_index, shape_index, paragraphs = nil, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_paragraphs ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_paragraphs"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_paragraphs"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.delete_paragraphs"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)

      # query parameters
      query_params = {}
      query_params[:'paragraphs'] = paragraphs unless paragraphs.nil?
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

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
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param paragraph_index Paragraph index.
    # @param portion_index Portion index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_portion(name, slide_index, shape_index, paragraph_index, portion_index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = delete_portion_with_http_info(name, slide_index, shape_index, paragraph_index, portion_index, password, folder, storage)
      data
    end

    # Remove a portion.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param paragraph_index Paragraph index.
    # @param portion_index Portion index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_portion_with_http_info(name, slide_index, shape_index, paragraph_index, portion_index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_portion ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_portion"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_portion"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.delete_portion"
      end
      # verify the required parameter 'paragraph_index' is set
      if @api_client.config.client_side_validation && paragraph_index.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_index' when calling SlidesApi.delete_portion"
      end
      # verify the required parameter 'portion_index' is set
      if @api_client.config.client_side_validation && portion_index.nil?
        fail ArgumentError, "Missing the required parameter 'portion_index' when calling SlidesApi.delete_portion"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'paragraphIndex', paragraph_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'portionIndex', portion_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

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
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param paragraph_index Paragraph index.
    # @param portions The indices of the shapes to be deleted; delete all by default.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_portions(name, slide_index, shape_index, paragraph_index, portions = nil, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = delete_portions_with_http_info(name, slide_index, shape_index, paragraph_index, portions, password, folder, storage)
      data
    end

    # Remove a range of portions.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param paragraph_index Paragraph index.
    # @param portions The indices of the shapes to be deleted; delete all by default.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_portions_with_http_info(name, slide_index, shape_index, paragraph_index, portions = nil, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_portions ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_portions"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_portions"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.delete_portions"
      end
      # verify the required parameter 'paragraph_index' is set
      if @api_client.config.client_side_validation && paragraph_index.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_index' when calling SlidesApi.delete_portions"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'paragraphIndex', paragraph_index)

      # query parameters
      query_params = {}
      query_params[:'portions'] = portions unless portions.nil?
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

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
    # Resets all presentation protection settings. 
    # @param name Document name.
    # @param password Presentation password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_protection(name, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = delete_protection_with_http_info(name, password, folder, storage)
      data
    end

    # Resets all presentation protection settings. 
    # @param name Document name.
    # @param password Presentation password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_protection_with_http_info(name, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_protection ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_protection"
      end
      # resource path
      local_var_path = '/slides/{name}/protection'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'ProtectionProperties')
      return data, status_code, headers
    end
    # Resets all presentation protection settings. 
    # @param document Document data.
    # @param password Presentation password.
    def delete_protection_online(document, password)
      data, _status_code, _headers = delete_protection_online_with_http_info(document, password)
      data
    end

    # Resets all presentation protection settings. 
    # @param document Document data.
    # @param password Presentation password.
    def delete_protection_online_with_http_info(document, password)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_protection_online ...'
      end

      # verify the required parameter 'document' is set
      if @api_client.config.client_side_validation && document.nil?
        fail ArgumentError, "Missing the required parameter 'document' when calling SlidesApi.delete_protection_online"
      end
      # verify the required parameter 'password' is set
      if @api_client.config.client_side_validation && password.nil?
        fail ArgumentError, "Missing the required parameter 'password' when calling SlidesApi.delete_protection_online"
      end
      # resource path
      local_var_path = '/slides/protection/delete'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])
      header_params[:'password'] = password

      # http body (model)
      post_body = nil

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
        :return_type => 'File')
      return data, status_code, headers
    end
    # Delete a presentation section.
    # @param name Document name.
    # @param section_index Section index.
    # @param with_slides True to delete the slides related to the deleted section; move them to the remaining sections otherwise.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_section(name, section_index, with_slides = nil, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = delete_section_with_http_info(name, section_index, with_slides, password, folder, storage)
      data
    end

    # Delete a presentation section.
    # @param name Document name.
    # @param section_index Section index.
    # @param with_slides True to delete the slides related to the deleted section; move them to the remaining sections otherwise.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_section_with_http_info(name, section_index, with_slides = nil, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_section ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_section"
      end
      # verify the required parameter 'section_index' is set
      if @api_client.config.client_side_validation && section_index.nil?
        fail ArgumentError, "Missing the required parameter 'section_index' when calling SlidesApi.delete_section"
      end
      # resource path
      local_var_path = '/slides/{name}/sections/{sectionIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'sectionIndex', section_index)

      # query parameters
      query_params = {}
      query_params[:'withSlides'] = with_slides unless with_slides.nil?
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Sections')
      return data, status_code, headers
    end
    # Delete presentation sections.
    # @param name Document name.
    # @param sections The indices of the sections to be deleted; delete all by default.
    # @param with_slides True to delete the slides related to the deleted sections; move them to the remaining sections otherwise.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_sections(name, sections = nil, with_slides = nil, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = delete_sections_with_http_info(name, sections, with_slides, password, folder, storage)
      data
    end

    # Delete presentation sections.
    # @param name Document name.
    # @param sections The indices of the sections to be deleted; delete all by default.
    # @param with_slides True to delete the slides related to the deleted sections; move them to the remaining sections otherwise.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_sections_with_http_info(name, sections = nil, with_slides = nil, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_sections ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_sections"
      end
      # resource path
      local_var_path = '/slides/{name}/sections'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)

      # query parameters
      query_params = {}
      query_params[:'sections'] = sections unless sections.nil?
      query_params[:'withSlides'] = with_slides unless with_slides.nil?
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Sections')
      return data, status_code, headers
    end
    # Remove a shape.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_shape(name, slide_index, shape_index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = delete_shape_with_http_info(name, slide_index, shape_index, password, folder, storage)
      data
    end

    # Remove a shape.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_shape_with_http_info(name, slide_index, shape_index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_shape ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_shape"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_shape"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.delete_shape"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

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
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shapes The indices of the shapes to be deleted; delete all by default.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_shapes(name, slide_index, shapes = nil, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = delete_shapes_with_http_info(name, slide_index, shapes, password, folder, storage)
      data
    end

    # Remove a range of shapes.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shapes The indices of the shapes to be deleted; delete all by default.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_shapes_with_http_info(name, slide_index, shapes = nil, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_shapes ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_shapes"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_shapes"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)

      # query parameters
      query_params = {}
      query_params[:'shapes'] = shapes unless shapes.nil?
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

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
    # Delete a presentation slide by index.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_slide(name, slide_index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = delete_slide_with_http_info(name, slide_index, password, folder, storage)
      data
    end

    # Delete a presentation slide by index.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_slide_with_http_info(name, slide_index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_slide ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_slide"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_slide"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

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
    # Removes comments of the specified author from the slide. If author value is not provided all comments will be removed. 
    # @param name Document name.
    # @param slide_index Slide index.
    # @param author Author of comments.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_slide_comments(name, slide_index, author = nil, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = delete_slide_comments_with_http_info(name, slide_index, author, password, folder, storage)
      data
    end

    # Removes comments of the specified author from the slide. If author value is not provided all comments will be removed. 
    # @param name Document name.
    # @param slide_index Slide index.
    # @param author Author of comments.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_slide_comments_with_http_info(name, slide_index, author = nil, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_slide_comments ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_slide_comments"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_slide_comments"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/comments'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)

      # query parameters
      query_params = {}
      query_params[:'author'] = author unless author.nil?
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'SlideComments')
      return data, status_code, headers
    end
    # Removes comments of the specified author from the slide. If author value is not provided all comments will be removed.              
    # @param document Document data.
    # @param slide_index 
    # @param author Author of comments.
    # @param password Document password.
    def delete_slide_comments_online(document, slide_index, author = nil, password = nil)
      data, _status_code, _headers = delete_slide_comments_online_with_http_info(document, slide_index, author, password)
      data
    end

    # Removes comments of the specified author from the slide. If author value is not provided all comments will be removed.              
    # @param document Document data.
    # @param slide_index 
    # @param author Author of comments.
    # @param password Document password.
    def delete_slide_comments_online_with_http_info(document, slide_index, author = nil, password = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_slide_comments_online ...'
      end

      # verify the required parameter 'document' is set
      if @api_client.config.client_side_validation && document.nil?
        fail ArgumentError, "Missing the required parameter 'document' when calling SlidesApi.delete_slide_comments_online"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_slide_comments_online"
      end
      # resource path
      local_var_path = '/slides/slides/{slideIndex}/comments/delete'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)

      # query parameters
      query_params = {}
      query_params[:'author'] = author unless author.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

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
        :return_type => 'File')
      return data, status_code, headers
    end
    # Delete presentation slides.
    # @param name Document name.
    # @param slides The indices of the slides to be deleted; delete all by default.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_slides(name, slides = nil, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = delete_slides_with_http_info(name, slides, password, folder, storage)
      data
    end

    # Delete presentation slides.
    # @param name Document name.
    # @param slides The indices of the slides to be deleted; delete all by default.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_slides_with_http_info(name, slides = nil, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_slides ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_slides"
      end
      # resource path
      local_var_path = '/slides/{name}/slides'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)

      # query parameters
      query_params = {}
      query_params[:'slides'] = slides unless slides.nil?
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

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
    # Remove a shape (for smart art and group shapes).
    # @param name Document name.
    # @param slide_index Slide index.
    # @param path Shape path.
    # @param shape_index Shape index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_subshape(name, slide_index, path, shape_index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = delete_subshape_with_http_info(name, slide_index, path, shape_index, password, folder, storage)
      data
    end

    # Remove a shape (for smart art and group shapes).
    # @param name Document name.
    # @param slide_index Slide index.
    # @param path Shape path.
    # @param shape_index Shape index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_subshape_with_http_info(name, slide_index, path, shape_index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_subshape ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_subshape"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_subshape"
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling SlidesApi.delete_subshape"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.delete_subshape"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', path)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

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
    # Remove a paragraph (for smart art and group shapes).
    # @param name Document name.
    # @param slide_index Slide index.
    # @param path Shape path.
    # @param shape_index Shape index.
    # @param paragraph_index Paragraph index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_subshape_paragraph(name, slide_index, path, shape_index, paragraph_index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = delete_subshape_paragraph_with_http_info(name, slide_index, path, shape_index, paragraph_index, password, folder, storage)
      data
    end

    # Remove a paragraph (for smart art and group shapes).
    # @param name Document name.
    # @param slide_index Slide index.
    # @param path Shape path.
    # @param shape_index Shape index.
    # @param paragraph_index Paragraph index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_subshape_paragraph_with_http_info(name, slide_index, path, shape_index, paragraph_index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_subshape_paragraph ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_subshape_paragraph"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_subshape_paragraph"
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling SlidesApi.delete_subshape_paragraph"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.delete_subshape_paragraph"
      end
      # verify the required parameter 'paragraph_index' is set
      if @api_client.config.client_side_validation && paragraph_index.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_index' when calling SlidesApi.delete_subshape_paragraph"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', path)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'paragraphIndex', paragraph_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

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
    # @param name Document name.
    # @param slide_index Slide index.
    # @param path Shape path.
    # @param shape_index Shape index.
    # @param paragraphs The indices of the shapes to be deleted; delete all by default.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_subshape_paragraphs(name, slide_index, path, shape_index, paragraphs = nil, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = delete_subshape_paragraphs_with_http_info(name, slide_index, path, shape_index, paragraphs, password, folder, storage)
      data
    end

    # Remove a range of paragraphs (for smart art and group shapes).
    # @param name Document name.
    # @param slide_index Slide index.
    # @param path Shape path.
    # @param shape_index Shape index.
    # @param paragraphs The indices of the shapes to be deleted; delete all by default.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_subshape_paragraphs_with_http_info(name, slide_index, path, shape_index, paragraphs = nil, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_subshape_paragraphs ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_subshape_paragraphs"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_subshape_paragraphs"
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling SlidesApi.delete_subshape_paragraphs"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.delete_subshape_paragraphs"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', path)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)

      # query parameters
      query_params = {}
      query_params[:'paragraphs'] = paragraphs unless paragraphs.nil?
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

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
    # @param name Document name.
    # @param slide_index Slide index.
    # @param path Shape path.
    # @param shape_index Shape index.
    # @param paragraph_index Paragraph index.
    # @param portion_index Portion index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_subshape_portion(name, slide_index, path, shape_index, paragraph_index, portion_index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = delete_subshape_portion_with_http_info(name, slide_index, path, shape_index, paragraph_index, portion_index, password, folder, storage)
      data
    end

    # Remove a portion (for smart art and group shapes).
    # @param name Document name.
    # @param slide_index Slide index.
    # @param path Shape path.
    # @param shape_index Shape index.
    # @param paragraph_index Paragraph index.
    # @param portion_index Portion index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_subshape_portion_with_http_info(name, slide_index, path, shape_index, paragraph_index, portion_index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_subshape_portion ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_subshape_portion"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_subshape_portion"
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling SlidesApi.delete_subshape_portion"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.delete_subshape_portion"
      end
      # verify the required parameter 'paragraph_index' is set
      if @api_client.config.client_side_validation && paragraph_index.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_index' when calling SlidesApi.delete_subshape_portion"
      end
      # verify the required parameter 'portion_index' is set
      if @api_client.config.client_side_validation && portion_index.nil?
        fail ArgumentError, "Missing the required parameter 'portion_index' when calling SlidesApi.delete_subshape_portion"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', path)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'paragraphIndex', paragraph_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'portionIndex', portion_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

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
    # @param name Document name.
    # @param slide_index Slide index.
    # @param path Shape path.
    # @param shape_index Shape index.
    # @param paragraph_index Paragraph index.
    # @param portions The indices of the shapes to be deleted; delete all by default.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_subshape_portions(name, slide_index, path, shape_index, paragraph_index, portions = nil, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = delete_subshape_portions_with_http_info(name, slide_index, path, shape_index, paragraph_index, portions, password, folder, storage)
      data
    end

    # Remove a range of portions (for smart art and group shapes).
    # @param name Document name.
    # @param slide_index Slide index.
    # @param path Shape path.
    # @param shape_index Shape index.
    # @param paragraph_index Paragraph index.
    # @param portions The indices of the shapes to be deleted; delete all by default.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_subshape_portions_with_http_info(name, slide_index, path, shape_index, paragraph_index, portions = nil, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_subshape_portions ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_subshape_portions"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_subshape_portions"
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling SlidesApi.delete_subshape_portions"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.delete_subshape_portions"
      end
      # verify the required parameter 'paragraph_index' is set
      if @api_client.config.client_side_validation && paragraph_index.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_index' when calling SlidesApi.delete_subshape_portions"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', path)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'paragraphIndex', paragraph_index)

      # query parameters
      query_params = {}
      query_params[:'portions'] = portions unless portions.nil?
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

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
    # Remove a range of shapes (for smart art and group shapes).
    # @param name Document name.
    # @param slide_index Slide index.
    # @param path Shape path.
    # @param shapes The indices of the shapes to be deleted; delete all by default.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_subshapes(name, slide_index, path, shapes = nil, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = delete_subshapes_with_http_info(name, slide_index, path, shapes, password, folder, storage)
      data
    end

    # Remove a range of shapes (for smart art and group shapes).
    # @param name Document name.
    # @param slide_index Slide index.
    # @param path Shape path.
    # @param shapes The indices of the shapes to be deleted; delete all by default.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_subshapes_with_http_info(name, slide_index, path, shapes = nil, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_subshapes ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_subshapes"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.delete_subshapes"
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling SlidesApi.delete_subshapes"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{path}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', path)

      # query parameters
      query_params = {}
      query_params[:'shapes'] = shapes unless shapes.nil?
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

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
    # Removes shapes with name \"watermark\" from the presentation.
    # @param name Document name.
    # @param shape_name Name of the watermark shape. If null, default value \"watermark\"is used.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_watermark(name, shape_name = nil, password = nil, folder = nil, storage = nil)
      delete_watermark_with_http_info(name, shape_name, password, folder, storage)
      nil
    end

    # Removes shapes with name \&quot;watermark\&quot; from the presentation.
    # @param name Document name.
    # @param shape_name Name of the watermark shape. If null, default value \"watermark\"is used.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def delete_watermark_with_http_info(name, shape_name = nil, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_watermark ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.delete_watermark"
      end
      # resource path
      local_var_path = '/slides/{name}/watermark/delete'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)

      # query parameters
      query_params = {}
      query_params[:'shapeName'] = shape_name unless shape_name.nil?
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names)
      return data, status_code, headers
    end
    # Removes shapes with name \"watermark\" from the presentation.
    # @param document Document data.
    # @param shape_name Name of the watermark shape. If null, default value \"watermark\"is used.
    # @param password Document password.
    def delete_watermark_online(document, shape_name = nil, password = nil)
      data, _status_code, _headers = delete_watermark_online_with_http_info(document, shape_name, password)
      data
    end

    # Removes shapes with name \&quot;watermark\&quot; from the presentation.
    # @param document Document data.
    # @param shape_name Name of the watermark shape. If null, default value \"watermark\"is used.
    # @param password Document password.
    def delete_watermark_online_with_http_info(document, shape_name = nil, password = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.delete_watermark_online ...'
      end

      # verify the required parameter 'document' is set
      if @api_client.config.client_side_validation && document.nil?
        fail ArgumentError, "Missing the required parameter 'document' when calling SlidesApi.delete_watermark_online"
      end
      # resource path
      local_var_path = '/slides/watermark/delete'

      # query parameters
      query_params = {}
      query_params[:'shapeName'] = shape_name unless shape_name.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

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
        :return_type => 'File')
      return data, status_code, headers
    end
    # Download file
    # @param path File path e.g. '/folder/file.ext'
    # @param storage_name Storage name
    # @param version_id File version ID to download
    def download_file(path, storage_name = nil, version_id = nil)
      data, _status_code, _headers = download_file_with_http_info(path, storage_name, version_id)
      data
    end

    # Download file
    # @param path File path e.g. '/folder/file.ext'
    # @param storage_name Storage name
    # @param version_id File version ID to download
    def download_file_with_http_info(path, storage_name = nil, version_id = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.download_file ...'
      end

      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling SlidesApi.download_file"
      end
      # resource path
      local_var_path = '/slides/storage/file/{path}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', path)

      # query parameters
      query_params = {}
      query_params[:'storageName'] = storage_name unless storage_name.nil?
      query_params[:'versionId'] = version_id unless version_id.nil?

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
    # Get image in specified format.
    # @param name Document name.
    # @param index Image index.
    # @param format Export format (png, jpg, gif).
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def download_image(name, index, format, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = download_image_with_http_info(name, index, format, password, folder, storage)
      data
    end

    # Get image in specified format.
    # @param name Document name.
    # @param index Image index.
    # @param format Export format (png, jpg, gif).
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def download_image_with_http_info(name, index, format, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.download_image ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.download_image"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling SlidesApi.download_image"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling SlidesApi.download_image"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Jpeg', 'Png', 'Gif', 'Bmp', 'Tiff'].any?{ |s| s.casecmp(format)==0 }
        fail ArgumentError, "Value " + format + " is not supported for 'format', must be one of Jpeg, Png, Gif, Bmp, Tiff"
      end
      # resource path
      local_var_path = '/slides/{name}/images/{index}/{format}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'index', index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'format', format)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

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
    # Get image binary data.
    # @param name Document name.
    # @param index Image index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def download_image_default_format(name, index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = download_image_default_format_with_http_info(name, index, password, folder, storage)
      data
    end

    # Get image binary data.
    # @param name Document name.
    # @param index Image index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def download_image_default_format_with_http_info(name, index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.download_image_default_format ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.download_image_default_format"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling SlidesApi.download_image_default_format"
      end
      # resource path
      local_var_path = '/slides/{name}/images/{index}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'index', index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

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
    # Get image binary data.
    # @param document Document data.
    # @param index Image index.
    # @param password Document password.
    def download_image_default_format_online(document, index, password = nil)
      data, _status_code, _headers = download_image_default_format_online_with_http_info(document, index, password)
      data
    end

    # Get image binary data.
    # @param document Document data.
    # @param index Image index.
    # @param password Document password.
    def download_image_default_format_online_with_http_info(document, index, password = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.download_image_default_format_online ...'
      end

      # verify the required parameter 'document' is set
      if @api_client.config.client_side_validation && document.nil?
        fail ArgumentError, "Missing the required parameter 'document' when calling SlidesApi.download_image_default_format_online"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling SlidesApi.download_image_default_format_online"
      end
      # resource path
      local_var_path = '/slides/images/{index}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'index', index)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

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
        :return_type => 'File')
      return data, status_code, headers
    end
    # Get image in specified format.
    # @param document Document data.
    # @param index Image index.
    # @param format Export format (png, jpg, gif).
    # @param password Document password.
    def download_image_online(document, index, format, password = nil)
      data, _status_code, _headers = download_image_online_with_http_info(document, index, format, password)
      data
    end

    # Get image in specified format.
    # @param document Document data.
    # @param index Image index.
    # @param format Export format (png, jpg, gif).
    # @param password Document password.
    def download_image_online_with_http_info(document, index, format, password = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.download_image_online ...'
      end

      # verify the required parameter 'document' is set
      if @api_client.config.client_side_validation && document.nil?
        fail ArgumentError, "Missing the required parameter 'document' when calling SlidesApi.download_image_online"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling SlidesApi.download_image_online"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling SlidesApi.download_image_online"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Jpeg', 'Png', 'Gif', 'Bmp', 'Tiff'].any?{ |s| s.casecmp(format)==0 }
        fail ArgumentError, "Value " + format + " is not supported for 'format', must be one of Jpeg, Png, Gif, Bmp, Tiff"
      end
      # resource path
      local_var_path = '/slides/images/{index}/{format}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'index', index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'format', format)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

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
        :return_type => 'File')
      return data, status_code, headers
    end
    # Get all presentation images in specified format.
    # @param name 
    # @param format Export format (png, jpg, gif).
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def download_images(name, format, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = download_images_with_http_info(name, format, password, folder, storage)
      data
    end

    # Get all presentation images in specified format.
    # @param name 
    # @param format Export format (png, jpg, gif).
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def download_images_with_http_info(name, format, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.download_images ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.download_images"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling SlidesApi.download_images"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Jpeg', 'Png', 'Gif', 'Bmp', 'Tiff'].any?{ |s| s.casecmp(format)==0 }
        fail ArgumentError, "Value " + format + " is not supported for 'format', must be one of Jpeg, Png, Gif, Bmp, Tiff"
      end
      # resource path
      local_var_path = '/slides/{name}/images/download/{format}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'format', format)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

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
    # Get all presentation images.
    # @param name 
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def download_images_default_format(name, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = download_images_default_format_with_http_info(name, password, folder, storage)
      data
    end

    # Get all presentation images.
    # @param name 
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def download_images_default_format_with_http_info(name, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.download_images_default_format ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.download_images_default_format"
      end
      # resource path
      local_var_path = '/slides/{name}/images/download'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

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
    # Get all presentation images.
    # @param document Document data.
    # @param password Document password.
    def download_images_default_format_online(document, password = nil)
      data, _status_code, _headers = download_images_default_format_online_with_http_info(document, password)
      data
    end

    # Get all presentation images.
    # @param document Document data.
    # @param password Document password.
    def download_images_default_format_online_with_http_info(document, password = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.download_images_default_format_online ...'
      end

      # verify the required parameter 'document' is set
      if @api_client.config.client_side_validation && document.nil?
        fail ArgumentError, "Missing the required parameter 'document' when calling SlidesApi.download_images_default_format_online"
      end
      # resource path
      local_var_path = '/slides/images/download'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

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
        :return_type => 'File')
      return data, status_code, headers
    end
    # Get all presentation images in specified format. 
    # @param document Document data.
    # @param format Export format (png, jpg, gif).
    # @param password Document password.
    def download_images_online(document, format, password = nil)
      data, _status_code, _headers = download_images_online_with_http_info(document, format, password)
      data
    end

    # Get all presentation images in specified format. 
    # @param document Document data.
    # @param format Export format (png, jpg, gif).
    # @param password Document password.
    def download_images_online_with_http_info(document, format, password = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.download_images_online ...'
      end

      # verify the required parameter 'document' is set
      if @api_client.config.client_side_validation && document.nil?
        fail ArgumentError, "Missing the required parameter 'document' when calling SlidesApi.download_images_online"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling SlidesApi.download_images_online"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Jpeg', 'Png', 'Gif', 'Bmp', 'Tiff'].any?{ |s| s.casecmp(format)==0 }
        fail ArgumentError, "Value " + format + " is not supported for 'format', must be one of Jpeg, Png, Gif, Bmp, Tiff"
      end
      # resource path
      local_var_path = '/slides/images/download/{format}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'format', format)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

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
        :return_type => 'File')
      return data, status_code, headers
    end
    # Convert notes slide to the specified image format.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param format Output file format.
    # @param width Output file width.
    # @param height Output file height.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    # @param fonts_folder Storage folder containing custom fonts to be used with the document.
    def download_notes_slide(name, slide_index, format, width = nil, height = nil, password = nil, folder = nil, storage = nil, fonts_folder = nil)
      data, _status_code, _headers = download_notes_slide_with_http_info(name, slide_index, format, width, height, password, folder, storage, fonts_folder)
      data
    end

    # Convert notes slide to the specified image format.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param format Output file format.
    # @param width Output file width.
    # @param height Output file height.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    # @param fonts_folder Storage folder containing custom fonts to be used with the document.
    def download_notes_slide_with_http_info(name, slide_index, format, width = nil, height = nil, password = nil, folder = nil, storage = nil, fonts_folder = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.download_notes_slide ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.download_notes_slide"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.download_notes_slide"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling SlidesApi.download_notes_slide"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Jpeg', 'Png', 'Gif', 'Bmp', 'Tiff'].any?{ |s| s.casecmp(format)==0 }
        fail ArgumentError, "Value " + format + " is not supported for 'format', must be one of Jpeg, Png, Gif, Bmp, Tiff"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/notesSlide/{format}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'format', format)

      # query parameters
      query_params = {}
      query_params[:'width'] = width unless width.nil?
      query_params[:'height'] = height unless height.nil?
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?
      query_params[:'fontsFolder'] = fonts_folder unless fonts_folder.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

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
    # Convert notes slide to the specified image format.
    # @param document Document data.
    # @param slide_index Slide index.
    # @param format Output file format.
    # @param width Output file width.
    # @param height Output file height.
    # @param password Document password.
    # @param fonts_folder Storage folder containing custom fonts to be used with the document.
    def download_notes_slide_online(document, slide_index, format, width = nil, height = nil, password = nil, fonts_folder = nil)
      data, _status_code, _headers = download_notes_slide_online_with_http_info(document, slide_index, format, width, height, password, fonts_folder)
      data
    end

    # Convert notes slide to the specified image format.
    # @param document Document data.
    # @param slide_index Slide index.
    # @param format Output file format.
    # @param width Output file width.
    # @param height Output file height.
    # @param password Document password.
    # @param fonts_folder Storage folder containing custom fonts to be used with the document.
    def download_notes_slide_online_with_http_info(document, slide_index, format, width = nil, height = nil, password = nil, fonts_folder = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.download_notes_slide_online ...'
      end

      # verify the required parameter 'document' is set
      if @api_client.config.client_side_validation && document.nil?
        fail ArgumentError, "Missing the required parameter 'document' when calling SlidesApi.download_notes_slide_online"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.download_notes_slide_online"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling SlidesApi.download_notes_slide_online"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Jpeg', 'Png', 'Gif', 'Bmp', 'Tiff'].any?{ |s| s.casecmp(format)==0 }
        fail ArgumentError, "Value " + format + " is not supported for 'format', must be one of Jpeg, Png, Gif, Bmp, Tiff"
      end
      # resource path
      local_var_path = '/slides/slides/{slideIndex}/notesSlide/{format}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'format', format)

      # query parameters
      query_params = {}
      query_params[:'width'] = width unless width.nil?
      query_params[:'height'] = height unless height.nil?
      query_params[:'fontsFolder'] = fonts_folder unless fonts_folder.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

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
        :return_type => 'File')
      return data, status_code, headers
    end
    # Render shape to specified picture format.
    # @param name Presentation name.
    # @param slide_index Slide index.
    # @param shape_index Index of shape starting from 1
    # @param format Export picture format.
    # @param options export options
    # @param scale_x X scale ratio.
    # @param scale_y Y scale ratio.
    # @param bounds Shape thumbnail bounds type.
    # @param password Document password.
    # @param folder Presentation folder.
    # @param storage Presentation storage.
    # @param fonts_folder Fonts folder.
    def download_notes_slide_shape(name, slide_index, shape_index, format, options = nil, scale_x = nil, scale_y = nil, bounds = nil, password = nil, folder = nil, storage = nil, fonts_folder = nil)
      data, _status_code, _headers = download_notes_slide_shape_with_http_info(name, slide_index, shape_index, format, options, scale_x, scale_y, bounds, password, folder, storage, fonts_folder)
      data
    end

    # Render shape to specified picture format.
    # @param name Presentation name.
    # @param slide_index Slide index.
    # @param shape_index Index of shape starting from 1
    # @param format Export picture format.
    # @param options export options
    # @param scale_x X scale ratio.
    # @param scale_y Y scale ratio.
    # @param bounds Shape thumbnail bounds type.
    # @param password Document password.
    # @param folder Presentation folder.
    # @param storage Presentation storage.
    # @param fonts_folder Fonts folder.
    def download_notes_slide_shape_with_http_info(name, slide_index, shape_index, format, options = nil, scale_x = nil, scale_y = nil, bounds = nil, password = nil, folder = nil, storage = nil, fonts_folder = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.download_notes_slide_shape ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.download_notes_slide_shape"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.download_notes_slide_shape"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.download_notes_slide_shape"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling SlidesApi.download_notes_slide_shape"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Jpeg', 'Png', 'Gif', 'Bmp', 'Tiff', 'Svg'].any?{ |s| s.casecmp(format)==0 }
        fail ArgumentError, "Value " + format + " is not supported for 'format', must be one of Jpeg, Png, Gif, Bmp, Tiff, Svg"
      end
      if @api_client.config.client_side_validation && bounds && !['Slide', 'Shape', 'Appearance'].any?{ |s| s.casecmp(bounds)==0 }
        fail ArgumentError, "Value " + bounds + " is not supported for 'bounds', must be one of Slide, Shape, Appearance"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/{format}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'format', format)

      # query parameters
      query_params = {}
      query_params[:'scaleX'] = scale_x unless scale_x.nil?
      query_params[:'scaleY'] = scale_y unless scale_y.nil?
      query_params[:'bounds'] = bounds unless bounds.nil?
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?
      query_params[:'fontsFolder'] = fonts_folder unless fonts_folder.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
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
        :return_type => 'File')
      return data, status_code, headers
    end
    # Save a presentation to a specified format.
    # @param name Document name.
    # @param format Export format.
    # @param options Export options.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    # @param fonts_folder Custom fonts folder.
    def download_presentation(name, format, options = nil, password = nil, folder = nil, storage = nil, fonts_folder = nil)
      data, _status_code, _headers = download_presentation_with_http_info(name, format, options, password, folder, storage, fonts_folder)
      data
    end

    # Save a presentation to a specified format.
    # @param name Document name.
    # @param format Export format.
    # @param options Export options.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    # @param fonts_folder Custom fonts folder.
    def download_presentation_with_http_info(name, format, options = nil, password = nil, folder = nil, storage = nil, fonts_folder = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.download_presentation ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.download_presentation"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling SlidesApi.download_presentation"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Pdf', 'Xps', 'Tiff', 'Pptx', 'Odp', 'Otp', 'Ppt', 'Pps', 'Ppsx', 'Pptm', 'Ppsm', 'Pot', 'Potx', 'Potm', 'Html', 'Swf', 'Svg', 'Jpeg', 'Png', 'Gif', 'Bmp', 'Fodp'].any?{ |s| s.casecmp(format)==0 }
        fail ArgumentError, "Value " + format + " is not supported for 'format', must be one of Pdf, Xps, Tiff, Pptx, Odp, Otp, Ppt, Pps, Ppsx, Pptm, Ppsm, Pot, Potx, Potm, Html, Swf, Svg, Jpeg, Png, Gif, Bmp, Fodp"
      end
      # resource path
      local_var_path = '/slides/{name}/{format}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'format', format)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?
      query_params[:'fontsFolder'] = fonts_folder unless fonts_folder.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
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
        :return_type => 'File')
      return data, status_code, headers
    end
    # Render shape to specified picture format.
    # @param name Presentation name.
    # @param slide_index Slide index.
    # @param shape_index Index of shape starting from 1
    # @param format Export picture format.
    # @param options export options
    # @param scale_x X scale ratio.
    # @param scale_y Y scale ratio.
    # @param bounds Shape thumbnail bounds type.
    # @param password Document password.
    # @param folder Presentation folder.
    # @param storage Presentation storage.
    # @param fonts_folder Fonts folder.
    def download_shape(name, slide_index, shape_index, format, options = nil, scale_x = nil, scale_y = nil, bounds = nil, password = nil, folder = nil, storage = nil, fonts_folder = nil)
      data, _status_code, _headers = download_shape_with_http_info(name, slide_index, shape_index, format, options, scale_x, scale_y, bounds, password, folder, storage, fonts_folder)
      data
    end

    # Render shape to specified picture format.
    # @param name Presentation name.
    # @param slide_index Slide index.
    # @param shape_index Index of shape starting from 1
    # @param format Export picture format.
    # @param options export options
    # @param scale_x X scale ratio.
    # @param scale_y Y scale ratio.
    # @param bounds Shape thumbnail bounds type.
    # @param password Document password.
    # @param folder Presentation folder.
    # @param storage Presentation storage.
    # @param fonts_folder Fonts folder.
    def download_shape_with_http_info(name, slide_index, shape_index, format, options = nil, scale_x = nil, scale_y = nil, bounds = nil, password = nil, folder = nil, storage = nil, fonts_folder = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.download_shape ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.download_shape"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.download_shape"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.download_shape"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling SlidesApi.download_shape"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Jpeg', 'Png', 'Gif', 'Bmp', 'Tiff', 'Svg'].any?{ |s| s.casecmp(format)==0 }
        fail ArgumentError, "Value " + format + " is not supported for 'format', must be one of Jpeg, Png, Gif, Bmp, Tiff, Svg"
      end
      if @api_client.config.client_side_validation && bounds && !['Slide', 'Shape', 'Appearance'].any?{ |s| s.casecmp(bounds)==0 }
        fail ArgumentError, "Value " + bounds + " is not supported for 'bounds', must be one of Slide, Shape, Appearance"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/{format}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'format', format)

      # query parameters
      query_params = {}
      query_params[:'scaleX'] = scale_x unless scale_x.nil?
      query_params[:'scaleY'] = scale_y unless scale_y.nil?
      query_params[:'bounds'] = bounds unless bounds.nil?
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?
      query_params[:'fontsFolder'] = fonts_folder unless fonts_folder.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
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
        :return_type => 'File')
      return data, status_code, headers
    end
    # Render shape to specified picture format.
    # @param document Document data.
    # @param slide_index Slide index.
    # @param shape_index Index of shape starting from 1
    # @param format Export picture format.
    # @param scale_x X scale ratio.
    # @param scale_y Y scale ratio.
    # @param bounds Shape thumbnail bounds type.
    # @param password Document password.
    # @param storage Document storage.
    # @param fonts_folder Fonts folder.
    def download_shape_online(document, slide_index, shape_index, format, scale_x = nil, scale_y = nil, bounds = nil, password = nil, storage = nil, fonts_folder = nil)
      data, _status_code, _headers = download_shape_online_with_http_info(document, slide_index, shape_index, format, scale_x, scale_y, bounds, password, storage, fonts_folder)
      data
    end

    # Render shape to specified picture format.
    # @param document Document data.
    # @param slide_index Slide index.
    # @param shape_index Index of shape starting from 1
    # @param format Export picture format.
    # @param scale_x X scale ratio.
    # @param scale_y Y scale ratio.
    # @param bounds Shape thumbnail bounds type.
    # @param password Document password.
    # @param storage Document storage.
    # @param fonts_folder Fonts folder.
    def download_shape_online_with_http_info(document, slide_index, shape_index, format, scale_x = nil, scale_y = nil, bounds = nil, password = nil, storage = nil, fonts_folder = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.download_shape_online ...'
      end

      # verify the required parameter 'document' is set
      if @api_client.config.client_side_validation && document.nil?
        fail ArgumentError, "Missing the required parameter 'document' when calling SlidesApi.download_shape_online"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.download_shape_online"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.download_shape_online"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling SlidesApi.download_shape_online"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Jpeg', 'Png', 'Gif', 'Bmp', 'Tiff', 'Svg'].any?{ |s| s.casecmp(format)==0 }
        fail ArgumentError, "Value " + format + " is not supported for 'format', must be one of Jpeg, Png, Gif, Bmp, Tiff, Svg"
      end
      if @api_client.config.client_side_validation && bounds && !['Slide', 'Shape', 'Appearance'].any?{ |s| s.casecmp(bounds)==0 }
        fail ArgumentError, "Value " + bounds + " is not supported for 'bounds', must be one of Slide, Shape, Appearance"
      end
      # resource path
      local_var_path = '/slides/slides/{slideIndex}/shapes/{shapeIndex}/{format}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'format', format)

      # query parameters
      query_params = {}
      query_params[:'scaleX'] = scale_x unless scale_x.nil?
      query_params[:'scaleY'] = scale_y unless scale_y.nil?
      query_params[:'bounds'] = bounds unless bounds.nil?
      query_params[:'storage'] = storage unless storage.nil?
      query_params[:'fontsFolder'] = fonts_folder unless fonts_folder.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

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
        :return_type => 'File')
      return data, status_code, headers
    end
    # Save a slide to a specified format.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param format Output file format.
    # @param options Export options.
    # @param width Output file width; 0 to not adjust the size. Default is 0.
    # @param height Output file height; 0 to not adjust the size. Default is 0.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    # @param fonts_folder Storage folder containing custom fonts to be used with the document.
    def download_slide(name, slide_index, format, options = nil, width = nil, height = nil, password = nil, folder = nil, storage = nil, fonts_folder = nil)
      data, _status_code, _headers = download_slide_with_http_info(name, slide_index, format, options, width, height, password, folder, storage, fonts_folder)
      data
    end

    # Save a slide to a specified format.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param format Output file format.
    # @param options Export options.
    # @param width Output file width; 0 to not adjust the size. Default is 0.
    # @param height Output file height; 0 to not adjust the size. Default is 0.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    # @param fonts_folder Storage folder containing custom fonts to be used with the document.
    def download_slide_with_http_info(name, slide_index, format, options = nil, width = nil, height = nil, password = nil, folder = nil, storage = nil, fonts_folder = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.download_slide ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.download_slide"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.download_slide"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling SlidesApi.download_slide"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Jpeg', 'Png', 'Gif', 'Bmp', 'Tiff', 'Html', 'Pdf', 'Xps', 'Pptx', 'Odp', 'Otp', 'Ppt', 'Pps', 'Ppsx', 'Pptm', 'Ppsm', 'Potx', 'Pot', 'Potm', 'Svg', 'Fodp'].any?{ |s| s.casecmp(format)==0 }
        fail ArgumentError, "Value " + format + " is not supported for 'format', must be one of Jpeg, Png, Gif, Bmp, Tiff, Html, Pdf, Xps, Pptx, Odp, Otp, Ppt, Pps, Ppsx, Pptm, Ppsm, Potx, Pot, Potm, Svg, Fodp"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/{format}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'format', format)

      # query parameters
      query_params = {}
      query_params[:'width'] = width unless width.nil?
      query_params[:'height'] = height unless height.nil?
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?
      query_params[:'fontsFolder'] = fonts_folder unless fonts_folder.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
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
        :return_type => 'File')
      return data, status_code, headers
    end
    # Save a slide to a specified format.
    # @param document Document data.
    # @param slide_index Slide index.
    # @param format Output file format.
    # @param width Output file width; 0 to not adjust the size. Default is 0.
    # @param height Output file height; 0 to not adjust the size. Default is 0.
    # @param password Document password.
    # @param storage Document storage.
    # @param fonts_folder Storage folder containing custom fonts to be used with the document.
    def download_slide_online(document, slide_index, format, width = nil, height = nil, password = nil, storage = nil, fonts_folder = nil)
      data, _status_code, _headers = download_slide_online_with_http_info(document, slide_index, format, width, height, password, storage, fonts_folder)
      data
    end

    # Save a slide to a specified format.
    # @param document Document data.
    # @param slide_index Slide index.
    # @param format Output file format.
    # @param width Output file width; 0 to not adjust the size. Default is 0.
    # @param height Output file height; 0 to not adjust the size. Default is 0.
    # @param password Document password.
    # @param storage Document storage.
    # @param fonts_folder Storage folder containing custom fonts to be used with the document.
    def download_slide_online_with_http_info(document, slide_index, format, width = nil, height = nil, password = nil, storage = nil, fonts_folder = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.download_slide_online ...'
      end

      # verify the required parameter 'document' is set
      if @api_client.config.client_side_validation && document.nil?
        fail ArgumentError, "Missing the required parameter 'document' when calling SlidesApi.download_slide_online"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.download_slide_online"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling SlidesApi.download_slide_online"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Jpeg', 'Png', 'Gif', 'Bmp', 'Tiff', 'Html', 'Pdf', 'Xps', 'Pptx', 'Odp', 'Otp', 'Ppt', 'Pps', 'Ppsx', 'Pptm', 'Ppsm', 'Potx', 'Pot', 'Potm', 'Svg', 'Fodp'].any?{ |s| s.casecmp(format)==0 }
        fail ArgumentError, "Value " + format + " is not supported for 'format', must be one of Jpeg, Png, Gif, Bmp, Tiff, Html, Pdf, Xps, Pptx, Odp, Otp, Ppt, Pps, Ppsx, Pptm, Ppsm, Potx, Pot, Potm, Svg, Fodp"
      end
      # resource path
      local_var_path = '/slides/slides/{slideIndex}/{format}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'format', format)

      # query parameters
      query_params = {}
      query_params[:'width'] = width unless width.nil?
      query_params[:'height'] = height unless height.nil?
      query_params[:'storage'] = storage unless storage.nil?
      query_params[:'fontsFolder'] = fonts_folder unless fonts_folder.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

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
        :return_type => 'File')
      return data, status_code, headers
    end
    # Render shape to specified picture format (for smart art and group shapes).
    # @param name Presentation name.
    # @param slide_index Slide index.
    # @param path Shape path.
    # @param shape_index Index of shape starting from 1
    # @param format Export picture format.
    # @param options export options
    # @param scale_x X scale ratio.
    # @param scale_y Y scale ratio.
    # @param bounds Shape thumbnail bounds type.
    # @param password Document password.
    # @param folder Presentation folder.
    # @param storage Presentation storage.
    # @param fonts_folder Fonts folder.
    def download_subshape(name, slide_index, path, shape_index, format, options = nil, scale_x = nil, scale_y = nil, bounds = nil, password = nil, folder = nil, storage = nil, fonts_folder = nil)
      data, _status_code, _headers = download_subshape_with_http_info(name, slide_index, path, shape_index, format, options, scale_x, scale_y, bounds, password, folder, storage, fonts_folder)
      data
    end

    # Render shape to specified picture format (for smart art and group shapes).
    # @param name Presentation name.
    # @param slide_index Slide index.
    # @param path Shape path.
    # @param shape_index Index of shape starting from 1
    # @param format Export picture format.
    # @param options export options
    # @param scale_x X scale ratio.
    # @param scale_y Y scale ratio.
    # @param bounds Shape thumbnail bounds type.
    # @param password Document password.
    # @param folder Presentation folder.
    # @param storage Presentation storage.
    # @param fonts_folder Fonts folder.
    def download_subshape_with_http_info(name, slide_index, path, shape_index, format, options = nil, scale_x = nil, scale_y = nil, bounds = nil, password = nil, folder = nil, storage = nil, fonts_folder = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.download_subshape ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.download_subshape"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.download_subshape"
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling SlidesApi.download_subshape"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.download_subshape"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling SlidesApi.download_subshape"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Jpeg', 'Png', 'Gif', 'Bmp', 'Tiff', 'Svg'].any?{ |s| s.casecmp(format)==0 }
        fail ArgumentError, "Value " + format + " is not supported for 'format', must be one of Jpeg, Png, Gif, Bmp, Tiff, Svg"
      end
      if @api_client.config.client_side_validation && bounds && !['Slide', 'Shape', 'Appearance'].any?{ |s| s.casecmp(bounds)==0 }
        fail ArgumentError, "Value " + bounds + " is not supported for 'bounds', must be one of Slide, Shape, Appearance"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/{format}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', path)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'format', format)

      # query parameters
      query_params = {}
      query_params[:'scaleX'] = scale_x unless scale_x.nil?
      query_params[:'scaleY'] = scale_y unless scale_y.nil?
      query_params[:'bounds'] = bounds unless bounds.nil?
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?
      query_params[:'fontsFolder'] = fonts_folder unless fonts_folder.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
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
        :return_type => 'File')
      return data, status_code, headers
    end
    # Read slide animation effects.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index. If specified, only effects related to that shape are returned.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_animation(name, slide_index, shape_index = nil, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = get_animation_with_http_info(name, slide_index, shape_index, password, folder, storage)
      data
    end

    # Read slide animation effects.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index. If specified, only effects related to that shape are returned.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_animation_with_http_info(name, slide_index, shape_index = nil, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_animation ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_animation"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_animation"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/animation'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)

      # query parameters
      query_params = {}
      query_params[:'shapeIndex'] = shape_index unless shape_index.nil?
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

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
        :return_type => 'SlideAnimation')
      return data, status_code, headers
    end
    # Get API info.
    def get_api_info()
      data, _status_code, _headers = get_api_info_with_http_info
      data
    end

    # Get API info.
    def get_api_info_with_http_info()
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_api_info ...'
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
      post_files = []

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
    # Read slide background info.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_background(name, slide_index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = get_background_with_http_info(name, slide_index, password, folder, storage)
      data
    end

    # Read slide background info.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_background_with_http_info(name, slide_index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_background ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_background"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_background"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/background'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

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
        :return_type => 'SlideBackground')
      return data, status_code, headers
    end
    # Read slide theme color scheme info.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_color_scheme(name, slide_index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = get_color_scheme_with_http_info(name, slide_index, password, folder, storage)
      data
    end

    # Read slide theme color scheme info.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_color_scheme_with_http_info(name, slide_index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_color_scheme ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_color_scheme"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_color_scheme"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/theme/colorScheme'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

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
        :return_type => 'ColorScheme')
      return data, status_code, headers
    end
    # Get disc usage
    # @param storage_name Storage name
    def get_disc_usage(storage_name = nil)
      data, _status_code, _headers = get_disc_usage_with_http_info(storage_name)
      data
    end

    # Get disc usage
    # @param storage_name Storage name
    def get_disc_usage_with_http_info(storage_name = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_disc_usage ...'
      end

      # resource path
      local_var_path = '/slides/storage/disc'

      # query parameters
      query_params = {}
      query_params[:'storageName'] = storage_name unless storage_name.nil?

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
        :return_type => 'DiscUsage')
      return data, status_code, headers
    end
    # Read presentation document properties.
    # @param name Document name.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_document_properties(name, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = get_document_properties_with_http_info(name, password, folder, storage)
      data
    end

    # Read presentation document properties.
    # @param name Document name.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_document_properties_with_http_info(name, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_document_properties ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_document_properties"
      end
      # resource path
      local_var_path = '/slides/{name}/documentproperties'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

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
        :return_type => 'DocumentProperties')
      return data, status_code, headers
    end
    # Read presentation document property.
    # @param name Document name.
    # @param property_name The property name.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_document_property(name, property_name, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = get_document_property_with_http_info(name, property_name, password, folder, storage)
      data
    end

    # Read presentation document property.
    # @param name Document name.
    # @param property_name The property name.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_document_property_with_http_info(name, property_name, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_document_property ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_document_property"
      end
      # verify the required parameter 'property_name' is set
      if @api_client.config.client_side_validation && property_name.nil?
        fail ArgumentError, "Missing the required parameter 'property_name' when calling SlidesApi.get_document_property"
      end
      # resource path
      local_var_path = '/slides/{name}/documentproperties/{propertyName}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'propertyName', property_name)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

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
        :return_type => 'DocumentProperty')
      return data, status_code, headers
    end
    # Get file versions
    # @param path File path e.g. '/file.ext'
    # @param storage_name Storage name
    def get_file_versions(path, storage_name = nil)
      data, _status_code, _headers = get_file_versions_with_http_info(path, storage_name)
      data
    end

    # Get file versions
    # @param path File path e.g. '/file.ext'
    # @param storage_name Storage name
    def get_file_versions_with_http_info(path, storage_name = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_file_versions ...'
      end

      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling SlidesApi.get_file_versions"
      end
      # resource path
      local_var_path = '/slides/storage/version/{path}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', path)

      # query parameters
      query_params = {}
      query_params[:'storageName'] = storage_name unless storage_name.nil?

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
        :return_type => 'FileVersions')
      return data, status_code, headers
    end
    # Get all files and folders within a folder
    # @param path Folder path e.g. '/folder'
    # @param storage_name Storage name
    def get_files_list(path, storage_name = nil)
      data, _status_code, _headers = get_files_list_with_http_info(path, storage_name)
      data
    end

    # Get all files and folders within a folder
    # @param path Folder path e.g. '/folder'
    # @param storage_name Storage name
    def get_files_list_with_http_info(path, storage_name = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_files_list ...'
      end

      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling SlidesApi.get_files_list"
      end
      # resource path
      local_var_path = '/slides/storage/folder/{path}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', path)

      # query parameters
      query_params = {}
      query_params[:'storageName'] = storage_name unless storage_name.nil?

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
        :return_type => 'FilesList')
      return data, status_code, headers
    end
    # Read slide theme font scheme info.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_font_scheme(name, slide_index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = get_font_scheme_with_http_info(name, slide_index, password, folder, storage)
      data
    end

    # Read slide theme font scheme info.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_font_scheme_with_http_info(name, slide_index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_font_scheme ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_font_scheme"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_font_scheme"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/theme/fontScheme'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

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
        :return_type => 'FontScheme')
      return data, status_code, headers
    end
    # Read slide theme format scheme info.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_format_scheme(name, slide_index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = get_format_scheme_with_http_info(name, slide_index, password, folder, storage)
      data
    end

    # Read slide theme format scheme info.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_format_scheme_with_http_info(name, slide_index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_format_scheme ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_format_scheme"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_format_scheme"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/theme/formatScheme'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

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
        :return_type => 'FormatScheme')
      return data, status_code, headers
    end
    # Read presentation layoutSlide info.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_layout_slide(name, slide_index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = get_layout_slide_with_http_info(name, slide_index, password, folder, storage)
      data
    end

    # Read presentation layoutSlide info.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_layout_slide_with_http_info(name, slide_index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_layout_slide ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_layout_slide"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_layout_slide"
      end
      # resource path
      local_var_path = '/slides/{name}/layoutSlides/{slideIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

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
        :return_type => 'LayoutSlide')
      return data, status_code, headers
    end
    # Read presentation layoutSlides info.
    # @param name Document name.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_layout_slides(name, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = get_layout_slides_with_http_info(name, password, folder, storage)
      data
    end

    # Read presentation layoutSlides info.
    # @param name Document name.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_layout_slides_with_http_info(name, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_layout_slides ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_layout_slides"
      end
      # resource path
      local_var_path = '/slides/{name}/layoutSlides'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

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
        :return_type => 'LayoutSlides')
      return data, status_code, headers
    end
    # Read presentation masterSlide info.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_master_slide(name, slide_index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = get_master_slide_with_http_info(name, slide_index, password, folder, storage)
      data
    end

    # Read presentation masterSlide info.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_master_slide_with_http_info(name, slide_index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_master_slide ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_master_slide"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_master_slide"
      end
      # resource path
      local_var_path = '/slides/{name}/masterSlides/{slideIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

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
        :return_type => 'MasterSlide')
      return data, status_code, headers
    end
    # Read presentation masterSlides info.
    # @param name Document name.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_master_slides(name, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = get_master_slides_with_http_info(name, password, folder, storage)
      data
    end

    # Read presentation masterSlides info.
    # @param name Document name.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_master_slides_with_http_info(name, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_master_slides ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_master_slides"
      end
      # resource path
      local_var_path = '/slides/{name}/masterSlides'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

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
        :return_type => 'MasterSlides')
      return data, status_code, headers
    end
    # Read notes slide info.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_notes_slide(name, slide_index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = get_notes_slide_with_http_info(name, slide_index, password, folder, storage)
      data
    end

    # Read notes slide info.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_notes_slide_with_http_info(name, slide_index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_notes_slide ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_notes_slide"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_notes_slide"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/notesSlide'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

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
        :return_type => 'NotesSlide')
      return data, status_code, headers
    end
    # Get header/footer info for the notes slide.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_notes_slide_header_footer(name, slide_index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = get_notes_slide_header_footer_with_http_info(name, slide_index, password, folder, storage)
      data
    end

    # Get header/footer info for the notes slide.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_notes_slide_header_footer_with_http_info(name, slide_index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_notes_slide_header_footer ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_notes_slide_header_footer"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_notes_slide_header_footer"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/notesSlide/headerFooter'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

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
        :return_type => 'NotesSlideHeaderFooter')
      return data, status_code, headers
    end
    # Read notes slide info.
    # @param document Document data.
    # @param slide_index Slide index.
    # @param password Document password.
    def get_notes_slide_online(document, slide_index, password = nil)
      data, _status_code, _headers = get_notes_slide_online_with_http_info(document, slide_index, password)
      data
    end

    # Read notes slide info.
    # @param document Document data.
    # @param slide_index Slide index.
    # @param password Document password.
    def get_notes_slide_online_with_http_info(document, slide_index, password = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_notes_slide_online ...'
      end

      # verify the required parameter 'document' is set
      if @api_client.config.client_side_validation && document.nil?
        fail ArgumentError, "Missing the required parameter 'document' when calling SlidesApi.get_notes_slide_online"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_notes_slide_online"
      end
      # resource path
      local_var_path = '/slides/slides/{slideIndex}/notesSlide'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

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
        :return_type => 'NotesSlide')
      return data, status_code, headers
    end
    # Read shape paragraph info.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param paragraph_index Paragraph index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_notes_slide_paragraph(name, slide_index, shape_index, paragraph_index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = get_notes_slide_paragraph_with_http_info(name, slide_index, shape_index, paragraph_index, password, folder, storage)
      data
    end

    # Read shape paragraph info.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param paragraph_index Paragraph index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_notes_slide_paragraph_with_http_info(name, slide_index, shape_index, paragraph_index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_notes_slide_paragraph ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_notes_slide_paragraph"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_notes_slide_paragraph"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.get_notes_slide_paragraph"
      end
      # verify the required parameter 'paragraph_index' is set
      if @api_client.config.client_side_validation && paragraph_index.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_index' when calling SlidesApi.get_notes_slide_paragraph"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs/{paragraphIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'paragraphIndex', paragraph_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

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
        :return_type => 'Paragraph')
      return data, status_code, headers
    end
    # Read shape paragraphs info.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_notes_slide_paragraphs(name, slide_index, shape_index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = get_notes_slide_paragraphs_with_http_info(name, slide_index, shape_index, password, folder, storage)
      data
    end

    # Read shape paragraphs info.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_notes_slide_paragraphs_with_http_info(name, slide_index, shape_index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_notes_slide_paragraphs ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_notes_slide_paragraphs"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_notes_slide_paragraphs"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.get_notes_slide_paragraphs"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

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
        :return_type => 'Paragraphs')
      return data, status_code, headers
    end
    # Read paragraph portion info.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param paragraph_index Paragraph index.
    # @param portion_index Portion index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_notes_slide_portion(name, slide_index, shape_index, paragraph_index, portion_index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = get_notes_slide_portion_with_http_info(name, slide_index, shape_index, paragraph_index, portion_index, password, folder, storage)
      data
    end

    # Read paragraph portion info.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param paragraph_index Paragraph index.
    # @param portion_index Portion index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_notes_slide_portion_with_http_info(name, slide_index, shape_index, paragraph_index, portion_index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_notes_slide_portion ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_notes_slide_portion"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_notes_slide_portion"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.get_notes_slide_portion"
      end
      # verify the required parameter 'paragraph_index' is set
      if @api_client.config.client_side_validation && paragraph_index.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_index' when calling SlidesApi.get_notes_slide_portion"
      end
      # verify the required parameter 'portion_index' is set
      if @api_client.config.client_side_validation && portion_index.nil?
        fail ArgumentError, "Missing the required parameter 'portion_index' when calling SlidesApi.get_notes_slide_portion"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'paragraphIndex', paragraph_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'portionIndex', portion_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

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
        :return_type => 'Portion')
      return data, status_code, headers
    end
    # Read paragraph portions info.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param paragraph_index Paragraph index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_notes_slide_portions(name, slide_index, shape_index, paragraph_index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = get_notes_slide_portions_with_http_info(name, slide_index, shape_index, paragraph_index, password, folder, storage)
      data
    end

    # Read paragraph portions info.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param paragraph_index Paragraph index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_notes_slide_portions_with_http_info(name, slide_index, shape_index, paragraph_index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_notes_slide_portions ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_notes_slide_portions"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_notes_slide_portions"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.get_notes_slide_portions"
      end
      # verify the required parameter 'paragraph_index' is set
      if @api_client.config.client_side_validation && paragraph_index.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_index' when calling SlidesApi.get_notes_slide_portions"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'paragraphIndex', paragraph_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

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
        :return_type => 'Portions')
      return data, status_code, headers
    end
    # Read slide shape info.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_notes_slide_shape(name, slide_index, shape_index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = get_notes_slide_shape_with_http_info(name, slide_index, shape_index, password, folder, storage)
      data
    end

    # Read slide shape info.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_notes_slide_shape_with_http_info(name, slide_index, shape_index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_notes_slide_shape ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_notes_slide_shape"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_notes_slide_shape"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.get_notes_slide_shape"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

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
        :return_type => 'ShapeBase')
      return data, status_code, headers
    end
    # Read slide shapes info.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_notes_slide_shapes(name, slide_index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = get_notes_slide_shapes_with_http_info(name, slide_index, password, folder, storage)
      data
    end

    # Read slide shapes info.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_notes_slide_shapes_with_http_info(name, slide_index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_notes_slide_shapes ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_notes_slide_shapes"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_notes_slide_shapes"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/notesSlide/shapes'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

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
        :return_type => 'Shapes')
      return data, status_code, headers
    end
    # Read shape paragraph info.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param paragraph_index Paragraph index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_paragraph(name, slide_index, shape_index, paragraph_index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = get_paragraph_with_http_info(name, slide_index, shape_index, paragraph_index, password, folder, storage)
      data
    end

    # Read shape paragraph info.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param paragraph_index Paragraph index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_paragraph_with_http_info(name, slide_index, shape_index, paragraph_index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_paragraph ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_paragraph"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_paragraph"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.get_paragraph"
      end
      # verify the required parameter 'paragraph_index' is set
      if @api_client.config.client_side_validation && paragraph_index.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_index' when calling SlidesApi.get_paragraph"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'paragraphIndex', paragraph_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

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
        :return_type => 'Paragraph')
      return data, status_code, headers
    end
    # Read shape paragraphs info.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_paragraphs(name, slide_index, shape_index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = get_paragraphs_with_http_info(name, slide_index, shape_index, password, folder, storage)
      data
    end

    # Read shape paragraphs info.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_paragraphs_with_http_info(name, slide_index, shape_index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_paragraphs ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_paragraphs"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_paragraphs"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.get_paragraphs"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

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
        :return_type => 'Paragraphs')
      return data, status_code, headers
    end
    # Read slide placeholder info.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param placeholder_index Placeholder index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_placeholder(name, slide_index, placeholder_index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = get_placeholder_with_http_info(name, slide_index, placeholder_index, password, folder, storage)
      data
    end

    # Read slide placeholder info.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param placeholder_index Placeholder index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_placeholder_with_http_info(name, slide_index, placeholder_index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_placeholder ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_placeholder"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_placeholder"
      end
      # verify the required parameter 'placeholder_index' is set
      if @api_client.config.client_side_validation && placeholder_index.nil?
        fail ArgumentError, "Missing the required parameter 'placeholder_index' when calling SlidesApi.get_placeholder"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/placeholders/{placeholderIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'placeholderIndex', placeholder_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

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
        :return_type => 'Placeholder')
      return data, status_code, headers
    end
    # Read slide placeholders info.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_placeholders(name, slide_index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = get_placeholders_with_http_info(name, slide_index, password, folder, storage)
      data
    end

    # Read slide placeholders info.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_placeholders_with_http_info(name, slide_index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_placeholders ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_placeholders"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_placeholders"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/placeholders'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

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
        :return_type => 'Placeholders')
      return data, status_code, headers
    end
    # Read paragraph portion info.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param paragraph_index Paragraph index.
    # @param portion_index Portion index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_portion(name, slide_index, shape_index, paragraph_index, portion_index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = get_portion_with_http_info(name, slide_index, shape_index, paragraph_index, portion_index, password, folder, storage)
      data
    end

    # Read paragraph portion info.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param paragraph_index Paragraph index.
    # @param portion_index Portion index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_portion_with_http_info(name, slide_index, shape_index, paragraph_index, portion_index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_portion ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_portion"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_portion"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.get_portion"
      end
      # verify the required parameter 'paragraph_index' is set
      if @api_client.config.client_side_validation && paragraph_index.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_index' when calling SlidesApi.get_portion"
      end
      # verify the required parameter 'portion_index' is set
      if @api_client.config.client_side_validation && portion_index.nil?
        fail ArgumentError, "Missing the required parameter 'portion_index' when calling SlidesApi.get_portion"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'paragraphIndex', paragraph_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'portionIndex', portion_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

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
        :return_type => 'Portion')
      return data, status_code, headers
    end
    # Read paragraph portions info.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param paragraph_index Paragraph index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_portions(name, slide_index, shape_index, paragraph_index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = get_portions_with_http_info(name, slide_index, shape_index, paragraph_index, password, folder, storage)
      data
    end

    # Read paragraph portions info.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param paragraph_index Paragraph index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_portions_with_http_info(name, slide_index, shape_index, paragraph_index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_portions ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_portions"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_portions"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.get_portions"
      end
      # verify the required parameter 'paragraph_index' is set
      if @api_client.config.client_side_validation && paragraph_index.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_index' when calling SlidesApi.get_portions"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'paragraphIndex', paragraph_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

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
        :return_type => 'Portions')
      return data, status_code, headers
    end
    # Read presentation info.
    # @param name Document name.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_presentation(name, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = get_presentation_with_http_info(name, password, folder, storage)
      data
    end

    # Read presentation info.
    # @param name Document name.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_presentation_with_http_info(name, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_presentation ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_presentation"
      end
      # resource path
      local_var_path = '/slides/{name}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

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
        :return_type => 'Document')
      return data, status_code, headers
    end
    # Read presentation images info.
    # @param name Document name.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_presentation_images(name, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = get_presentation_images_with_http_info(name, password, folder, storage)
      data
    end

    # Read presentation images info.
    # @param name Document name.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_presentation_images_with_http_info(name, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_presentation_images ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_presentation_images"
      end
      # resource path
      local_var_path = '/slides/{name}/images'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

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
        :return_type => 'Images')
      return data, status_code, headers
    end
    # Extract presentation text items.
    # @param name Document name.
    # @param with_empty True to incude empty items.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_presentation_text_items(name, with_empty = nil, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = get_presentation_text_items_with_http_info(name, with_empty, password, folder, storage)
      data
    end

    # Extract presentation text items.
    # @param name Document name.
    # @param with_empty True to incude empty items.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_presentation_text_items_with_http_info(name, with_empty = nil, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_presentation_text_items ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_presentation_text_items"
      end
      # resource path
      local_var_path = '/slides/{name}/textItems'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)

      # query parameters
      query_params = {}
      query_params[:'withEmpty'] = with_empty unless with_empty.nil?
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

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
        :return_type => 'TextItems')
      return data, status_code, headers
    end
    # Read presentation protection properties.
    # @param name Document name.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_protection_properties(name, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = get_protection_properties_with_http_info(name, password, folder, storage)
      data
    end

    # Read presentation protection properties.
    # @param name Document name.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_protection_properties_with_http_info(name, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_protection_properties ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_protection_properties"
      end
      # resource path
      local_var_path = '/slides/{name}/protection'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

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
        :return_type => 'ProtectionProperties')
      return data, status_code, headers
    end
    # Read presentation sections info.
    # @param name Document name.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_sections(name, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = get_sections_with_http_info(name, password, folder, storage)
      data
    end

    # Read presentation sections info.
    # @param name Document name.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_sections_with_http_info(name, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_sections ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_sections"
      end
      # resource path
      local_var_path = '/slides/{name}/sections'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

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
        :return_type => 'Sections')
      return data, status_code, headers
    end
    # Read slide shape info.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_shape(name, slide_index, shape_index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = get_shape_with_http_info(name, slide_index, shape_index, password, folder, storage)
      data
    end

    # Read slide shape info.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_shape_with_http_info(name, slide_index, shape_index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_shape ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_shape"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_shape"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.get_shape"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

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
        :return_type => 'ShapeBase')
      return data, status_code, headers
    end
    # Read slide shapes info.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_shapes(name, slide_index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = get_shapes_with_http_info(name, slide_index, password, folder, storage)
      data
    end

    # Read slide shapes info.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_shapes_with_http_info(name, slide_index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_shapes ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_shapes"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_shapes"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

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
        :return_type => 'Shapes')
      return data, status_code, headers
    end
    # Read presentation slide info.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_slide(name, slide_index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = get_slide_with_http_info(name, slide_index, password, folder, storage)
      data
    end

    # Read presentation slide info.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_slide_with_http_info(name, slide_index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_slide ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_slide"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_slide"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

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
        :return_type => 'Slide')
      return data, status_code, headers
    end
    # Read presentation slide comments.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_slide_comments(name, slide_index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = get_slide_comments_with_http_info(name, slide_index, password, folder, storage)
      data
    end

    # Read presentation slide comments.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_slide_comments_with_http_info(name, slide_index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_slide_comments ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_slide_comments"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_slide_comments"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/comments'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

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
        :return_type => 'SlideComments')
      return data, status_code, headers
    end
    # Get footer info for the slide.
    # @param name Document name.
    # @param slide_index The position of the slide to be reordered.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_slide_header_footer(name, slide_index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = get_slide_header_footer_with_http_info(name, slide_index, password, folder, storage)
      data
    end

    # Get footer info for the slide.
    # @param name Document name.
    # @param slide_index The position of the slide to be reordered.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_slide_header_footer_with_http_info(name, slide_index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_slide_header_footer ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_slide_header_footer"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_slide_header_footer"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/headerFooter'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

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
        :return_type => 'HeaderFooter')
      return data, status_code, headers
    end
    # Read slide images info.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_slide_images(name, slide_index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = get_slide_images_with_http_info(name, slide_index, password, folder, storage)
      data
    end

    # Read slide images info.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_slide_images_with_http_info(name, slide_index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_slide_images ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_slide_images"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_slide_images"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/images'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

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
        :return_type => 'Images')
      return data, status_code, headers
    end
    # Read presentation slide properties.
    # @param name Document name.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_slide_properties(name, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = get_slide_properties_with_http_info(name, password, folder, storage)
      data
    end

    # Read presentation slide properties.
    # @param name Document name.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_slide_properties_with_http_info(name, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_slide_properties ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_slide_properties"
      end
      # resource path
      local_var_path = '/slides/{name}/slideProperties'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

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
        :return_type => 'SlideProperties')
      return data, status_code, headers
    end
    # Extract slide text items.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param with_empty True to include empty items.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_slide_text_items(name, slide_index, with_empty = nil, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = get_slide_text_items_with_http_info(name, slide_index, with_empty, password, folder, storage)
      data
    end

    # Extract slide text items.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param with_empty True to include empty items.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_slide_text_items_with_http_info(name, slide_index, with_empty = nil, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_slide_text_items ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_slide_text_items"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_slide_text_items"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/textItems'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)

      # query parameters
      query_params = {}
      query_params[:'withEmpty'] = with_empty unless with_empty.nil?
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

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
        :return_type => 'TextItems')
      return data, status_code, headers
    end
    # Read presentation slides info.
    # @param name Document name.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_slides(name, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = get_slides_with_http_info(name, password, folder, storage)
      data
    end

    # Read presentation slides info.
    # @param name Document name.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_slides_with_http_info(name, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_slides ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_slides"
      end
      # resource path
      local_var_path = '/slides/{name}/slides'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

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
        :return_type => 'Slides')
      return data, status_code, headers
    end
    # Read slide shape info (for smart art and group shapes).
    # @param name Document name.
    # @param slide_index Slide index.
    # @param path Shape path.
    # @param shape_index Shape index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_subshape(name, slide_index, path, shape_index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = get_subshape_with_http_info(name, slide_index, path, shape_index, password, folder, storage)
      data
    end

    # Read slide shape info (for smart art and group shapes).
    # @param name Document name.
    # @param slide_index Slide index.
    # @param path Shape path.
    # @param shape_index Shape index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_subshape_with_http_info(name, slide_index, path, shape_index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_subshape ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_subshape"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_subshape"
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling SlidesApi.get_subshape"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.get_subshape"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', path)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

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
        :return_type => 'ShapeBase')
      return data, status_code, headers
    end
    # Read shape paragraph info (for smart art and group shapes).
    # @param name Document name.
    # @param slide_index Slide index.
    # @param path Shape path.
    # @param shape_index Shape index.
    # @param paragraph_index Paragraph index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_subshape_paragraph(name, slide_index, path, shape_index, paragraph_index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = get_subshape_paragraph_with_http_info(name, slide_index, path, shape_index, paragraph_index, password, folder, storage)
      data
    end

    # Read shape paragraph info (for smart art and group shapes).
    # @param name Document name.
    # @param slide_index Slide index.
    # @param path Shape path.
    # @param shape_index Shape index.
    # @param paragraph_index Paragraph index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_subshape_paragraph_with_http_info(name, slide_index, path, shape_index, paragraph_index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_subshape_paragraph ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_subshape_paragraph"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_subshape_paragraph"
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling SlidesApi.get_subshape_paragraph"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.get_subshape_paragraph"
      end
      # verify the required parameter 'paragraph_index' is set
      if @api_client.config.client_side_validation && paragraph_index.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_index' when calling SlidesApi.get_subshape_paragraph"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', path)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'paragraphIndex', paragraph_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

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
        :return_type => 'Paragraph')
      return data, status_code, headers
    end
    # Read shape paragraphs info (for smart art and group shapes).
    # @param name Document name.
    # @param slide_index Slide index.
    # @param path Shape path.
    # @param shape_index Shape index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_subshape_paragraphs(name, slide_index, path, shape_index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = get_subshape_paragraphs_with_http_info(name, slide_index, path, shape_index, password, folder, storage)
      data
    end

    # Read shape paragraphs info (for smart art and group shapes).
    # @param name Document name.
    # @param slide_index Slide index.
    # @param path Shape path.
    # @param shape_index Shape index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_subshape_paragraphs_with_http_info(name, slide_index, path, shape_index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_subshape_paragraphs ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_subshape_paragraphs"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_subshape_paragraphs"
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling SlidesApi.get_subshape_paragraphs"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.get_subshape_paragraphs"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', path)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

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
        :return_type => 'Paragraphs')
      return data, status_code, headers
    end
    # Read paragraph portion info (for smart art and group shapes).
    # @param name Document name.
    # @param slide_index Slide index.
    # @param path Shape path.
    # @param shape_index Shape index.
    # @param paragraph_index Paragraph index.
    # @param portion_index Portion index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_subshape_portion(name, slide_index, path, shape_index, paragraph_index, portion_index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = get_subshape_portion_with_http_info(name, slide_index, path, shape_index, paragraph_index, portion_index, password, folder, storage)
      data
    end

    # Read paragraph portion info (for smart art and group shapes).
    # @param name Document name.
    # @param slide_index Slide index.
    # @param path Shape path.
    # @param shape_index Shape index.
    # @param paragraph_index Paragraph index.
    # @param portion_index Portion index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_subshape_portion_with_http_info(name, slide_index, path, shape_index, paragraph_index, portion_index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_subshape_portion ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_subshape_portion"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_subshape_portion"
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling SlidesApi.get_subshape_portion"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.get_subshape_portion"
      end
      # verify the required parameter 'paragraph_index' is set
      if @api_client.config.client_side_validation && paragraph_index.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_index' when calling SlidesApi.get_subshape_portion"
      end
      # verify the required parameter 'portion_index' is set
      if @api_client.config.client_side_validation && portion_index.nil?
        fail ArgumentError, "Missing the required parameter 'portion_index' when calling SlidesApi.get_subshape_portion"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', path)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'paragraphIndex', paragraph_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'portionIndex', portion_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

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
        :return_type => 'Portion')
      return data, status_code, headers
    end
    # Read paragraph portions info (for smart art and group shapes).
    # @param name Document name.
    # @param slide_index Slide index.
    # @param path Shape path.
    # @param shape_index Shape index.
    # @param paragraph_index Paragraph index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_subshape_portions(name, slide_index, path, shape_index, paragraph_index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = get_subshape_portions_with_http_info(name, slide_index, path, shape_index, paragraph_index, password, folder, storage)
      data
    end

    # Read paragraph portions info (for smart art and group shapes).
    # @param name Document name.
    # @param slide_index Slide index.
    # @param path Shape path.
    # @param shape_index Shape index.
    # @param paragraph_index Paragraph index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_subshape_portions_with_http_info(name, slide_index, path, shape_index, paragraph_index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_subshape_portions ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_subshape_portions"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_subshape_portions"
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling SlidesApi.get_subshape_portions"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.get_subshape_portions"
      end
      # verify the required parameter 'paragraph_index' is set
      if @api_client.config.client_side_validation && paragraph_index.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_index' when calling SlidesApi.get_subshape_portions"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', path)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'paragraphIndex', paragraph_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

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
        :return_type => 'Portions')
      return data, status_code, headers
    end
    # Read slide shapes info.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param path Shape path (for smart art and group shapes).
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_subshapes(name, slide_index, path, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = get_subshapes_with_http_info(name, slide_index, path, password, folder, storage)
      data
    end

    # Read slide shapes info.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param path Shape path (for smart art and group shapes).
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_subshapes_with_http_info(name, slide_index, path, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_subshapes ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_subshapes"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_subshapes"
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling SlidesApi.get_subshapes"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{path}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', path)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

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
        :return_type => 'Shapes')
      return data, status_code, headers
    end
    # Read slide theme info.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_theme(name, slide_index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = get_theme_with_http_info(name, slide_index, password, folder, storage)
      data
    end

    # Read slide theme info.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_theme_with_http_info(name, slide_index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_theme ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_theme"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.get_theme"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/theme'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

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
        :return_type => 'Theme')
      return data, status_code, headers
    end
    # Read presentation document properties.
    # @param name Document name.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_view_properties(name, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = get_view_properties_with_http_info(name, password, folder, storage)
      data
    end

    # Read presentation document properties.
    # @param name Document name.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def get_view_properties_with_http_info(name, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.get_view_properties ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.get_view_properties"
      end
      # resource path
      local_var_path = '/slides/{name}/viewProperties'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

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
        :return_type => 'ViewProperties')
      return data, status_code, headers
    end
    # Create presentation document from html.
    # @param name Document name.
    # @param html HTML data.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def import_from_html(name, html = nil, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = import_from_html_with_http_info(name, html, password, folder, storage)
      data
    end

    # Create presentation document from html.
    # @param name Document name.
    # @param html HTML data.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def import_from_html_with_http_info(name, html = nil, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.import_from_html ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.import_from_html"
      end
      # resource path
      local_var_path = '/slides/{name}/fromHtml'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(html)

      # form parameters
      post_files = []

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
    # Create presentation document from pdf or append pdf to an existing presentation.
    # @param name Document name.
    # @param pdf PDF data.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def import_from_pdf(name, pdf = nil, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = import_from_pdf_with_http_info(name, pdf, password, folder, storage)
      data
    end

    # Create presentation document from pdf or append pdf to an existing presentation.
    # @param name Document name.
    # @param pdf PDF data.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def import_from_pdf_with_http_info(name, pdf = nil, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.import_from_pdf ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.import_from_pdf"
      end
      # resource path
      local_var_path = '/slides/{name}/fromPdf'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []
      if pdf
        post_files = post_files.push(pdf)
      end

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
    # Merge the presentation with other presentations specified in the request parameter.
    # @param name Document name.
    # @param request PresentationsMergeRequest with a list of presentations to merge.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def merge(name, request, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = merge_with_http_info(name, request, password, folder, storage)
      data
    end

    # Merge the presentation with other presentations specified in the request parameter.
    # @param name Document name.
    # @param request PresentationsMergeRequest with a list of presentations to merge.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def merge_with_http_info(name, request, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.merge ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.merge"
      end
      # verify the required parameter 'request' is set
      if @api_client.config.client_side_validation && request.nil?
        fail ArgumentError, "Missing the required parameter 'request' when calling SlidesApi.merge"
      end
      # resource path
      local_var_path = '/slides/{name}/merge'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(request)

      # form parameters
      post_files = []

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
    # Merges presentations or some of their slides specified in the request parameter. Result will be save in the storage.
    # @param out_path Path to save result.
    # @param files Files to merge
    # @param request Merge request.
    # @param storage Document storage.
    def merge_and_save_online(out_path, files = nil, request = nil, storage = nil)
      merge_and_save_online_with_http_info(out_path, files, request, storage)
      nil
    end

    # Merges presentations or some of their slides specified in the request parameter. Result will be save in the storage.
    # @param out_path Path to save result.
    # @param files Files to merge
    # @param request Merge request.
    # @param storage Document storage.
    def merge_and_save_online_with_http_info(out_path, files = nil, request = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.merge_and_save_online ...'
      end

      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling SlidesApi.merge_and_save_online"
      end
      # resource path
      local_var_path = '/slides/merge'

      # query parameters
      query_params = {}
      query_params[:'outPath'] = out_path unless out_path.nil?
      query_params[:'storage'] = storage unless storage.nil?

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
        :auth_names => auth_names)
      return data, status_code, headers
    end
    # Merges presentations or some of their slides specified in the request parameter. Returns result file in the response. 
    # @param files Files to merge
    # @param request Merge request.
    # @param storage Document storage.
    def merge_online(files = nil, request = nil, storage = nil)
      data, _status_code, _headers = merge_online_with_http_info(files, request, storage)
      data
    end

    # Merges presentations or some of their slides specified in the request parameter. Returns result file in the response. 
    # @param files Files to merge
    # @param request Merge request.
    # @param storage Document storage.
    def merge_online_with_http_info(files = nil, request = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.merge_online ...'
      end

      # resource path
      local_var_path = '/slides/merge'

      # query parameters
      query_params = {}
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
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
        :return_type => 'File')
      return data, status_code, headers
    end
    # Move file
    # @param src_path Source file path e.g. '/src.ext'
    # @param dest_path Destination file path e.g. '/dest.ext'
    # @param src_storage_name Source storage name
    # @param dest_storage_name Destination storage name
    # @param version_id File version ID to move
    def move_file(src_path, dest_path, src_storage_name = nil, dest_storage_name = nil, version_id = nil)
      move_file_with_http_info(src_path, dest_path, src_storage_name, dest_storage_name, version_id)
      nil
    end

    # Move file
    # @param src_path Source file path e.g. '/src.ext'
    # @param dest_path Destination file path e.g. '/dest.ext'
    # @param src_storage_name Source storage name
    # @param dest_storage_name Destination storage name
    # @param version_id File version ID to move
    def move_file_with_http_info(src_path, dest_path, src_storage_name = nil, dest_storage_name = nil, version_id = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.move_file ...'
      end

      # verify the required parameter 'src_path' is set
      if @api_client.config.client_side_validation && src_path.nil?
        fail ArgumentError, "Missing the required parameter 'src_path' when calling SlidesApi.move_file"
      end
      # verify the required parameter 'dest_path' is set
      if @api_client.config.client_side_validation && dest_path.nil?
        fail ArgumentError, "Missing the required parameter 'dest_path' when calling SlidesApi.move_file"
      end
      # resource path
      local_var_path = '/slides/storage/file/move/{srcPath}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'srcPath', src_path)

      # query parameters
      query_params = {}
      query_params[:'destPath'] = dest_path unless dest_path.nil?
      query_params[:'srcStorageName'] = src_storage_name unless src_storage_name.nil?
      query_params[:'destStorageName'] = dest_storage_name unless dest_storage_name.nil?
      query_params[:'versionId'] = version_id unless version_id.nil?

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
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names)
      return data, status_code, headers
    end
    # Move folder
    # @param src_path Folder path to move e.g. '/folder'
    # @param dest_path Destination folder path to move to e.g '/dst'
    # @param src_storage_name Source storage name
    # @param dest_storage_name Destination storage name
    def move_folder(src_path, dest_path, src_storage_name = nil, dest_storage_name = nil)
      move_folder_with_http_info(src_path, dest_path, src_storage_name, dest_storage_name)
      nil
    end

    # Move folder
    # @param src_path Folder path to move e.g. '/folder'
    # @param dest_path Destination folder path to move to e.g '/dst'
    # @param src_storage_name Source storage name
    # @param dest_storage_name Destination storage name
    def move_folder_with_http_info(src_path, dest_path, src_storage_name = nil, dest_storage_name = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.move_folder ...'
      end

      # verify the required parameter 'src_path' is set
      if @api_client.config.client_side_validation && src_path.nil?
        fail ArgumentError, "Missing the required parameter 'src_path' when calling SlidesApi.move_folder"
      end
      # verify the required parameter 'dest_path' is set
      if @api_client.config.client_side_validation && dest_path.nil?
        fail ArgumentError, "Missing the required parameter 'dest_path' when calling SlidesApi.move_folder"
      end
      # resource path
      local_var_path = '/slides/storage/folder/move/{srcPath}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'srcPath', src_path)

      # query parameters
      query_params = {}
      query_params[:'destPath'] = dest_path unless dest_path.nil?
      query_params[:'srcStorageName'] = src_storage_name unless src_storage_name.nil?
      query_params[:'destStorageName'] = dest_storage_name unless dest_storage_name.nil?

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
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names)
      return data, status_code, headers
    end
    # Move presentation section to a specified position.
    # @param name Document name.
    # @param section_index The position of the section to be reordered.
    # @param new_position The new position of the reordered section.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def move_section(name, section_index, new_position, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = move_section_with_http_info(name, section_index, new_position, password, folder, storage)
      data
    end

    # Move presentation section to a specified position.
    # @param name Document name.
    # @param section_index The position of the section to be reordered.
    # @param new_position The new position of the reordered section.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def move_section_with_http_info(name, section_index, new_position, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.move_section ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.move_section"
      end
      # verify the required parameter 'section_index' is set
      if @api_client.config.client_side_validation && section_index.nil?
        fail ArgumentError, "Missing the required parameter 'section_index' when calling SlidesApi.move_section"
      end
      # verify the required parameter 'new_position' is set
      if @api_client.config.client_side_validation && new_position.nil?
        fail ArgumentError, "Missing the required parameter 'new_position' when calling SlidesApi.move_section"
      end
      # resource path
      local_var_path = '/slides/{name}/sections/{sectionIndex}/move'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'sectionIndex', section_index)

      # query parameters
      query_params = {}
      query_params[:'newPosition'] = new_position unless new_position.nil?
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Sections')
      return data, status_code, headers
    end
    # Reorder presentation slide position.
    # @param name Document name.
    # @param slide_index The position of the slide to be reordered.
    # @param new_position The new position of the reordered slide.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def move_slide(name, slide_index, new_position, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = move_slide_with_http_info(name, slide_index, new_position, password, folder, storage)
      data
    end

    # Reorder presentation slide position.
    # @param name Document name.
    # @param slide_index The position of the slide to be reordered.
    # @param new_position The new position of the reordered slide.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def move_slide_with_http_info(name, slide_index, new_position, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.move_slide ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.move_slide"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.move_slide"
      end
      # verify the required parameter 'new_position' is set
      if @api_client.config.client_side_validation && new_position.nil?
        fail ArgumentError, "Missing the required parameter 'new_position' when calling SlidesApi.move_slide"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/move'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)

      # query parameters
      query_params = {}
      query_params[:'newPosition'] = new_position unless new_position.nil?
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

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
    # Get info whether a notes slide exists.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def notes_slide_exists(name, slide_index, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = notes_slide_exists_with_http_info(name, slide_index, password, folder, storage)
      data
    end

    # Get info whether a notes slide exists.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def notes_slide_exists_with_http_info(name, slide_index, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.notes_slide_exists ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.notes_slide_exists"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.notes_slide_exists"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/notesSlide/exist'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

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
        :return_type => 'EntityExists')
      return data, status_code, headers
    end
    # Get info whether a notes slide exists.
    # @param document Document data.
    # @param slide_index Slide index.
    # @param password Document password.
    def notes_slide_exists_online(document, slide_index, password = nil)
      data, _status_code, _headers = notes_slide_exists_online_with_http_info(document, slide_index, password)
      data
    end

    # Get info whether a notes slide exists.
    # @param document Document data.
    # @param slide_index Slide index.
    # @param password Document password.
    def notes_slide_exists_online_with_http_info(document, slide_index, password = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.notes_slide_exists_online ...'
      end

      # verify the required parameter 'document' is set
      if @api_client.config.client_side_validation && document.nil?
        fail ArgumentError, "Missing the required parameter 'document' when calling SlidesApi.notes_slide_exists_online"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.notes_slide_exists_online"
      end
      # resource path
      local_var_path = '/slides/slides/{slideIndex}/notesSlide/exist'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

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
        :return_type => 'EntityExists')
      return data, status_code, headers
    end
    # Check if file or folder exists
    # @param path File or folder path e.g. '/file.ext' or '/folder'
    # @param storage_name Storage name
    # @param version_id File version ID
    def object_exists(path, storage_name = nil, version_id = nil)
      data, _status_code, _headers = object_exists_with_http_info(path, storage_name, version_id)
      data
    end

    # Check if file or folder exists
    # @param path File or folder path e.g. '/file.ext' or '/folder'
    # @param storage_name Storage name
    # @param version_id File version ID
    def object_exists_with_http_info(path, storage_name = nil, version_id = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.object_exists ...'
      end

      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling SlidesApi.object_exists"
      end
      # resource path
      local_var_path = '/slides/storage/exist/{path}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', path)

      # query parameters
      query_params = {}
      query_params[:'storageName'] = storage_name unless storage_name.nil?
      query_params[:'versionId'] = version_id unless version_id.nil?

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
        :return_type => 'ObjectExist')
      return data, status_code, headers
    end
    # Merge the presentation with other presentations or some of their slides specified in the request parameter.
    # @param name Document name.
    # @param request OrderedMergeRequest with a list of presentations and slide indices to merge.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def ordered_merge(name, request, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = ordered_merge_with_http_info(name, request, password, folder, storage)
      data
    end

    # Merge the presentation with other presentations or some of their slides specified in the request parameter.
    # @param name Document name.
    # @param request OrderedMergeRequest with a list of presentations and slide indices to merge.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def ordered_merge_with_http_info(name, request, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.ordered_merge ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.ordered_merge"
      end
      # verify the required parameter 'request' is set
      if @api_client.config.client_side_validation && request.nil?
        fail ArgumentError, "Missing the required parameter 'request' when calling SlidesApi.ordered_merge"
      end
      # resource path
      local_var_path = '/slides/{name}/merge'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(request)

      # form parameters
      post_files = []

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
    # Performs slides pipeline.
    # @param pipeline A Pipeline object.
    # @param files Files to upload with the pipeline
    def pipeline(pipeline, files = nil)
      data, _status_code, _headers = pipeline_with_http_info(pipeline, files)
      data
    end

    # Performs slides pipeline.
    # @param pipeline A Pipeline object.
    # @param files Files to upload with the pipeline
    def pipeline_with_http_info(pipeline, files = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.pipeline ...'
      end

      # verify the required parameter 'pipeline' is set
      if @api_client.config.client_side_validation && pipeline.nil?
        fail ArgumentError, "Missing the required parameter 'pipeline' when calling SlidesApi.pipeline"
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
      post_body = @api_client.object_to_http_body(pipeline)

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
        :return_type => 'File')
      return data, status_code, headers
    end
    # Reorder presentation slides positions.
    # @param name Document name.
    # @param old_positions A comma separated array of positions of slides to be reordered.
    # @param new_positions A comma separated array of new slide positions.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def reorder_slides(name, old_positions = nil, new_positions = nil, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = reorder_slides_with_http_info(name, old_positions, new_positions, password, folder, storage)
      data
    end

    # Reorder presentation slides positions.
    # @param name Document name.
    # @param old_positions A comma separated array of positions of slides to be reordered.
    # @param new_positions A comma separated array of new slide positions.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def reorder_slides_with_http_info(name, old_positions = nil, new_positions = nil, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.reorder_slides ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.reorder_slides"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/reorder'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)

      # query parameters
      query_params = {}
      query_params[:'oldPositions'] = old_positions unless old_positions.nil?
      query_params[:'newPositions'] = new_positions unless new_positions.nil?
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

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
    # Replace text with a new value.
    # @param name Document name.
    # @param old_value Text value to be replaced.
    # @param new_value Text value to replace with.
    # @param ignore_case True if character case must be ignored.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def replace_presentation_text(name, old_value, new_value, ignore_case = nil, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = replace_presentation_text_with_http_info(name, old_value, new_value, ignore_case, password, folder, storage)
      data
    end

    # Replace text with a new value.
    # @param name Document name.
    # @param old_value Text value to be replaced.
    # @param new_value Text value to replace with.
    # @param ignore_case True if character case must be ignored.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def replace_presentation_text_with_http_info(name, old_value, new_value, ignore_case = nil, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.replace_presentation_text ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.replace_presentation_text"
      end
      # verify the required parameter 'old_value' is set
      if @api_client.config.client_side_validation && old_value.nil?
        fail ArgumentError, "Missing the required parameter 'old_value' when calling SlidesApi.replace_presentation_text"
      end
      # verify the required parameter 'new_value' is set
      if @api_client.config.client_side_validation && new_value.nil?
        fail ArgumentError, "Missing the required parameter 'new_value' when calling SlidesApi.replace_presentation_text"
      end
      # resource path
      local_var_path = '/slides/{name}/replaceText'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)

      # query parameters
      query_params = {}
      query_params[:'oldValue'] = old_value unless old_value.nil?
      query_params[:'newValue'] = new_value unless new_value.nil?
      query_params[:'ignoreCase'] = ignore_case unless ignore_case.nil?
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

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
    # Replace text with a new value.
    # @param document Document data.
    # @param old_value Text value to be replaced.
    # @param new_value Text value to replace with.
    # @param ignore_case True if character case must be ignored.
    # @param password Document password.
    def replace_presentation_text_online(document, old_value, new_value, ignore_case = nil, password = nil)
      data, _status_code, _headers = replace_presentation_text_online_with_http_info(document, old_value, new_value, ignore_case, password)
      data
    end

    # Replace text with a new value.
    # @param document Document data.
    # @param old_value Text value to be replaced.
    # @param new_value Text value to replace with.
    # @param ignore_case True if character case must be ignored.
    # @param password Document password.
    def replace_presentation_text_online_with_http_info(document, old_value, new_value, ignore_case = nil, password = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.replace_presentation_text_online ...'
      end

      # verify the required parameter 'document' is set
      if @api_client.config.client_side_validation && document.nil?
        fail ArgumentError, "Missing the required parameter 'document' when calling SlidesApi.replace_presentation_text_online"
      end
      # verify the required parameter 'old_value' is set
      if @api_client.config.client_side_validation && old_value.nil?
        fail ArgumentError, "Missing the required parameter 'old_value' when calling SlidesApi.replace_presentation_text_online"
      end
      # verify the required parameter 'new_value' is set
      if @api_client.config.client_side_validation && new_value.nil?
        fail ArgumentError, "Missing the required parameter 'new_value' when calling SlidesApi.replace_presentation_text_online"
      end
      # resource path
      local_var_path = '/slides/replaceText'

      # query parameters
      query_params = {}
      query_params[:'oldValue'] = old_value unless old_value.nil?
      query_params[:'newValue'] = new_value unless new_value.nil?
      query_params[:'ignoreCase'] = ignore_case unless ignore_case.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

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
        :return_type => 'File')
      return data, status_code, headers
    end
    # Replace text with a new value.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param old_value Text value to be replaced.
    # @param new_value Text value to replace with.
    # @param ignore_case True if character case must be ignored.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def replace_slide_text(name, slide_index, old_value, new_value, ignore_case = nil, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = replace_slide_text_with_http_info(name, slide_index, old_value, new_value, ignore_case, password, folder, storage)
      data
    end

    # Replace text with a new value.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param old_value Text value to be replaced.
    # @param new_value Text value to replace with.
    # @param ignore_case True if character case must be ignored.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def replace_slide_text_with_http_info(name, slide_index, old_value, new_value, ignore_case = nil, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.replace_slide_text ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.replace_slide_text"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.replace_slide_text"
      end
      # verify the required parameter 'old_value' is set
      if @api_client.config.client_side_validation && old_value.nil?
        fail ArgumentError, "Missing the required parameter 'old_value' when calling SlidesApi.replace_slide_text"
      end
      # verify the required parameter 'new_value' is set
      if @api_client.config.client_side_validation && new_value.nil?
        fail ArgumentError, "Missing the required parameter 'new_value' when calling SlidesApi.replace_slide_text"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/replaceText'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)

      # query parameters
      query_params = {}
      query_params[:'oldValue'] = old_value unless old_value.nil?
      query_params[:'newValue'] = new_value unless new_value.nil?
      query_params[:'ignoreCase'] = ignore_case unless ignore_case.nil?
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

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
    # Replace slide text with a new value.
    # @param document Document data.
    # @param slide_index Index of target slide.
    # @param old_value Text value to be replaced.
    # @param new_value Text value to replace with.
    # @param ignore_case True if character case must be ignored.
    # @param password Document password.
    def replace_slide_text_online(document, slide_index, old_value, new_value, ignore_case = nil, password = nil)
      data, _status_code, _headers = replace_slide_text_online_with_http_info(document, slide_index, old_value, new_value, ignore_case, password)
      data
    end

    # Replace slide text with a new value.
    # @param document Document data.
    # @param slide_index Index of target slide.
    # @param old_value Text value to be replaced.
    # @param new_value Text value to replace with.
    # @param ignore_case True if character case must be ignored.
    # @param password Document password.
    def replace_slide_text_online_with_http_info(document, slide_index, old_value, new_value, ignore_case = nil, password = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.replace_slide_text_online ...'
      end

      # verify the required parameter 'document' is set
      if @api_client.config.client_side_validation && document.nil?
        fail ArgumentError, "Missing the required parameter 'document' when calling SlidesApi.replace_slide_text_online"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.replace_slide_text_online"
      end
      # verify the required parameter 'old_value' is set
      if @api_client.config.client_side_validation && old_value.nil?
        fail ArgumentError, "Missing the required parameter 'old_value' when calling SlidesApi.replace_slide_text_online"
      end
      # verify the required parameter 'new_value' is set
      if @api_client.config.client_side_validation && new_value.nil?
        fail ArgumentError, "Missing the required parameter 'new_value' when calling SlidesApi.replace_slide_text_online"
      end
      # resource path
      local_var_path = '/slides/slides/{slideIndex}/replaceText'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)

      # query parameters
      query_params = {}
      query_params[:'oldValue'] = old_value unless old_value.nil?
      query_params[:'newValue'] = new_value unless new_value.nil?
      query_params[:'ignoreCase'] = ignore_case unless ignore_case.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

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
        :return_type => 'File')
      return data, status_code, headers
    end
    # Render shape to specified picture format.
    # @param name Presentation name.
    # @param slide_index Slide index.
    # @param shape_index Index of shape starting from 1
    # @param format Export picture format.
    # @param out_path Output path.
    # @param options export options
    # @param scale_x X scale ratio.
    # @param scale_y Y scale ratio.
    # @param bounds Shape thumbnail bounds type.
    # @param password Document password.
    # @param folder Presentation folder.
    # @param storage Presentation storage.
    # @param fonts_folder Fonts folder.
    def save_notes_slide_shape(name, slide_index, shape_index, format, out_path, options = nil, scale_x = nil, scale_y = nil, bounds = nil, password = nil, folder = nil, storage = nil, fonts_folder = nil)
      save_notes_slide_shape_with_http_info(name, slide_index, shape_index, format, out_path, options, scale_x, scale_y, bounds, password, folder, storage, fonts_folder)
      nil
    end

    # Render shape to specified picture format.
    # @param name Presentation name.
    # @param slide_index Slide index.
    # @param shape_index Index of shape starting from 1
    # @param format Export picture format.
    # @param out_path Output path.
    # @param options export options
    # @param scale_x X scale ratio.
    # @param scale_y Y scale ratio.
    # @param bounds Shape thumbnail bounds type.
    # @param password Document password.
    # @param folder Presentation folder.
    # @param storage Presentation storage.
    # @param fonts_folder Fonts folder.
    def save_notes_slide_shape_with_http_info(name, slide_index, shape_index, format, out_path, options = nil, scale_x = nil, scale_y = nil, bounds = nil, password = nil, folder = nil, storage = nil, fonts_folder = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.save_notes_slide_shape ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.save_notes_slide_shape"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.save_notes_slide_shape"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.save_notes_slide_shape"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling SlidesApi.save_notes_slide_shape"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Jpeg', 'Png', 'Gif', 'Bmp', 'Tiff', 'Svg'].any?{ |s| s.casecmp(format)==0 }
        fail ArgumentError, "Value " + format + " is not supported for 'format', must be one of Jpeg, Png, Gif, Bmp, Tiff, Svg"
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling SlidesApi.save_notes_slide_shape"
      end
      if @api_client.config.client_side_validation && bounds && !['Slide', 'Shape', 'Appearance'].any?{ |s| s.casecmp(bounds)==0 }
        fail ArgumentError, "Value " + bounds + " is not supported for 'bounds', must be one of Slide, Shape, Appearance"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/{format}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'format', format)

      # query parameters
      query_params = {}
      query_params[:'outPath'] = out_path unless out_path.nil?
      query_params[:'scaleX'] = scale_x unless scale_x.nil?
      query_params[:'scaleY'] = scale_y unless scale_y.nil?
      query_params[:'bounds'] = bounds unless bounds.nil?
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?
      query_params[:'fontsFolder'] = fonts_folder unless fonts_folder.nil?

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
        :auth_names => auth_names)
      return data, status_code, headers
    end
    # Save a presentation to a specified format.
    # @param name Document name.
    # @param format Export format.
    # @param out_path Output path.
    # @param options Export options.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    # @param fonts_folder Custom fonts folder.
    def save_presentation(name, format, out_path, options = nil, password = nil, folder = nil, storage = nil, fonts_folder = nil)
      save_presentation_with_http_info(name, format, out_path, options, password, folder, storage, fonts_folder)
      nil
    end

    # Save a presentation to a specified format.
    # @param name Document name.
    # @param format Export format.
    # @param out_path Output path.
    # @param options Export options.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    # @param fonts_folder Custom fonts folder.
    def save_presentation_with_http_info(name, format, out_path, options = nil, password = nil, folder = nil, storage = nil, fonts_folder = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.save_presentation ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.save_presentation"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling SlidesApi.save_presentation"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Pdf', 'Xps', 'Tiff', 'Pptx', 'Odp', 'Otp', 'Ppt', 'Pps', 'Ppsx', 'Pptm', 'Ppsm', 'Pot', 'Potx', 'Potm', 'Html', 'Swf', 'Svg', 'Jpeg', 'Png', 'Gif', 'Bmp', 'Fodp'].any?{ |s| s.casecmp(format)==0 }
        fail ArgumentError, "Value " + format + " is not supported for 'format', must be one of Pdf, Xps, Tiff, Pptx, Odp, Otp, Ppt, Pps, Ppsx, Pptm, Ppsm, Pot, Potx, Potm, Html, Swf, Svg, Jpeg, Png, Gif, Bmp, Fodp"
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling SlidesApi.save_presentation"
      end
      # resource path
      local_var_path = '/slides/{name}/{format}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'format', format)

      # query parameters
      query_params = {}
      query_params[:'outPath'] = out_path unless out_path.nil?
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?
      query_params[:'fontsFolder'] = fonts_folder unless fonts_folder.nil?

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
        :auth_names => auth_names)
      return data, status_code, headers
    end
    # Render shape to specified picture format.
    # @param name Presentation name.
    # @param slide_index Slide index.
    # @param shape_index Index of shape starting from 1
    # @param format Export picture format.
    # @param out_path Output path.
    # @param options export options
    # @param scale_x X scale ratio.
    # @param scale_y Y scale ratio.
    # @param bounds Shape thumbnail bounds type.
    # @param password Document password.
    # @param folder Presentation folder.
    # @param storage Presentation storage.
    # @param fonts_folder Fonts folder.
    def save_shape(name, slide_index, shape_index, format, out_path, options = nil, scale_x = nil, scale_y = nil, bounds = nil, password = nil, folder = nil, storage = nil, fonts_folder = nil)
      save_shape_with_http_info(name, slide_index, shape_index, format, out_path, options, scale_x, scale_y, bounds, password, folder, storage, fonts_folder)
      nil
    end

    # Render shape to specified picture format.
    # @param name Presentation name.
    # @param slide_index Slide index.
    # @param shape_index Index of shape starting from 1
    # @param format Export picture format.
    # @param out_path Output path.
    # @param options export options
    # @param scale_x X scale ratio.
    # @param scale_y Y scale ratio.
    # @param bounds Shape thumbnail bounds type.
    # @param password Document password.
    # @param folder Presentation folder.
    # @param storage Presentation storage.
    # @param fonts_folder Fonts folder.
    def save_shape_with_http_info(name, slide_index, shape_index, format, out_path, options = nil, scale_x = nil, scale_y = nil, bounds = nil, password = nil, folder = nil, storage = nil, fonts_folder = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.save_shape ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.save_shape"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.save_shape"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.save_shape"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling SlidesApi.save_shape"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Jpeg', 'Png', 'Gif', 'Bmp', 'Tiff', 'Svg'].any?{ |s| s.casecmp(format)==0 }
        fail ArgumentError, "Value " + format + " is not supported for 'format', must be one of Jpeg, Png, Gif, Bmp, Tiff, Svg"
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling SlidesApi.save_shape"
      end
      if @api_client.config.client_side_validation && bounds && !['Slide', 'Shape', 'Appearance'].any?{ |s| s.casecmp(bounds)==0 }
        fail ArgumentError, "Value " + bounds + " is not supported for 'bounds', must be one of Slide, Shape, Appearance"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/{format}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'format', format)

      # query parameters
      query_params = {}
      query_params[:'outPath'] = out_path unless out_path.nil?
      query_params[:'scaleX'] = scale_x unless scale_x.nil?
      query_params[:'scaleY'] = scale_y unless scale_y.nil?
      query_params[:'bounds'] = bounds unless bounds.nil?
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?
      query_params[:'fontsFolder'] = fonts_folder unless fonts_folder.nil?

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
        :auth_names => auth_names)
      return data, status_code, headers
    end
    # Render shape to specified picture format.
    # @param document Document data.
    # @param slide_index Slide index.
    # @param shape_index Index of shape starting from 1
    # @param format Export picture format.
    # @param out_path Path to save result.
    # @param scale_x X scale ratio.
    # @param scale_y Y scale ratio.
    # @param bounds Shape thumbnail bounds type.
    # @param password Document password.
    # @param storage Document storage.
    # @param fonts_folder Fonts folder.
    def save_shape_online(document, slide_index, shape_index, format, out_path, scale_x = nil, scale_y = nil, bounds = nil, password = nil, storage = nil, fonts_folder = nil)
      save_shape_online_with_http_info(document, slide_index, shape_index, format, out_path, scale_x, scale_y, bounds, password, storage, fonts_folder)
      nil
    end

    # Render shape to specified picture format.
    # @param document Document data.
    # @param slide_index Slide index.
    # @param shape_index Index of shape starting from 1
    # @param format Export picture format.
    # @param out_path Path to save result.
    # @param scale_x X scale ratio.
    # @param scale_y Y scale ratio.
    # @param bounds Shape thumbnail bounds type.
    # @param password Document password.
    # @param storage Document storage.
    # @param fonts_folder Fonts folder.
    def save_shape_online_with_http_info(document, slide_index, shape_index, format, out_path, scale_x = nil, scale_y = nil, bounds = nil, password = nil, storage = nil, fonts_folder = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.save_shape_online ...'
      end

      # verify the required parameter 'document' is set
      if @api_client.config.client_side_validation && document.nil?
        fail ArgumentError, "Missing the required parameter 'document' when calling SlidesApi.save_shape_online"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.save_shape_online"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.save_shape_online"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling SlidesApi.save_shape_online"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Jpeg', 'Png', 'Gif', 'Bmp', 'Tiff', 'Svg'].any?{ |s| s.casecmp(format)==0 }
        fail ArgumentError, "Value " + format + " is not supported for 'format', must be one of Jpeg, Png, Gif, Bmp, Tiff, Svg"
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling SlidesApi.save_shape_online"
      end
      if @api_client.config.client_side_validation && bounds && !['Slide', 'Shape', 'Appearance'].any?{ |s| s.casecmp(bounds)==0 }
        fail ArgumentError, "Value " + bounds + " is not supported for 'bounds', must be one of Slide, Shape, Appearance"
      end
      # resource path
      local_var_path = '/slides/slides/{slideIndex}/shapes/{shapeIndex}/{format}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'format', format)

      # query parameters
      query_params = {}
      query_params[:'outPath'] = out_path unless out_path.nil?
      query_params[:'scaleX'] = scale_x unless scale_x.nil?
      query_params[:'scaleY'] = scale_y unless scale_y.nil?
      query_params[:'bounds'] = bounds unless bounds.nil?
      query_params[:'storage'] = storage unless storage.nil?
      query_params[:'fontsFolder'] = fonts_folder unless fonts_folder.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

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
        :auth_names => auth_names)
      return data, status_code, headers
    end
    # Save a slide to a specified format.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param format Output file format.
    # @param out_path Path to upload the output file to.
    # @param options Export options.
    # @param width Output file width; 0 to not adjust the size. Default is 0.
    # @param height Output file height; 0 to not adjust the size. Default is 0.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    # @param fonts_folder Storage folder containing custom fonts to be used with the document.
    def save_slide(name, slide_index, format, out_path, options = nil, width = nil, height = nil, password = nil, folder = nil, storage = nil, fonts_folder = nil)
      save_slide_with_http_info(name, slide_index, format, out_path, options, width, height, password, folder, storage, fonts_folder)
      nil
    end

    # Save a slide to a specified format.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param format Output file format.
    # @param out_path Path to upload the output file to.
    # @param options Export options.
    # @param width Output file width; 0 to not adjust the size. Default is 0.
    # @param height Output file height; 0 to not adjust the size. Default is 0.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    # @param fonts_folder Storage folder containing custom fonts to be used with the document.
    def save_slide_with_http_info(name, slide_index, format, out_path, options = nil, width = nil, height = nil, password = nil, folder = nil, storage = nil, fonts_folder = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.save_slide ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.save_slide"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.save_slide"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling SlidesApi.save_slide"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Jpeg', 'Png', 'Gif', 'Bmp', 'Tiff', 'Html', 'Pdf', 'Xps', 'Pptx', 'Odp', 'Otp', 'Ppt', 'Pps', 'Ppsx', 'Pptm', 'Ppsm', 'Potx', 'Pot', 'Potm', 'Svg', 'Fodp'].any?{ |s| s.casecmp(format)==0 }
        fail ArgumentError, "Value " + format + " is not supported for 'format', must be one of Jpeg, Png, Gif, Bmp, Tiff, Html, Pdf, Xps, Pptx, Odp, Otp, Ppt, Pps, Ppsx, Pptm, Ppsm, Potx, Pot, Potm, Svg, Fodp"
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling SlidesApi.save_slide"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/{format}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'format', format)

      # query parameters
      query_params = {}
      query_params[:'outPath'] = out_path unless out_path.nil?
      query_params[:'width'] = width unless width.nil?
      query_params[:'height'] = height unless height.nil?
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?
      query_params[:'fontsFolder'] = fonts_folder unless fonts_folder.nil?

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
        :auth_names => auth_names)
      return data, status_code, headers
    end
    # Save a slide to a specified format.
    # @param document Document data.
    # @param slide_index Slide index.
    # @param format Output file format.
    # @param out_path Path to save result.
    # @param width Output file width; 0 to not adjust the size. Default is 0.
    # @param height Output file height; 0 to not adjust the size. Default is 0.
    # @param password Document password.
    # @param storage Document storage.
    # @param fonts_folder Storage folder containing custom fonts to be used with the document.
    def save_slide_online(document, slide_index, format, out_path, width = nil, height = nil, password = nil, storage = nil, fonts_folder = nil)
      save_slide_online_with_http_info(document, slide_index, format, out_path, width, height, password, storage, fonts_folder)
      nil
    end

    # Save a slide to a specified format.
    # @param document Document data.
    # @param slide_index Slide index.
    # @param format Output file format.
    # @param out_path Path to save result.
    # @param width Output file width; 0 to not adjust the size. Default is 0.
    # @param height Output file height; 0 to not adjust the size. Default is 0.
    # @param password Document password.
    # @param storage Document storage.
    # @param fonts_folder Storage folder containing custom fonts to be used with the document.
    def save_slide_online_with_http_info(document, slide_index, format, out_path, width = nil, height = nil, password = nil, storage = nil, fonts_folder = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.save_slide_online ...'
      end

      # verify the required parameter 'document' is set
      if @api_client.config.client_side_validation && document.nil?
        fail ArgumentError, "Missing the required parameter 'document' when calling SlidesApi.save_slide_online"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.save_slide_online"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling SlidesApi.save_slide_online"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Jpeg', 'Png', 'Gif', 'Bmp', 'Tiff', 'Html', 'Pdf', 'Xps', 'Pptx', 'Odp', 'Otp', 'Ppt', 'Pps', 'Ppsx', 'Pptm', 'Ppsm', 'Potx', 'Pot', 'Potm', 'Svg', 'Fodp'].any?{ |s| s.casecmp(format)==0 }
        fail ArgumentError, "Value " + format + " is not supported for 'format', must be one of Jpeg, Png, Gif, Bmp, Tiff, Html, Pdf, Xps, Pptx, Odp, Otp, Ppt, Pps, Ppsx, Pptm, Ppsm, Potx, Pot, Potm, Svg, Fodp"
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling SlidesApi.save_slide_online"
      end
      # resource path
      local_var_path = '/slides/slides/{slideIndex}/{format}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'format', format)

      # query parameters
      query_params = {}
      query_params[:'outPath'] = out_path unless out_path.nil?
      query_params[:'width'] = width unless width.nil?
      query_params[:'height'] = height unless height.nil?
      query_params[:'storage'] = storage unless storage.nil?
      query_params[:'fontsFolder'] = fonts_folder unless fonts_folder.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

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
        :auth_names => auth_names)
      return data, status_code, headers
    end
    # Render shape to specified picture format.
    # @param name Presentation name.
    # @param slide_index Slide index.
    # @param path Shape path (for smart art and group shapes).
    # @param shape_index Index of shape starting from 1
    # @param format Export picture format.
    # @param out_path Output path.
    # @param options export options
    # @param scale_x X scale ratio.
    # @param scale_y Y scale ratio.
    # @param bounds Shape thumbnail bounds type.
    # @param password Document password.
    # @param folder Presentation folder.
    # @param storage Presentation storage.
    # @param fonts_folder Fonts folder.
    def save_subshape(name, slide_index, path, shape_index, format, out_path, options = nil, scale_x = nil, scale_y = nil, bounds = nil, password = nil, folder = nil, storage = nil, fonts_folder = nil)
      save_subshape_with_http_info(name, slide_index, path, shape_index, format, out_path, options, scale_x, scale_y, bounds, password, folder, storage, fonts_folder)
      nil
    end

    # Render shape to specified picture format.
    # @param name Presentation name.
    # @param slide_index Slide index.
    # @param path Shape path (for smart art and group shapes).
    # @param shape_index Index of shape starting from 1
    # @param format Export picture format.
    # @param out_path Output path.
    # @param options export options
    # @param scale_x X scale ratio.
    # @param scale_y Y scale ratio.
    # @param bounds Shape thumbnail bounds type.
    # @param password Document password.
    # @param folder Presentation folder.
    # @param storage Presentation storage.
    # @param fonts_folder Fonts folder.
    def save_subshape_with_http_info(name, slide_index, path, shape_index, format, out_path, options = nil, scale_x = nil, scale_y = nil, bounds = nil, password = nil, folder = nil, storage = nil, fonts_folder = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.save_subshape ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.save_subshape"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.save_subshape"
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling SlidesApi.save_subshape"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.save_subshape"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling SlidesApi.save_subshape"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Jpeg', 'Png', 'Gif', 'Bmp', 'Tiff', 'Svg'].any?{ |s| s.casecmp(format)==0 }
        fail ArgumentError, "Value " + format + " is not supported for 'format', must be one of Jpeg, Png, Gif, Bmp, Tiff, Svg"
      end
      # verify the required parameter 'out_path' is set
      if @api_client.config.client_side_validation && out_path.nil?
        fail ArgumentError, "Missing the required parameter 'out_path' when calling SlidesApi.save_subshape"
      end
      if @api_client.config.client_side_validation && bounds && !['Slide', 'Shape', 'Appearance'].any?{ |s| s.casecmp(bounds)==0 }
        fail ArgumentError, "Value " + bounds + " is not supported for 'bounds', must be one of Slide, Shape, Appearance"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/{format}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', path)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'format', format)

      # query parameters
      query_params = {}
      query_params[:'outPath'] = out_path unless out_path.nil?
      query_params[:'scaleX'] = scale_x unless scale_x.nil?
      query_params[:'scaleY'] = scale_y unless scale_y.nil?
      query_params[:'bounds'] = bounds unless bounds.nil?
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?
      query_params[:'fontsFolder'] = fonts_folder unless fonts_folder.nil?

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
        :auth_names => auth_names)
      return data, status_code, headers
    end
    # Set slide animation.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param animation Animation DTO.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def set_animation(name, slide_index, animation, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = set_animation_with_http_info(name, slide_index, animation, password, folder, storage)
      data
    end

    # Set slide animation.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param animation Animation DTO.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def set_animation_with_http_info(name, slide_index, animation, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.set_animation ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.set_animation"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.set_animation"
      end
      # verify the required parameter 'animation' is set
      if @api_client.config.client_side_validation && animation.nil?
        fail ArgumentError, "Missing the required parameter 'animation' when calling SlidesApi.set_animation"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/animation'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(animation)

      # form parameters
      post_files = []

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
    # Set background for a slide.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param background Slide background update data.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def set_background(name, slide_index, background, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = set_background_with_http_info(name, slide_index, background, password, folder, storage)
      data
    end

    # Set background for a slide.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param background Slide background update data.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def set_background_with_http_info(name, slide_index, background, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.set_background ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.set_background"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.set_background"
      end
      # verify the required parameter 'background' is set
      if @api_client.config.client_side_validation && background.nil?
        fail ArgumentError, "Missing the required parameter 'background' when calling SlidesApi.set_background"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/background'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(background)

      # form parameters
      post_files = []

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
    # @param name Document name.
    # @param slide_index Slide index.
    # @param color Slide background target color in RRGGBB format.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def set_background_color(name, slide_index, color, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = set_background_color_with_http_info(name, slide_index, color, password, folder, storage)
      data
    end

    # Set background color for a slide.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param color Slide background target color in RRGGBB format.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def set_background_color_with_http_info(name, slide_index, color, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.set_background_color ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.set_background_color"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.set_background_color"
      end
      # verify the required parameter 'color' is set
      if @api_client.config.client_side_validation && color.nil?
        fail ArgumentError, "Missing the required parameter 'color' when calling SlidesApi.set_background_color"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/backgroundColor'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)

      # query parameters
      query_params = {}
      query_params[:'color'] = color unless color.nil?
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

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
    # Set document properties.
    # @param name Document name.
    # @param properties New properties.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def set_document_properties(name, properties, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = set_document_properties_with_http_info(name, properties, password, folder, storage)
      data
    end

    # Set document properties.
    # @param name Document name.
    # @param properties New properties.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def set_document_properties_with_http_info(name, properties, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.set_document_properties ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.set_document_properties"
      end
      # verify the required parameter 'properties' is set
      if @api_client.config.client_side_validation && properties.nil?
        fail ArgumentError, "Missing the required parameter 'properties' when calling SlidesApi.set_document_properties"
      end
      # resource path
      local_var_path = '/slides/{name}/documentproperties'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(properties)

      # form parameters
      post_files = []

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
    # Set document property.
    # @param name Document name.
    # @param property_name The property name.
    # @param property Property with the value.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def set_document_property(name, property_name, property, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = set_document_property_with_http_info(name, property_name, property, password, folder, storage)
      data
    end

    # Set document property.
    # @param name Document name.
    # @param property_name The property name.
    # @param property Property with the value.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def set_document_property_with_http_info(name, property_name, property, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.set_document_property ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.set_document_property"
      end
      # verify the required parameter 'property_name' is set
      if @api_client.config.client_side_validation && property_name.nil?
        fail ArgumentError, "Missing the required parameter 'property_name' when calling SlidesApi.set_document_property"
      end
      # verify the required parameter 'property' is set
      if @api_client.config.client_side_validation && property.nil?
        fail ArgumentError, "Missing the required parameter 'property' when calling SlidesApi.set_document_property"
      end
      # resource path
      local_var_path = '/slides/{name}/documentproperties/{propertyName}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'propertyName', property_name)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(property)

      # form parameters
      post_files = []

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
    # Set header/footer the notes slide.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param dto Header/footer to set.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def set_notes_slide_header_footer(name, slide_index, dto, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = set_notes_slide_header_footer_with_http_info(name, slide_index, dto, password, folder, storage)
      data
    end

    # Set header/footer the notes slide.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param dto Header/footer to set.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def set_notes_slide_header_footer_with_http_info(name, slide_index, dto, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.set_notes_slide_header_footer ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.set_notes_slide_header_footer"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.set_notes_slide_header_footer"
      end
      # verify the required parameter 'dto' is set
      if @api_client.config.client_side_validation && dto.nil?
        fail ArgumentError, "Missing the required parameter 'dto' when calling SlidesApi.set_notes_slide_header_footer"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/notesSlide/headerFooter'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(dto)

      # form parameters
      post_files = []

      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'NotesSlideHeaderFooter')
      return data, status_code, headers
    end
    # Set footers for all slides in a presentation.
    # @param name Document name.
    # @param dto HeaderFooter instance.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def set_presentation_header_footer(name, dto, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = set_presentation_header_footer_with_http_info(name, dto, password, folder, storage)
      data
    end

    # Set footers for all slides in a presentation.
    # @param name Document name.
    # @param dto HeaderFooter instance.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def set_presentation_header_footer_with_http_info(name, dto, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.set_presentation_header_footer ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.set_presentation_header_footer"
      end
      # verify the required parameter 'dto' is set
      if @api_client.config.client_side_validation && dto.nil?
        fail ArgumentError, "Missing the required parameter 'dto' when calling SlidesApi.set_presentation_header_footer"
      end
      # resource path
      local_var_path = '/slides/{name}/headerFooter'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(dto)

      # form parameters
      post_files = []

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
    # Updates presentation protection properties.
    # @param name Document name.
    # @param dto Protection properties.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def set_protection(name, dto, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = set_protection_with_http_info(name, dto, password, folder, storage)
      data
    end

    # Updates presentation protection properties.
    # @param name Document name.
    # @param dto Protection properties.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def set_protection_with_http_info(name, dto, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.set_protection ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.set_protection"
      end
      # verify the required parameter 'dto' is set
      if @api_client.config.client_side_validation && dto.nil?
        fail ArgumentError, "Missing the required parameter 'dto' when calling SlidesApi.set_protection"
      end
      # resource path
      local_var_path = '/slides/{name}/protection'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(dto)

      # form parameters
      post_files = []

      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'ProtectionProperties')
      return data, status_code, headers
    end
    # Sets presentation protection options. 
    # @param document Document data.
    # @param dto Protection properties.
    # @param password Document password.
    def set_protection_online(document, dto, password = nil)
      data, _status_code, _headers = set_protection_online_with_http_info(document, dto, password)
      data
    end

    # Sets presentation protection options. 
    # @param document Document data.
    # @param dto Protection properties.
    # @param password Document password.
    def set_protection_online_with_http_info(document, dto, password = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.set_protection_online ...'
      end

      # verify the required parameter 'document' is set
      if @api_client.config.client_side_validation && document.nil?
        fail ArgumentError, "Missing the required parameter 'document' when calling SlidesApi.set_protection_online"
      end
      # verify the required parameter 'dto' is set
      if @api_client.config.client_side_validation && dto.nil?
        fail ArgumentError, "Missing the required parameter 'dto' when calling SlidesApi.set_protection_online"
      end
      # resource path
      local_var_path = '/slides/protection'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(dto)

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
        :return_type => 'File')
      return data, status_code, headers
    end
    # Replace existing presentation sections with the ones provided in the sections DTO.
    # @param name Document name.
    # @param sections Sections DTO.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def set_sections(name, sections, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = set_sections_with_http_info(name, sections, password, folder, storage)
      data
    end

    # Replace existing presentation sections with the ones provided in the sections DTO.
    # @param name Document name.
    # @param sections Sections DTO.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def set_sections_with_http_info(name, sections, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.set_sections ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.set_sections"
      end
      # verify the required parameter 'sections' is set
      if @api_client.config.client_side_validation && sections.nil?
        fail ArgumentError, "Missing the required parameter 'sections' when calling SlidesApi.set_sections"
      end
      # resource path
      local_var_path = '/slides/{name}/sections'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(sections)

      # form parameters
      post_files = []

      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Sections')
      return data, status_code, headers
    end
    # Set footer the slide.
    # @param name Document name.
    # @param slide_index The position of the slide to be reordered.
    # @param dto Footer to set.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def set_slide_header_footer(name, slide_index, dto, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = set_slide_header_footer_with_http_info(name, slide_index, dto, password, folder, storage)
      data
    end

    # Set footer the slide.
    # @param name Document name.
    # @param slide_index The position of the slide to be reordered.
    # @param dto Footer to set.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def set_slide_header_footer_with_http_info(name, slide_index, dto, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.set_slide_header_footer ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.set_slide_header_footer"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.set_slide_header_footer"
      end
      # verify the required parameter 'dto' is set
      if @api_client.config.client_side_validation && dto.nil?
        fail ArgumentError, "Missing the required parameter 'dto' when calling SlidesApi.set_slide_header_footer"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/headerFooter'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(dto)

      # form parameters
      post_files = []

      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'HeaderFooter')
      return data, status_code, headers
    end
    # Update presentation slide properties.
    # @param name Document name.
    # @param dto The view properties data.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def set_slide_properties(name, dto, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = set_slide_properties_with_http_info(name, dto, password, folder, storage)
      data
    end

    # Update presentation slide properties.
    # @param name Document name.
    # @param dto The view properties data.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def set_slide_properties_with_http_info(name, dto, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.set_slide_properties ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.set_slide_properties"
      end
      # verify the required parameter 'dto' is set
      if @api_client.config.client_side_validation && dto.nil?
        fail ArgumentError, "Missing the required parameter 'dto' when calling SlidesApi.set_slide_properties"
      end
      # resource path
      local_var_path = '/slides/{name}/slideProperties'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(dto)

      # form parameters
      post_files = []

      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'SlideProperties')
      return data, status_code, headers
    end
    # Update presentation document properties.
    # @param name Document name.
    # @param dto The view properties data.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def set_view_properties(name, dto, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = set_view_properties_with_http_info(name, dto, password, folder, storage)
      data
    end

    # Update presentation document properties.
    # @param name Document name.
    # @param dto The view properties data.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def set_view_properties_with_http_info(name, dto, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.set_view_properties ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.set_view_properties"
      end
      # verify the required parameter 'dto' is set
      if @api_client.config.client_side_validation && dto.nil?
        fail ArgumentError, "Missing the required parameter 'dto' when calling SlidesApi.set_view_properties"
      end
      # resource path
      local_var_path = '/slides/{name}/viewProperties'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(dto)

      # form parameters
      post_files = []

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
    # Splitting presentations. Create one image per slide.
    # @param name Document name.
    # @param options Export options.
    # @param format Export format. Default value is jpeg.
    # @param width The width of created images.
    # @param height The height of created images.
    # @param from The start slide number for splitting, if is not specified splitting starts from the first slide of the presentation.
    # @param to The last slide number for splitting, if is not specified splitting ends at the last slide of the document.
    # @param dest_folder Folder on storage where images are going to be uploaded. If not specified then images are uploaded to same folder as presentation.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    # @param fonts_folder Custom fonts folder.
    def split(name, options = nil, format = nil, width = nil, height = nil, from = nil, to = nil, dest_folder = nil, password = nil, folder = nil, storage = nil, fonts_folder = nil)
      data, _status_code, _headers = split_with_http_info(name, options, format, width, height, from, to, dest_folder, password, folder, storage, fonts_folder)
      data
    end

    # Splitting presentations. Create one image per slide.
    # @param name Document name.
    # @param options Export options.
    # @param format Export format. Default value is jpeg.
    # @param width The width of created images.
    # @param height The height of created images.
    # @param from The start slide number for splitting, if is not specified splitting starts from the first slide of the presentation.
    # @param to The last slide number for splitting, if is not specified splitting ends at the last slide of the document.
    # @param dest_folder Folder on storage where images are going to be uploaded. If not specified then images are uploaded to same folder as presentation.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    # @param fonts_folder Custom fonts folder.
    def split_with_http_info(name, options = nil, format = nil, width = nil, height = nil, from = nil, to = nil, dest_folder = nil, password = nil, folder = nil, storage = nil, fonts_folder = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.split ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.split"
      end
      if @api_client.config.client_side_validation && format && !['Jpeg', 'Png', 'Gif', 'Bmp', 'Tiff', 'Html', 'Pdf', 'Xps', 'Pptx', 'Odp', 'Otp', 'Ppt', 'Pps', 'Ppsx', 'Pptm', 'Ppsm', 'Potx', 'Pot', 'Potm', 'Svg', 'Fodp'].any?{ |s| s.casecmp(format)==0 }
        fail ArgumentError, "Value " + format + " is not supported for 'format', must be one of Jpeg, Png, Gif, Bmp, Tiff, Html, Pdf, Xps, Pptx, Odp, Otp, Ppt, Pps, Ppsx, Pptm, Ppsm, Potx, Pot, Potm, Svg, Fodp"
      end
      # resource path
      local_var_path = '/slides/{name}/split'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)

      # query parameters
      query_params = {}
      query_params[:'format'] = format unless format.nil?
      query_params[:'width'] = width unless width.nil?
      query_params[:'height'] = height unless height.nil?
      query_params[:'from'] = from unless from.nil?
      query_params[:'to'] = to unless to.nil?
      query_params[:'destFolder'] = dest_folder unless dest_folder.nil?
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?
      query_params[:'fontsFolder'] = fonts_folder unless fonts_folder.nil?

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
        :return_type => 'SplitDocumentResult')
      return data, status_code, headers
    end
    # Splits PowerPoint presentation slides from the specified range into separate files and exports them in the specified file format. If the range is not provided all slides will be processed. 
    # @param document Document data.
    # @param format ExportFormat
    # @param dest_folder Folder on storage where images are going to be uploaded. If not specified then images are uploaded to the root folder.
    # @param width Slide width.
    # @param height Slide height.
    # @param from The start slide number for splitting, if is not specified splitting starts from the first slide of the presentation.
    # @param to The last slide number for splitting, if is not specified splitting ends at the last slide of the document.
    # @param password Document password.
    # @param storage Document storage.
    # @param fonts_folder Custom fonts folder.
    def split_and_save_online(document, format, dest_folder = nil, width = nil, height = nil, from = nil, to = nil, password = nil, storage = nil, fonts_folder = nil)
      data, _status_code, _headers = split_and_save_online_with_http_info(document, format, dest_folder, width, height, from, to, password, storage, fonts_folder)
      data
    end

    # Splits PowerPoint presentation slides from the specified range into separate files and exports them in the specified file format. If the range is not provided all slides will be processed. 
    # @param document Document data.
    # @param format ExportFormat
    # @param dest_folder Folder on storage where images are going to be uploaded. If not specified then images are uploaded to the root folder.
    # @param width Slide width.
    # @param height Slide height.
    # @param from The start slide number for splitting, if is not specified splitting starts from the first slide of the presentation.
    # @param to The last slide number for splitting, if is not specified splitting ends at the last slide of the document.
    # @param password Document password.
    # @param storage Document storage.
    # @param fonts_folder Custom fonts folder.
    def split_and_save_online_with_http_info(document, format, dest_folder = nil, width = nil, height = nil, from = nil, to = nil, password = nil, storage = nil, fonts_folder = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.split_and_save_online ...'
      end

      # verify the required parameter 'document' is set
      if @api_client.config.client_side_validation && document.nil?
        fail ArgumentError, "Missing the required parameter 'document' when calling SlidesApi.split_and_save_online"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling SlidesApi.split_and_save_online"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Jpeg', 'Png', 'Gif', 'Bmp', 'Tiff', 'Html', 'Pdf', 'Xps', 'Pptx', 'Odp', 'Otp', 'Ppt', 'Pps', 'Ppsx', 'Pptm', 'Ppsm', 'Potx', 'Pot', 'Potm', 'Svg', 'Fodp'].any?{ |s| s.casecmp(format)==0 }
        fail ArgumentError, "Value " + format + " is not supported for 'format', must be one of Jpeg, Png, Gif, Bmp, Tiff, Html, Pdf, Xps, Pptx, Odp, Otp, Ppt, Pps, Ppsx, Pptm, Ppsm, Potx, Pot, Potm, Svg, Fodp"
      end
      # resource path
      local_var_path = '/slides/split/{format}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'format', format)

      # query parameters
      query_params = {}
      query_params[:'destFolder'] = dest_folder unless dest_folder.nil?
      query_params[:'width'] = width unless width.nil?
      query_params[:'height'] = height unless height.nil?
      query_params[:'from'] = from unless from.nil?
      query_params[:'to'] = to unless to.nil?
      query_params[:'storage'] = storage unless storage.nil?
      query_params[:'fontsFolder'] = fonts_folder unless fonts_folder.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

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
        :return_type => 'SplitDocumentResult')
      return data, status_code, headers
    end
    # Splits PowerPoint presentation slides from the specified range into separate files and exports them in the specified file format. If the range is not provided all slides will be processed. 
    # @param document Document data.
    # @param format ExportFormat
    # @param width Slide width.
    # @param height Slide height.
    # @param from The start slide number for splitting, if is not specified splitting starts from the first slide of the presentation.
    # @param to The last slide number for splitting, if is not specified splitting ends at the last slide of the document.
    # @param password Document password.
    # @param storage Document storage.
    # @param fonts_folder Custom fonts folder.
    def split_online(document, format, width = nil, height = nil, from = nil, to = nil, password = nil, storage = nil, fonts_folder = nil)
      data, _status_code, _headers = split_online_with_http_info(document, format, width, height, from, to, password, storage, fonts_folder)
      data
    end

    # Splits PowerPoint presentation slides from the specified range into separate files and exports them in the specified file format. If the range is not provided all slides will be processed. 
    # @param document Document data.
    # @param format ExportFormat
    # @param width Slide width.
    # @param height Slide height.
    # @param from The start slide number for splitting, if is not specified splitting starts from the first slide of the presentation.
    # @param to The last slide number for splitting, if is not specified splitting ends at the last slide of the document.
    # @param password Document password.
    # @param storage Document storage.
    # @param fonts_folder Custom fonts folder.
    def split_online_with_http_info(document, format, width = nil, height = nil, from = nil, to = nil, password = nil, storage = nil, fonts_folder = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.split_online ...'
      end

      # verify the required parameter 'document' is set
      if @api_client.config.client_side_validation && document.nil?
        fail ArgumentError, "Missing the required parameter 'document' when calling SlidesApi.split_online"
      end
      # verify the required parameter 'format' is set
      if @api_client.config.client_side_validation && format.nil?
        fail ArgumentError, "Missing the required parameter 'format' when calling SlidesApi.split_online"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Jpeg', 'Png', 'Gif', 'Bmp', 'Tiff', 'Html', 'Pdf', 'Xps', 'Pptx', 'Odp', 'Otp', 'Ppt', 'Pps', 'Ppsx', 'Pptm', 'Ppsm', 'Potx', 'Pot', 'Potm', 'Svg', 'Fodp'].any?{ |s| s.casecmp(format)==0 }
        fail ArgumentError, "Value " + format + " is not supported for 'format', must be one of Jpeg, Png, Gif, Bmp, Tiff, Html, Pdf, Xps, Pptx, Odp, Otp, Ppt, Pps, Ppsx, Pptm, Ppsm, Potx, Pot, Potm, Svg, Fodp"
      end
      # resource path
      local_var_path = '/slides/split/{format}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'format', format)

      # query parameters
      query_params = {}
      query_params[:'width'] = width unless width.nil?
      query_params[:'height'] = height unless height.nil?
      query_params[:'from'] = from unless from.nil?
      query_params[:'to'] = to unless to.nil?
      query_params[:'storage'] = storage unless storage.nil?
      query_params[:'fontsFolder'] = fonts_folder unless fonts_folder.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

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
        :return_type => 'File')
      return data, status_code, headers
    end
    # Check if storage exists
    # @param storage_name Storage name
    def storage_exists(storage_name)
      data, _status_code, _headers = storage_exists_with_http_info(storage_name)
      data
    end

    # Check if storage exists
    # @param storage_name Storage name
    def storage_exists_with_http_info(storage_name)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.storage_exists ...'
      end

      # verify the required parameter 'storage_name' is set
      if @api_client.config.client_side_validation && storage_name.nil?
        fail ArgumentError, "Missing the required parameter 'storage_name' when calling SlidesApi.storage_exists"
      end
      # resource path
      local_var_path = '/slides/storage/{storageName}/exist'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'storageName', storage_name)

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
        :return_type => 'StorageExist')
      return data, status_code, headers
    end
    # Modify an animation effect for a slide.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param effect_index The position of the effect to be modified.
    # @param effect Animation effect DTO.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def update_animation_effect(name, slide_index, effect_index, effect, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = update_animation_effect_with_http_info(name, slide_index, effect_index, effect, password, folder, storage)
      data
    end

    # Modify an animation effect for a slide.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param effect_index The position of the effect to be modified.
    # @param effect Animation effect DTO.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def update_animation_effect_with_http_info(name, slide_index, effect_index, effect, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.update_animation_effect ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.update_animation_effect"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.update_animation_effect"
      end
      # verify the required parameter 'effect_index' is set
      if @api_client.config.client_side_validation && effect_index.nil?
        fail ArgumentError, "Missing the required parameter 'effect_index' when calling SlidesApi.update_animation_effect"
      end
      # verify the required parameter 'effect' is set
      if @api_client.config.client_side_validation && effect.nil?
        fail ArgumentError, "Missing the required parameter 'effect' when calling SlidesApi.update_animation_effect"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/animation/mainSequence/{effectIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'effectIndex', effect_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(effect)

      # form parameters
      post_files = []

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
    # @param name Document name.
    # @param slide_index Slide index.
    # @param sequence_index The position of the interactive sequence.
    # @param effect_index The position of the effect to be modified.
    # @param effect Animation effect DTO.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def update_animation_interactive_sequence_effect(name, slide_index, sequence_index, effect_index, effect, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = update_animation_interactive_sequence_effect_with_http_info(name, slide_index, sequence_index, effect_index, effect, password, folder, storage)
      data
    end

    # Modify an animation effect for a slide interactive sequence.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param sequence_index The position of the interactive sequence.
    # @param effect_index The position of the effect to be modified.
    # @param effect Animation effect DTO.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def update_animation_interactive_sequence_effect_with_http_info(name, slide_index, sequence_index, effect_index, effect, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.update_animation_interactive_sequence_effect ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.update_animation_interactive_sequence_effect"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.update_animation_interactive_sequence_effect"
      end
      # verify the required parameter 'sequence_index' is set
      if @api_client.config.client_side_validation && sequence_index.nil?
        fail ArgumentError, "Missing the required parameter 'sequence_index' when calling SlidesApi.update_animation_interactive_sequence_effect"
      end
      # verify the required parameter 'effect_index' is set
      if @api_client.config.client_side_validation && effect_index.nil?
        fail ArgumentError, "Missing the required parameter 'effect_index' when calling SlidesApi.update_animation_interactive_sequence_effect"
      end
      # verify the required parameter 'effect' is set
      if @api_client.config.client_side_validation && effect.nil?
        fail ArgumentError, "Missing the required parameter 'effect' when calling SlidesApi.update_animation_interactive_sequence_effect"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/animation/interactiveSequences/{sequenceIndex}/{effectIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'sequenceIndex', sequence_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'effectIndex', effect_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(effect)

      # form parameters
      post_files = []

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
    # Update a chart category.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param category_index Category index.
    # @param category Category DTO.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def update_chart_category(name, slide_index, shape_index, category_index, category, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = update_chart_category_with_http_info(name, slide_index, shape_index, category_index, category, password, folder, storage)
      data
    end

    # Update a chart category.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param category_index Category index.
    # @param category Category DTO.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def update_chart_category_with_http_info(name, slide_index, shape_index, category_index, category, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.update_chart_category ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.update_chart_category"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.update_chart_category"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.update_chart_category"
      end
      # verify the required parameter 'category_index' is set
      if @api_client.config.client_side_validation && category_index.nil?
        fail ArgumentError, "Missing the required parameter 'category_index' when calling SlidesApi.update_chart_category"
      end
      # verify the required parameter 'category' is set
      if @api_client.config.client_side_validation && category.nil?
        fail ArgumentError, "Missing the required parameter 'category' when calling SlidesApi.update_chart_category"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/categories/{categoryIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'categoryIndex', category_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(category)

      # form parameters
      post_files = []

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
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param series_index Series index.
    # @param point_index Data point index.
    # @param data_point Data point DTO.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def update_chart_data_point(name, slide_index, shape_index, series_index, point_index, data_point, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = update_chart_data_point_with_http_info(name, slide_index, shape_index, series_index, point_index, data_point, password, folder, storage)
      data
    end

    # Update a data point in a chart series.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param series_index Series index.
    # @param point_index Data point index.
    # @param data_point Data point DTO.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def update_chart_data_point_with_http_info(name, slide_index, shape_index, series_index, point_index, data_point, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.update_chart_data_point ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.update_chart_data_point"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.update_chart_data_point"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.update_chart_data_point"
      end
      # verify the required parameter 'series_index' is set
      if @api_client.config.client_side_validation && series_index.nil?
        fail ArgumentError, "Missing the required parameter 'series_index' when calling SlidesApi.update_chart_data_point"
      end
      # verify the required parameter 'point_index' is set
      if @api_client.config.client_side_validation && point_index.nil?
        fail ArgumentError, "Missing the required parameter 'point_index' when calling SlidesApi.update_chart_data_point"
      end
      # verify the required parameter 'data_point' is set
      if @api_client.config.client_side_validation && data_point.nil?
        fail ArgumentError, "Missing the required parameter 'data_point' when calling SlidesApi.update_chart_data_point"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/series/{seriesIndex}/dataPoints/{pointIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'seriesIndex', series_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'pointIndex', point_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(data_point)

      # form parameters
      post_files = []

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
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index (must be a chart).
    # @param series_index Series index.
    # @param series Series DTO.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def update_chart_series(name, slide_index, shape_index, series_index, series, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = update_chart_series_with_http_info(name, slide_index, shape_index, series_index, series, password, folder, storage)
      data
    end

    # Update a series in a chart.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index (must be a chart).
    # @param series_index Series index.
    # @param series Series DTO.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def update_chart_series_with_http_info(name, slide_index, shape_index, series_index, series, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.update_chart_series ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.update_chart_series"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.update_chart_series"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.update_chart_series"
      end
      # verify the required parameter 'series_index' is set
      if @api_client.config.client_side_validation && series_index.nil?
        fail ArgumentError, "Missing the required parameter 'series_index' when calling SlidesApi.update_chart_series"
      end
      # verify the required parameter 'series' is set
      if @api_client.config.client_side_validation && series.nil?
        fail ArgumentError, "Missing the required parameter 'series' when calling SlidesApi.update_chart_series"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/series/{seriesIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'seriesIndex', series_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(series)

      # form parameters
      post_files = []

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
    # @param name Document name.
    # @param slide_index Slide index.
    # @param slide_dto Slide update data.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def update_layout_slide(name, slide_index, slide_dto, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = update_layout_slide_with_http_info(name, slide_index, slide_dto, password, folder, storage)
      data
    end

    # Update a layoutSlide.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param slide_dto Slide update data.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def update_layout_slide_with_http_info(name, slide_index, slide_dto, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.update_layout_slide ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.update_layout_slide"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.update_layout_slide"
      end
      # verify the required parameter 'slide_dto' is set
      if @api_client.config.client_side_validation && slide_dto.nil?
        fail ArgumentError, "Missing the required parameter 'slide_dto' when calling SlidesApi.update_layout_slide"
      end
      # resource path
      local_var_path = '/slides/{name}/layoutSlides/{slideIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(slide_dto)

      # form parameters
      post_files = []

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
    # Update notes slide properties.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param dto A NotesSlide object with notes slide data.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def update_notes_slide(name, slide_index, dto, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = update_notes_slide_with_http_info(name, slide_index, dto, password, folder, storage)
      data
    end

    # Update notes slide properties.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param dto A NotesSlide object with notes slide data.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def update_notes_slide_with_http_info(name, slide_index, dto, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.update_notes_slide ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.update_notes_slide"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.update_notes_slide"
      end
      # verify the required parameter 'dto' is set
      if @api_client.config.client_side_validation && dto.nil?
        fail ArgumentError, "Missing the required parameter 'dto' when calling SlidesApi.update_notes_slide"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/notesSlide'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(dto)

      # form parameters
      post_files = []

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
    # Update paragraph properties.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param paragraph_index Paragraph index.
    # @param dto Paragraph DTO.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def update_notes_slide_paragraph(name, slide_index, shape_index, paragraph_index, dto, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = update_notes_slide_paragraph_with_http_info(name, slide_index, shape_index, paragraph_index, dto, password, folder, storage)
      data
    end

    # Update paragraph properties.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param paragraph_index Paragraph index.
    # @param dto Paragraph DTO.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def update_notes_slide_paragraph_with_http_info(name, slide_index, shape_index, paragraph_index, dto, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.update_notes_slide_paragraph ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.update_notes_slide_paragraph"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.update_notes_slide_paragraph"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.update_notes_slide_paragraph"
      end
      # verify the required parameter 'paragraph_index' is set
      if @api_client.config.client_side_validation && paragraph_index.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_index' when calling SlidesApi.update_notes_slide_paragraph"
      end
      # verify the required parameter 'dto' is set
      if @api_client.config.client_side_validation && dto.nil?
        fail ArgumentError, "Missing the required parameter 'dto' when calling SlidesApi.update_notes_slide_paragraph"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs/{paragraphIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'paragraphIndex', paragraph_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(dto)

      # form parameters
      post_files = []

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
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param paragraph_index Paragraph index.
    # @param portion_index Portion index.
    # @param dto Portion DTO.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def update_notes_slide_portion(name, slide_index, shape_index, paragraph_index, portion_index, dto, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = update_notes_slide_portion_with_http_info(name, slide_index, shape_index, paragraph_index, portion_index, dto, password, folder, storage)
      data
    end

    # Update portion properties.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param paragraph_index Paragraph index.
    # @param portion_index Portion index.
    # @param dto Portion DTO.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def update_notes_slide_portion_with_http_info(name, slide_index, shape_index, paragraph_index, portion_index, dto, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.update_notes_slide_portion ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.update_notes_slide_portion"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.update_notes_slide_portion"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.update_notes_slide_portion"
      end
      # verify the required parameter 'paragraph_index' is set
      if @api_client.config.client_side_validation && paragraph_index.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_index' when calling SlidesApi.update_notes_slide_portion"
      end
      # verify the required parameter 'portion_index' is set
      if @api_client.config.client_side_validation && portion_index.nil?
        fail ArgumentError, "Missing the required parameter 'portion_index' when calling SlidesApi.update_notes_slide_portion"
      end
      # verify the required parameter 'dto' is set
      if @api_client.config.client_side_validation && dto.nil?
        fail ArgumentError, "Missing the required parameter 'dto' when calling SlidesApi.update_notes_slide_portion"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'paragraphIndex', paragraph_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'portionIndex', portion_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(dto)

      # form parameters
      post_files = []

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
    # Update shape properties.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param dto Shape DTO.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def update_notes_slide_shape(name, slide_index, shape_index, dto, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = update_notes_slide_shape_with_http_info(name, slide_index, shape_index, dto, password, folder, storage)
      data
    end

    # Update shape properties.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param dto Shape DTO.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def update_notes_slide_shape_with_http_info(name, slide_index, shape_index, dto, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.update_notes_slide_shape ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.update_notes_slide_shape"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.update_notes_slide_shape"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.update_notes_slide_shape"
      end
      # verify the required parameter 'dto' is set
      if @api_client.config.client_side_validation && dto.nil?
        fail ArgumentError, "Missing the required parameter 'dto' when calling SlidesApi.update_notes_slide_shape"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/notesSlide/shapes/{shapeIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(dto)

      # form parameters
      post_files = []

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
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param paragraph_index Paragraph index.
    # @param dto Paragraph DTO.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def update_paragraph(name, slide_index, shape_index, paragraph_index, dto, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = update_paragraph_with_http_info(name, slide_index, shape_index, paragraph_index, dto, password, folder, storage)
      data
    end

    # Update paragraph properties.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param paragraph_index Paragraph index.
    # @param dto Paragraph DTO.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def update_paragraph_with_http_info(name, slide_index, shape_index, paragraph_index, dto, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.update_paragraph ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.update_paragraph"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.update_paragraph"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.update_paragraph"
      end
      # verify the required parameter 'paragraph_index' is set
      if @api_client.config.client_side_validation && paragraph_index.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_index' when calling SlidesApi.update_paragraph"
      end
      # verify the required parameter 'dto' is set
      if @api_client.config.client_side_validation && dto.nil?
        fail ArgumentError, "Missing the required parameter 'dto' when calling SlidesApi.update_paragraph"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'paragraphIndex', paragraph_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(dto)

      # form parameters
      post_files = []

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
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param paragraph_index Paragraph index.
    # @param portion_index Portion index.
    # @param dto Portion DTO.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def update_portion(name, slide_index, shape_index, paragraph_index, portion_index, dto, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = update_portion_with_http_info(name, slide_index, shape_index, paragraph_index, portion_index, dto, password, folder, storage)
      data
    end

    # Update portion properties.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param paragraph_index Paragraph index.
    # @param portion_index Portion index.
    # @param dto Portion DTO.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def update_portion_with_http_info(name, slide_index, shape_index, paragraph_index, portion_index, dto, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.update_portion ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.update_portion"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.update_portion"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.update_portion"
      end
      # verify the required parameter 'paragraph_index' is set
      if @api_client.config.client_side_validation && paragraph_index.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_index' when calling SlidesApi.update_portion"
      end
      # verify the required parameter 'portion_index' is set
      if @api_client.config.client_side_validation && portion_index.nil?
        fail ArgumentError, "Missing the required parameter 'portion_index' when calling SlidesApi.update_portion"
      end
      # verify the required parameter 'dto' is set
      if @api_client.config.client_side_validation && dto.nil?
        fail ArgumentError, "Missing the required parameter 'dto' when calling SlidesApi.update_portion"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'paragraphIndex', paragraph_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'portionIndex', portion_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(dto)

      # form parameters
      post_files = []

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
    # Update section name.
    # @param name Document name.
    # @param section_index The position of the section to be updated.
    # @param section_name Section name.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def update_section(name, section_index, section_name, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = update_section_with_http_info(name, section_index, section_name, password, folder, storage)
      data
    end

    # Update section name.
    # @param name Document name.
    # @param section_index The position of the section to be updated.
    # @param section_name Section name.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def update_section_with_http_info(name, section_index, section_name, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.update_section ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.update_section"
      end
      # verify the required parameter 'section_index' is set
      if @api_client.config.client_side_validation && section_index.nil?
        fail ArgumentError, "Missing the required parameter 'section_index' when calling SlidesApi.update_section"
      end
      # verify the required parameter 'section_name' is set
      if @api_client.config.client_side_validation && section_name.nil?
        fail ArgumentError, "Missing the required parameter 'section_name' when calling SlidesApi.update_section"
      end
      # resource path
      local_var_path = '/slides/{name}/sections/{sectionIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'sectionIndex', section_index)

      # query parameters
      query_params = {}
      query_params[:'sectionName'] = section_name unless section_name.nil?
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []

      auth_names = ['JWT']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :body => post_body,
        :files => post_files,
        :auth_names => auth_names,
        :return_type => 'Sections')
      return data, status_code, headers
    end
    # Update shape properties.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param dto Shape DTO.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def update_shape(name, slide_index, shape_index, dto, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = update_shape_with_http_info(name, slide_index, shape_index, dto, password, folder, storage)
      data
    end

    # Update shape properties.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param shape_index Shape index.
    # @param dto Shape DTO.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def update_shape_with_http_info(name, slide_index, shape_index, dto, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.update_shape ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.update_shape"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.update_shape"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.update_shape"
      end
      # verify the required parameter 'dto' is set
      if @api_client.config.client_side_validation && dto.nil?
        fail ArgumentError, "Missing the required parameter 'dto' when calling SlidesApi.update_shape"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(dto)

      # form parameters
      post_files = []

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
    # Update a slide.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param slide_dto Slide update data.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def update_slide(name, slide_index, slide_dto, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = update_slide_with_http_info(name, slide_index, slide_dto, password, folder, storage)
      data
    end

    # Update a slide.
    # @param name Document name.
    # @param slide_index Slide index.
    # @param slide_dto Slide update data.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def update_slide_with_http_info(name, slide_index, slide_dto, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.update_slide ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.update_slide"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.update_slide"
      end
      # verify the required parameter 'slide_dto' is set
      if @api_client.config.client_side_validation && slide_dto.nil?
        fail ArgumentError, "Missing the required parameter 'slide_dto' when calling SlidesApi.update_slide"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(slide_dto)

      # form parameters
      post_files = []

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
    # Update shape properties (for smart art and group shapes).
    # @param name Document name.
    # @param slide_index Slide index.
    # @param path Shape path.
    # @param shape_index Shape index.
    # @param dto Shape DTO.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def update_subshape(name, slide_index, path, shape_index, dto, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = update_subshape_with_http_info(name, slide_index, path, shape_index, dto, password, folder, storage)
      data
    end

    # Update shape properties (for smart art and group shapes).
    # @param name Document name.
    # @param slide_index Slide index.
    # @param path Shape path.
    # @param shape_index Shape index.
    # @param dto Shape DTO.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def update_subshape_with_http_info(name, slide_index, path, shape_index, dto, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.update_subshape ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.update_subshape"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.update_subshape"
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling SlidesApi.update_subshape"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.update_subshape"
      end
      # verify the required parameter 'dto' is set
      if @api_client.config.client_side_validation && dto.nil?
        fail ArgumentError, "Missing the required parameter 'dto' when calling SlidesApi.update_subshape"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', path)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(dto)

      # form parameters
      post_files = []

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
    # Update paragraph properties (for smart art and group shapes).
    # @param name Document name.
    # @param slide_index Slide index.
    # @param path Shape path.
    # @param shape_index Shape index.
    # @param paragraph_index Paragraph index.
    # @param dto Paragraph DTO.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def update_subshape_paragraph(name, slide_index, path, shape_index, paragraph_index, dto, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = update_subshape_paragraph_with_http_info(name, slide_index, path, shape_index, paragraph_index, dto, password, folder, storage)
      data
    end

    # Update paragraph properties (for smart art and group shapes).
    # @param name Document name.
    # @param slide_index Slide index.
    # @param path Shape path.
    # @param shape_index Shape index.
    # @param paragraph_index Paragraph index.
    # @param dto Paragraph DTO.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def update_subshape_paragraph_with_http_info(name, slide_index, path, shape_index, paragraph_index, dto, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.update_subshape_paragraph ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.update_subshape_paragraph"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.update_subshape_paragraph"
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling SlidesApi.update_subshape_paragraph"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.update_subshape_paragraph"
      end
      # verify the required parameter 'paragraph_index' is set
      if @api_client.config.client_side_validation && paragraph_index.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_index' when calling SlidesApi.update_subshape_paragraph"
      end
      # verify the required parameter 'dto' is set
      if @api_client.config.client_side_validation && dto.nil?
        fail ArgumentError, "Missing the required parameter 'dto' when calling SlidesApi.update_subshape_paragraph"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', path)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'paragraphIndex', paragraph_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(dto)

      # form parameters
      post_files = []

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
    # @param name Document name.
    # @param slide_index Slide index.
    # @param path Shape path.
    # @param shape_index Shape index.
    # @param paragraph_index Paragraph index.
    # @param portion_index Portion index.
    # @param dto Portion DTO.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def update_subshape_portion(name, slide_index, path, shape_index, paragraph_index, portion_index, dto, password = nil, folder = nil, storage = nil)
      data, _status_code, _headers = update_subshape_portion_with_http_info(name, slide_index, path, shape_index, paragraph_index, portion_index, dto, password, folder, storage)
      data
    end

    # Update portion properties (for smart art and group shapes).
    # @param name Document name.
    # @param slide_index Slide index.
    # @param path Shape path.
    # @param shape_index Shape index.
    # @param paragraph_index Paragraph index.
    # @param portion_index Portion index.
    # @param dto Portion DTO.
    # @param password Document password.
    # @param folder Document folder.
    # @param storage Document storage.
    def update_subshape_portion_with_http_info(name, slide_index, path, shape_index, paragraph_index, portion_index, dto, password = nil, folder = nil, storage = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.update_subshape_portion ...'
      end

      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling SlidesApi.update_subshape_portion"
      end
      # verify the required parameter 'slide_index' is set
      if @api_client.config.client_side_validation && slide_index.nil?
        fail ArgumentError, "Missing the required parameter 'slide_index' when calling SlidesApi.update_subshape_portion"
      end
      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling SlidesApi.update_subshape_portion"
      end
      # verify the required parameter 'shape_index' is set
      if @api_client.config.client_side_validation && shape_index.nil?
        fail ArgumentError, "Missing the required parameter 'shape_index' when calling SlidesApi.update_subshape_portion"
      end
      # verify the required parameter 'paragraph_index' is set
      if @api_client.config.client_side_validation && paragraph_index.nil?
        fail ArgumentError, "Missing the required parameter 'paragraph_index' when calling SlidesApi.update_subshape_portion"
      end
      # verify the required parameter 'portion_index' is set
      if @api_client.config.client_side_validation && portion_index.nil?
        fail ArgumentError, "Missing the required parameter 'portion_index' when calling SlidesApi.update_subshape_portion"
      end
      # verify the required parameter 'dto' is set
      if @api_client.config.client_side_validation && dto.nil?
        fail ArgumentError, "Missing the required parameter 'dto' when calling SlidesApi.update_subshape_portion"
      end
      # resource path
      local_var_path = '/slides/{name}/slides/{slideIndex}/shapes/{path}/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'name', name)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'slideIndex', slide_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', path)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'shapeIndex', shape_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'paragraphIndex', paragraph_index)
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'portionIndex', portion_index)

      # query parameters
      query_params = {}
      query_params[:'folder'] = folder unless folder.nil?
      query_params[:'storage'] = storage unless storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'password'] = password unless password.nil?

      # http body (model)
      post_body = @api_client.object_to_http_body(dto)

      # form parameters
      post_files = []

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
    # Upload file
    # @param path Path where to upload including filename and extension e.g. /file.ext or /Folder 1/file.ext             If the content is multipart and path does not contains the file name it tries to get them from filename parameter             from Content-Disposition header.             
    # @param file File to upload
    # @param storage_name Storage name
    def upload_file(path, file, storage_name = nil)
      data, _status_code, _headers = upload_file_with_http_info(path, file, storage_name)
      data
    end

    # Upload file
    # @param path Path where to upload including filename and extension e.g. /file.ext or /Folder 1/file.ext             If the content is multipart and path does not contains the file name it tries to get them from filename parameter             from Content-Disposition header.             
    # @param file File to upload
    # @param storage_name Storage name
    def upload_file_with_http_info(path, file, storage_name = nil)
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SlidesApi.upload_file ...'
      end

      # verify the required parameter 'path' is set
      if @api_client.config.client_side_validation && path.nil?
        fail ArgumentError, "Missing the required parameter 'path' when calling SlidesApi.upload_file"
      end
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling SlidesApi.upload_file"
      end
      # resource path
      local_var_path = '/slides/storage/file/{path}'
      local_var_path = @api_client.replace_path_parameter(local_var_path, 'path', path)

      # query parameters
      query_params = {}
      query_params[:'storageName'] = storage_name unless storage_name.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # http body (model)
      post_body = nil

      # form parameters
      post_files = []
      if file
        post_files = post_files.push(file)
      end

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
