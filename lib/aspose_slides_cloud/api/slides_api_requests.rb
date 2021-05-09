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

module AsposeSlidesCloud

  # request model for copy_file
  class CopyFileRequest

    # @param src_path Source file path e.g. &#39;/folder/file.ext&#39;
    attr_accessor :src_path

    # @param dest_path Destination file path
    attr_accessor :dest_path

    # @param src_storage_name Source storage name
    attr_accessor :src_storage_name

    # @param dest_storage_name Destination storage name
    attr_accessor :dest_storage_name

    # @param version_id File version ID to copy
    attr_accessor :version_id
  end

  # request model for copy_folder
  class CopyFolderRequest

    # @param src_path Source folder path e.g. &#39;/src&#39;
    attr_accessor :src_path

    # @param dest_path Destination folder path e.g. &#39;/dst&#39;
    attr_accessor :dest_path

    # @param src_storage_name Source storage name
    attr_accessor :src_storage_name

    # @param dest_storage_name Destination storage name
    attr_accessor :dest_storage_name
  end

  # request model for create_folder
  class CreateFolderRequest

    # @param path Folder path to create e.g. &#39;folder_1/folder_2/&#39;
    attr_accessor :path

    # @param storage_name Storage name
    attr_accessor :storage_name
  end

  # request model for delete_chart_category
  class DeleteChartCategoryRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param shape_index Shape index.
    attr_accessor :shape_index

    # @param category_index Category index.
    attr_accessor :category_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for delete_chart_data_point
  class DeleteChartDataPointRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param shape_index Shape index.
    attr_accessor :shape_index

    # @param series_index Series index.
    attr_accessor :series_index

    # @param point_index Data point index.
    attr_accessor :point_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for delete_chart_series
  class DeleteChartSeriesRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param shape_index Shape index (must be a chart).
    attr_accessor :shape_index

    # @param series_index Series index.
    attr_accessor :series_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for delete_file
  class DeleteFileRequest

    # @param path File path e.g. &#39;/folder/file.ext&#39;
    attr_accessor :path

    # @param storage_name Storage name
    attr_accessor :storage_name

    # @param version_id File version ID to delete
    attr_accessor :version_id
  end

  # request model for delete_folder
  class DeleteFolderRequest

    # @param path Folder path e.g. &#39;/folder&#39;
    attr_accessor :path

    # @param storage_name Storage name
    attr_accessor :storage_name

    # @param recursive Enable to delete folders, subfolders and files
    attr_accessor :recursive
  end

  # request model for delete_notes_slide
  class DeleteNotesSlideRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for delete_notes_slide_paragraph
  class DeleteNotesSlideParagraphRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param shape_index Shape index.
    attr_accessor :shape_index

    # @param paragraph_index Paragraph index.
    attr_accessor :paragraph_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for delete_notes_slide_paragraphs
  class DeleteNotesSlideParagraphsRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param shape_index Shape index.
    attr_accessor :shape_index

    # @param paragraphs The indices of the shapes to be deleted; delete all by default.
    attr_accessor :paragraphs

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for delete_notes_slide_portion
  class DeleteNotesSlidePortionRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param shape_index Shape index.
    attr_accessor :shape_index

    # @param paragraph_index Paragraph index.
    attr_accessor :paragraph_index

    # @param portion_index Portion index.
    attr_accessor :portion_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for delete_notes_slide_portions
  class DeleteNotesSlidePortionsRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param shape_index Shape index.
    attr_accessor :shape_index

    # @param paragraph_index Paragraph index.
    attr_accessor :paragraph_index

    # @param portions The indices of the shapes to be deleted; delete all by default.
    attr_accessor :portions

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for delete_notes_slide_shape
  class DeleteNotesSlideShapeRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param shape_index Shape index.
    attr_accessor :shape_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for delete_notes_slide_shapes
  class DeleteNotesSlideShapesRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param shapes The indices of the shapes to be deleted; delete all by default.
    attr_accessor :shapes

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for delete_paragraph
  class DeleteParagraphRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param shape_index Shape index.
    attr_accessor :shape_index

    # @param paragraph_index Paragraph index.
    attr_accessor :paragraph_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for delete_paragraphs
  class DeleteParagraphsRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param shape_index Shape index.
    attr_accessor :shape_index

    # @param paragraphs The indices of the shapes to be deleted; delete all by default.
    attr_accessor :paragraphs

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for delete_portion
  class DeletePortionRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param shape_index Shape index.
    attr_accessor :shape_index

    # @param paragraph_index Paragraph index.
    attr_accessor :paragraph_index

    # @param portion_index Portion index.
    attr_accessor :portion_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for delete_portions
  class DeletePortionsRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param shape_index Shape index.
    attr_accessor :shape_index

    # @param paragraph_index Paragraph index.
    attr_accessor :paragraph_index

    # @param portions The indices of the shapes to be deleted; delete all by default.
    attr_accessor :portions

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for delete_section
  class DeleteSectionRequest

    # @param name Document name.
    attr_accessor :name

    # @param section_index Section index.
    attr_accessor :section_index

    # @param with_slides True to delete the slides related to the deleted section; move them to the remaining sections otherwise.
    attr_accessor :with_slides

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for delete_sections
  class DeleteSectionsRequest

    # @param name Document name.
    attr_accessor :name

    # @param sections The indices of the sections to be deleted; delete all by default.
    attr_accessor :sections

    # @param with_slides True to delete the slides related to the deleted sections; move them to the remaining sections otherwise.
    attr_accessor :with_slides

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for delete_slide_animation
  class DeleteSlideAnimationRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for delete_slide_animation_effect
  class DeleteSlideAnimationEffectRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param effect_index Index of the effect to be removed.
    attr_accessor :effect_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for delete_slide_animation_interactive_sequence
  class DeleteSlideAnimationInteractiveSequenceRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param sequence_index The index of an interactive sequence to be deleted.
    attr_accessor :sequence_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for delete_slide_animation_interactive_sequence_effect
  class DeleteSlideAnimationInteractiveSequenceEffectRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param sequence_index Interactive sequence index.
    attr_accessor :sequence_index

    # @param effect_index Index of the effect to be removed.
    attr_accessor :effect_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for delete_slide_animation_interactive_sequences
  class DeleteSlideAnimationInteractiveSequencesRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for delete_slide_animation_main_sequence
  class DeleteSlideAnimationMainSequenceRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for delete_slide_by_index
  class DeleteSlideByIndexRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for delete_slide_shape
  class DeleteSlideShapeRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param shape_index Shape index.
    attr_accessor :shape_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for delete_slide_shapes
  class DeleteSlideShapesRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param shapes The indices of the shapes to be deleted; delete all by default.
    attr_accessor :shapes

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for delete_slide_subshape
  class DeleteSlideSubshapeRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param path Shape path.
    attr_accessor :path

    # @param shape_index Shape index.
    attr_accessor :shape_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for delete_slide_subshapes
  class DeleteSlideSubshapesRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param path Shape path.
    attr_accessor :path

    # @param shapes The indices of the shapes to be deleted; delete all by default.
    attr_accessor :shapes

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for delete_slides_clean_slides_list
  class DeleteSlidesCleanSlidesListRequest

    # @param name Document name.
    attr_accessor :name

    # @param slides The indices of the slides to be deleted; delete all by default.
    attr_accessor :slides

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for delete_slides_document_properties
  class DeleteSlidesDocumentPropertiesRequest

    # @param name Document name.
    attr_accessor :name

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for delete_slides_document_property
  class DeleteSlidesDocumentPropertyRequest

    # @param name Document name.
    attr_accessor :name

    # @param property_name The property name.
    attr_accessor :property_name

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for delete_slides_protection_properties
  class DeleteSlidesProtectionPropertiesRequest

    # @param name Document name.
    attr_accessor :name

    # @param password Presentation password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for delete_slides_protection_properties_online
  class DeleteSlidesProtectionPropertiesOnlineRequest

    # @param document Document data.
    attr_accessor :document

    # @param password Presentation password.
    attr_accessor :password
  end

  # request model for delete_slides_slide_background
  class DeleteSlidesSlideBackgroundRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for delete_subshape_paragraph
  class DeleteSubshapeParagraphRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param path Shape path.
    attr_accessor :path

    # @param shape_index Shape index.
    attr_accessor :shape_index

    # @param paragraph_index Paragraph index.
    attr_accessor :paragraph_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for delete_subshape_paragraphs
  class DeleteSubshapeParagraphsRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param path Shape path.
    attr_accessor :path

    # @param shape_index Shape index.
    attr_accessor :shape_index

    # @param paragraphs The indices of the shapes to be deleted; delete all by default.
    attr_accessor :paragraphs

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for delete_subshape_portion
  class DeleteSubshapePortionRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param path Shape path.
    attr_accessor :path

    # @param shape_index Shape index.
    attr_accessor :shape_index

    # @param paragraph_index Paragraph index.
    attr_accessor :paragraph_index

    # @param portion_index Portion index.
    attr_accessor :portion_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for delete_subshape_portions
  class DeleteSubshapePortionsRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param path Shape path.
    attr_accessor :path

    # @param shape_index Shape index.
    attr_accessor :shape_index

    # @param paragraph_index Paragraph index.
    attr_accessor :paragraph_index

    # @param portions The indices of the shapes to be deleted; delete all by default.
    attr_accessor :portions

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for delete_watermark
  class DeleteWatermarkRequest

    # @param name Document name.
    attr_accessor :name

    # @param shape_name Name of the watermark shape. If null, default value \&quot;watermark\&quot;is used.
    attr_accessor :shape_name

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for download_file
  class DownloadFileRequest

    # @param path File path e.g. &#39;/folder/file.ext&#39;
    attr_accessor :path

    # @param storage_name Storage name
    attr_accessor :storage_name

    # @param version_id File version ID to download
    attr_accessor :version_id
  end

  # request model for get_disc_usage
  class GetDiscUsageRequest

    # @param storage_name Storage name
    attr_accessor :storage_name
  end

  # request model for get_file_versions
  class GetFileVersionsRequest

    # @param path File path e.g. &#39;/file.ext&#39;
    attr_accessor :path

    # @param storage_name Storage name
    attr_accessor :storage_name
  end

  # request model for get_files_list
  class GetFilesListRequest

    # @param path Folder path e.g. &#39;/folder&#39;
    attr_accessor :path

    # @param storage_name Storage name
    attr_accessor :storage_name
  end

  # request model for get_layout_slide
  class GetLayoutSlideRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for get_layout_slides_list
  class GetLayoutSlidesListRequest

    # @param name Document name.
    attr_accessor :name

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for get_master_slide
  class GetMasterSlideRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for get_master_slides_list
  class GetMasterSlidesListRequest

    # @param name Document name.
    attr_accessor :name

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for get_notes_slide
  class GetNotesSlideRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for get_notes_slide_exists
  class GetNotesSlideExistsRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for get_notes_slide_header_footer
  class GetNotesSlideHeaderFooterRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for get_notes_slide_shape
  class GetNotesSlideShapeRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param shape_index Shape index.
    attr_accessor :shape_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for get_notes_slide_shape_paragraph
  class GetNotesSlideShapeParagraphRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param shape_index Shape index.
    attr_accessor :shape_index

    # @param paragraph_index Paragraph index.
    attr_accessor :paragraph_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for get_notes_slide_shape_paragraphs
  class GetNotesSlideShapeParagraphsRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param shape_index Shape index.
    attr_accessor :shape_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for get_notes_slide_shape_portion
  class GetNotesSlideShapePortionRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param shape_index Shape index.
    attr_accessor :shape_index

    # @param paragraph_index Paragraph index.
    attr_accessor :paragraph_index

    # @param portion_index Portion index.
    attr_accessor :portion_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for get_notes_slide_shape_portions
  class GetNotesSlideShapePortionsRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param shape_index Shape index.
    attr_accessor :shape_index

    # @param paragraph_index Paragraph index.
    attr_accessor :paragraph_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for get_notes_slide_shapes
  class GetNotesSlideShapesRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for get_notes_slide_with_format
  class GetNotesSlideWithFormatRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param format Output file format.
    attr_accessor :format

    # @param width Output file width.
    attr_accessor :width

    # @param height Output file height.
    attr_accessor :height

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage

    # @param fonts_folder Storage folder containing custom fonts to be used with the document.
    attr_accessor :fonts_folder
  end

  # request model for get_paragraph_portion
  class GetParagraphPortionRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param shape_index Shape index.
    attr_accessor :shape_index

    # @param paragraph_index Paragraph index.
    attr_accessor :paragraph_index

    # @param portion_index Portion index.
    attr_accessor :portion_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for get_paragraph_portions
  class GetParagraphPortionsRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param shape_index Shape index.
    attr_accessor :shape_index

    # @param paragraph_index Paragraph index.
    attr_accessor :paragraph_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for get_sections
  class GetSectionsRequest

    # @param name Document name.
    attr_accessor :name

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for get_slide_animation
  class GetSlideAnimationRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param shape_index Shape index. If specified, only effects related to that shape are returned.
    attr_accessor :shape_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for get_slide_header_footer
  class GetSlideHeaderFooterRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index The position of the slide to be reordered.
    attr_accessor :slide_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for get_slide_shape
  class GetSlideShapeRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param shape_index Shape index.
    attr_accessor :shape_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for get_slide_shape_paragraph
  class GetSlideShapeParagraphRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param shape_index Shape index.
    attr_accessor :shape_index

    # @param paragraph_index Paragraph index.
    attr_accessor :paragraph_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for get_slide_shape_paragraphs
  class GetSlideShapeParagraphsRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param shape_index Shape index.
    attr_accessor :shape_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for get_slide_shapes
  class GetSlideShapesRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for get_slide_subshape
  class GetSlideSubshapeRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param path Shape path.
    attr_accessor :path

    # @param shape_index Shape index.
    attr_accessor :shape_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for get_slide_subshape_paragraph
  class GetSlideSubshapeParagraphRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param path Shape path.
    attr_accessor :path

    # @param shape_index Shape index.
    attr_accessor :shape_index

    # @param paragraph_index Paragraph index.
    attr_accessor :paragraph_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for get_slide_subshape_paragraphs
  class GetSlideSubshapeParagraphsRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param path Shape path.
    attr_accessor :path

    # @param shape_index Shape index.
    attr_accessor :shape_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for get_slide_subshapes
  class GetSlideSubshapesRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param path Shape path (for smart art and group shapes).
    attr_accessor :path

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for get_slides_document
  class GetSlidesDocumentRequest

    # @param name Document name.
    attr_accessor :name

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for get_slides_document_properties
  class GetSlidesDocumentPropertiesRequest

    # @param name Document name.
    attr_accessor :name

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for get_slides_document_property
  class GetSlidesDocumentPropertyRequest

    # @param name Document name.
    attr_accessor :name

    # @param property_name The property name.
    attr_accessor :property_name

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for get_slides_image_with_default_format
  class GetSlidesImageWithDefaultFormatRequest

    # @param name Document name.
    attr_accessor :name

    # @param index Image index.
    attr_accessor :index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for get_slides_image_with_format
  class GetSlidesImageWithFormatRequest

    # @param name Document name.
    attr_accessor :name

    # @param index Image index.
    attr_accessor :index

    # @param format Export format (png, jpg, gif).
    attr_accessor :format

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for get_slides_images
  class GetSlidesImagesRequest

    # @param name Document name.
    attr_accessor :name

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for get_slides_placeholder
  class GetSlidesPlaceholderRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param placeholder_index Placeholder index.
    attr_accessor :placeholder_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for get_slides_placeholders
  class GetSlidesPlaceholdersRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for get_slides_presentation_text_items
  class GetSlidesPresentationTextItemsRequest

    # @param name Document name.
    attr_accessor :name

    # @param with_empty True to incude empty items.
    attr_accessor :with_empty

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for get_slides_protection_properties
  class GetSlidesProtectionPropertiesRequest

    # @param name Document name.
    attr_accessor :name

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for get_slides_slide
  class GetSlidesSlideRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for get_slides_slide_background
  class GetSlidesSlideBackgroundRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for get_slides_slide_comments
  class GetSlidesSlideCommentsRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index The position of the slide to be reordered.
    attr_accessor :slide_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for get_slides_slide_images
  class GetSlidesSlideImagesRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for get_slides_slide_properties
  class GetSlidesSlidePropertiesRequest

    # @param name Document name.
    attr_accessor :name

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for get_slides_slide_text_items
  class GetSlidesSlideTextItemsRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param with_empty True to include empty items.
    attr_accessor :with_empty

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for get_slides_slides_list
  class GetSlidesSlidesListRequest

    # @param name Document name.
    attr_accessor :name

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for get_slides_theme
  class GetSlidesThemeRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for get_slides_theme_color_scheme
  class GetSlidesThemeColorSchemeRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for get_slides_theme_font_scheme
  class GetSlidesThemeFontSchemeRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for get_slides_theme_format_scheme
  class GetSlidesThemeFormatSchemeRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for get_slides_view_properties
  class GetSlidesViewPropertiesRequest

    # @param name Document name.
    attr_accessor :name

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for get_subshape_paragraph_portion
  class GetSubshapeParagraphPortionRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param path Shape path.
    attr_accessor :path

    # @param shape_index Shape index.
    attr_accessor :shape_index

    # @param paragraph_index Paragraph index.
    attr_accessor :paragraph_index

    # @param portion_index Portion index.
    attr_accessor :portion_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for get_subshape_paragraph_portions
  class GetSubshapeParagraphPortionsRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param path Shape path.
    attr_accessor :path

    # @param shape_index Shape index.
    attr_accessor :shape_index

    # @param paragraph_index Paragraph index.
    attr_accessor :paragraph_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for move_file
  class MoveFileRequest

    # @param src_path Source file path e.g. &#39;/src.ext&#39;
    attr_accessor :src_path

    # @param dest_path Destination file path e.g. &#39;/dest.ext&#39;
    attr_accessor :dest_path

    # @param src_storage_name Source storage name
    attr_accessor :src_storage_name

    # @param dest_storage_name Destination storage name
    attr_accessor :dest_storage_name

    # @param version_id File version ID to move
    attr_accessor :version_id
  end

  # request model for move_folder
  class MoveFolderRequest

    # @param src_path Folder path to move e.g. &#39;/folder&#39;
    attr_accessor :src_path

    # @param dest_path Destination folder path to move to e.g &#39;/dst&#39;
    attr_accessor :dest_path

    # @param src_storage_name Source storage name
    attr_accessor :src_storage_name

    # @param dest_storage_name Destination storage name
    attr_accessor :dest_storage_name
  end

  # request model for object_exists
  class ObjectExistsRequest

    # @param path File or folder path e.g. &#39;/file.ext&#39; or &#39;/folder&#39;
    attr_accessor :path

    # @param storage_name Storage name
    attr_accessor :storage_name

    # @param version_id File version ID
    attr_accessor :version_id
  end

  # request model for post_add_new_paragraph
  class PostAddNewParagraphRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param shape_index Shape index.
    attr_accessor :shape_index

    # @param dto Paragraph DTO.
    attr_accessor :dto

    # @param position Position of the new paragraph in the list. Default is at the end of the list.
    attr_accessor :position

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for post_add_new_portion
  class PostAddNewPortionRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param shape_index Shape index.
    attr_accessor :shape_index

    # @param paragraph_index Paragraph index.
    attr_accessor :paragraph_index

    # @param dto Portion DTO.
    attr_accessor :dto

    # @param position Position of the new portion in the list. Default is at the end of the list.
    attr_accessor :position

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for post_add_new_shape
  class PostAddNewShapeRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param dto Shape DTO.
    attr_accessor :dto

    # @param shape_to_clone Optional index for clone shape instead of adding a new one.
    attr_accessor :shape_to_clone

    # @param position Position of the new shape in the list. Default is at the end of the list.
    attr_accessor :position

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for post_add_new_subshape
  class PostAddNewSubshapeRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param path Shape path.
    attr_accessor :path

    # @param dto Shape DTO.
    attr_accessor :dto

    # @param shape_to_clone Optional index for clone shape instead of adding a new one.
    attr_accessor :shape_to_clone

    # @param position Position of the new shape in the list. Default is at the end of the list.
    attr_accessor :position

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for post_add_new_subshape_paragraph
  class PostAddNewSubshapeParagraphRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param path Shape path.
    attr_accessor :path

    # @param shape_index Shape index.
    attr_accessor :shape_index

    # @param dto Paragraph DTO.
    attr_accessor :dto

    # @param position Position of the new paragraph in the list. Default is at the end of the list.
    attr_accessor :position

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for post_add_new_subshape_portion
  class PostAddNewSubshapePortionRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param path Shape path.
    attr_accessor :path

    # @param shape_index Shape index.
    attr_accessor :shape_index

    # @param paragraph_index Paragraph index.
    attr_accessor :paragraph_index

    # @param dto Portion DTO.
    attr_accessor :dto

    # @param position Position of the new portion in the list. Default is at the end of the list.
    attr_accessor :position

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for post_add_notes_slide
  class PostAddNotesSlideRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param dto A NotesSlide object with notes slide data.
    attr_accessor :dto

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for post_align_shapes
  class PostAlignShapesRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param alignment_type Alignment type that will be applied to the shapes.
    attr_accessor :alignment_type

    # @param align_to_slide If true, shapes will be aligned relative to the slide edges.
    attr_accessor :align_to_slide

    # @param shapes Shapes indexes.
    attr_accessor :shapes

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for post_chart_category
  class PostChartCategoryRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param shape_index Shape index.
    attr_accessor :shape_index

    # @param category Category DTO.
    attr_accessor :category

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for post_chart_data_point
  class PostChartDataPointRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param shape_index Shape index.
    attr_accessor :shape_index

    # @param series_index Series index.
    attr_accessor :series_index

    # @param data_point Data point DTO.
    attr_accessor :data_point

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for post_chart_series
  class PostChartSeriesRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param shape_index Shape index (must be a chart).
    attr_accessor :shape_index

    # @param series Series DTO.
    attr_accessor :series

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for post_copy_layout_slide_from_source_presentation
  class PostCopyLayoutSlideFromSourcePresentationRequest

    # @param name Document name.
    attr_accessor :name

    # @param clone_from Name of the document to clone layoutSlide from.
    attr_accessor :clone_from

    # @param clone_from_position Position of cloned layout slide.
    attr_accessor :clone_from_position

    # @param clone_from_password Password for the document to clone layoutSlide from.
    attr_accessor :clone_from_password

    # @param clone_from_storage Storage of the document to clone layoutSlide from.
    attr_accessor :clone_from_storage

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for post_copy_master_slide_from_source_presentation
  class PostCopyMasterSlideFromSourcePresentationRequest

    # @param name Document name.
    attr_accessor :name

    # @param clone_from Name of the document to clone masterSlide from.
    attr_accessor :clone_from

    # @param clone_from_position Position of cloned master slide.
    attr_accessor :clone_from_position

    # @param clone_from_password Password for the document to clone masterSlide from.
    attr_accessor :clone_from_password

    # @param clone_from_storage Storage of the document to clone masterSlide from.
    attr_accessor :clone_from_storage

    # @param apply_to_all True to apply cloned master slide to every existing slide.
    attr_accessor :apply_to_all

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for post_export_image_with_default_format
  class PostExportImageWithDefaultFormatRequest

    # @param document Document data.
    attr_accessor :document

    # @param index Image index.
    attr_accessor :index

    # @param password Document password.
    attr_accessor :password
  end

  # request model for post_export_image_with_format
  class PostExportImageWithFormatRequest

    # @param document Document data.
    attr_accessor :document

    # @param index Image index.
    attr_accessor :index

    # @param format Export format (png, jpg, gif).
    attr_accessor :format

    # @param password Document password.
    attr_accessor :password
  end

  # request model for post_export_images_from_request_with_format
  class PostExportImagesFromRequestWithFormatRequest

    # @param document Document data.
    attr_accessor :document

    # @param format Export format (png, jpg, gif).
    attr_accessor :format

    # @param password Document password.
    attr_accessor :password
  end

  # request model for post_export_images_with_default_format
  class PostExportImagesWithDefaultFormatRequest

    # @param name 
    attr_accessor :name

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for post_export_images_with_format
  class PostExportImagesWithFormatRequest

    # @param name 
    attr_accessor :name

    # @param format Export format (png, jpg, gif).
    attr_accessor :format

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for post_export_shape
  class PostExportShapeRequest

    # @param document Document data.
    attr_accessor :document

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param shape_index Index of shape starting from 1
    attr_accessor :shape_index

    # @param format Export picture format.
    attr_accessor :format

    # @param scale_x X scale ratio.
    attr_accessor :scale_x

    # @param scale_y Y scale ratio.
    attr_accessor :scale_y

    # @param bounds Shape thumbnail bounds type.
    attr_accessor :bounds

    # @param password Document password.
    attr_accessor :password

    # @param storage Document storage.
    attr_accessor :storage

    # @param fonts_folder Fonts folder.
    attr_accessor :fonts_folder
  end

  # request model for post_export_slide
  class PostExportSlideRequest

    # @param document Document data.
    attr_accessor :document

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param format Output file format.
    attr_accessor :format

    # @param width Output file width; 0 to not adjust the size. Default is 0.
    attr_accessor :width

    # @param height Output file height; 0 to not adjust the size. Default is 0.
    attr_accessor :height

    # @param password Document password.
    attr_accessor :password

    # @param storage Document storage.
    attr_accessor :storage

    # @param fonts_folder Storage folder containing custom fonts to be used with the document.
    attr_accessor :fonts_folder
  end

  # request model for post_get_notes_slide
  class PostGetNotesSlideRequest

    # @param document Document data.
    attr_accessor :document

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param password Document password.
    attr_accessor :password
  end

  # request model for post_get_notes_slide_exists
  class PostGetNotesSlideExistsRequest

    # @param document Document data.
    attr_accessor :document

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param password Document password.
    attr_accessor :password
  end

  # request model for post_get_notes_slide_with_format
  class PostGetNotesSlideWithFormatRequest

    # @param document Document data.
    attr_accessor :document

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param format Output file format.
    attr_accessor :format

    # @param width Output file width.
    attr_accessor :width

    # @param height Output file height.
    attr_accessor :height

    # @param password Document password.
    attr_accessor :password

    # @param fonts_folder Storage folder containing custom fonts to be used with the document.
    attr_accessor :fonts_folder
  end

  # request model for post_image_watermark
  class PostImageWatermarkRequest

    # @param name Document name.
    attr_accessor :name

    # @param image Image data.
    attr_accessor :image

    # @param picture_frame PictureFrame DTO
    attr_accessor :picture_frame

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for post_image_watermark_online
  class PostImageWatermarkOnlineRequest

    # @param document Document data.
    attr_accessor :document

    # @param image Image data.
    attr_accessor :image

    # @param picture_frame PictureFrame DTO.
    attr_accessor :picture_frame

    # @param password Document password.
    attr_accessor :password
  end

  # request model for post_images_from_request_with_default_format
  class PostImagesFromRequestWithDefaultFormatRequest

    # @param document Document data.
    attr_accessor :document

    # @param password Document password.
    attr_accessor :password
  end

  # request model for post_notes_slide_add_new_paragraph
  class PostNotesSlideAddNewParagraphRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param shape_index Shape index.
    attr_accessor :shape_index

    # @param dto Paragraph DTO.
    attr_accessor :dto

    # @param position Position of the new paragraph in the list. Default is at the end of the list.
    attr_accessor :position

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for post_notes_slide_add_new_portion
  class PostNotesSlideAddNewPortionRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param shape_index Shape index.
    attr_accessor :shape_index

    # @param paragraph_index Paragraph index.
    attr_accessor :paragraph_index

    # @param dto Portion DTO.
    attr_accessor :dto

    # @param position Position of the new portion in the list. Default is at the end of the list.
    attr_accessor :position

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for post_notes_slide_add_new_shape
  class PostNotesSlideAddNewShapeRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param dto Shape DTO.
    attr_accessor :dto

    # @param shape_to_clone Optional index for clone shape instead of adding a new one.
    attr_accessor :shape_to_clone

    # @param position Position of the new shape in the list. Default is at the end of the list.
    attr_accessor :position

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for post_notes_slide_shape_save_as
  class PostNotesSlideShapeSaveAsRequest

    # @param name Presentation name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param shape_index Index of shape starting from 1
    attr_accessor :shape_index

    # @param format Export picture format.
    attr_accessor :format

    # @param options export options
    attr_accessor :options

    # @param scale_x X scale ratio.
    attr_accessor :scale_x

    # @param scale_y Y scale ratio.
    attr_accessor :scale_y

    # @param bounds Shape thumbnail bounds type.
    attr_accessor :bounds

    # @param password Document password.
    attr_accessor :password

    # @param folder Presentation folder.
    attr_accessor :folder

    # @param storage Presentation storage.
    attr_accessor :storage

    # @param fonts_folder Fonts folder.
    attr_accessor :fonts_folder
  end

  # request model for post_presentation_merge
  class PostPresentationMergeRequest

    # @param name Document name.
    attr_accessor :name

    # @param request PresentationsMergeRequest with a list of presentations to merge.
    attr_accessor :request

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for post_presentation_replace_text
  class PostPresentationReplaceTextRequest

    # @param document Document data.
    attr_accessor :document

    # @param old_value Text value to be replaced.
    attr_accessor :old_value

    # @param new_value Text value to replace with.
    attr_accessor :new_value

    # @param ignore_case True if character case must be ignored.
    attr_accessor :ignore_case

    # @param password Document password.
    attr_accessor :password
  end

  # request model for post_presentation_split
  class PostPresentationSplitRequest

    # @param document Document data.
    attr_accessor :document

    # @param format ExportFormat
    attr_accessor :format

    # @param width Slide width.
    attr_accessor :width

    # @param height Slide height.
    attr_accessor :height

    # @param from The start slide number for splitting, if is not specified splitting starts from the first slide of the presentation.
    attr_accessor :from

    # @param to The last slide number for splitting, if is not specified splitting ends at the last slide of the document.
    attr_accessor :to

    # @param password Document password.
    attr_accessor :password

    # @param storage Document storage.
    attr_accessor :storage

    # @param fonts_folder Custom fonts folder.
    attr_accessor :fonts_folder
  end

  # request model for post_section
  class PostSectionRequest

    # @param name Document name.
    attr_accessor :name

    # @param section_name Section name.
    attr_accessor :section_name

    # @param slide_index Slide index (one-based).
    attr_accessor :slide_index

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for post_section_move
  class PostSectionMoveRequest

    # @param name Document name.
    attr_accessor :name

    # @param section_index The position of the section to be reordered.
    attr_accessor :section_index

    # @param new_position The new position of the reordered section.
    attr_accessor :new_position

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for post_shape_save_as
  class PostShapeSaveAsRequest

    # @param name Presentation name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param shape_index Index of shape starting from 1
    attr_accessor :shape_index

    # @param format Export picture format.
    attr_accessor :format

    # @param options export options
    attr_accessor :options

    # @param scale_x X scale ratio.
    attr_accessor :scale_x

    # @param scale_y Y scale ratio.
    attr_accessor :scale_y

    # @param bounds Shape thumbnail bounds type.
    attr_accessor :bounds

    # @param password Document password.
    attr_accessor :password

    # @param folder Presentation folder.
    attr_accessor :folder

    # @param storage Presentation storage.
    attr_accessor :storage

    # @param fonts_folder Fonts folder.
    attr_accessor :fonts_folder
  end

  # request model for post_slide_animation_effect
  class PostSlideAnimationEffectRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param effect Animation effect DTO.
    attr_accessor :effect

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for post_slide_animation_interactive_sequence
  class PostSlideAnimationInteractiveSequenceRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param sequence Animation sequence DTO.
    attr_accessor :sequence

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for post_slide_animation_interactive_sequence_effect
  class PostSlideAnimationInteractiveSequenceEffectRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param sequence_index The position of the interactive sequence.
    attr_accessor :sequence_index

    # @param effect Animation effect DTO.
    attr_accessor :effect

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for post_slide_replace_text
  class PostSlideReplaceTextRequest

    # @param document Document data.
    attr_accessor :document

    # @param slide_index Index of target slide.
    attr_accessor :slide_index

    # @param old_value Text value to be replaced.
    attr_accessor :old_value

    # @param new_value Text value to replace with.
    attr_accessor :new_value

    # @param ignore_case True if character case must be ignored.
    attr_accessor :ignore_case

    # @param password Document password.
    attr_accessor :password
  end

  # request model for post_slide_save_as
  class PostSlideSaveAsRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param format Output file format.
    attr_accessor :format

    # @param options Export options.
    attr_accessor :options

    # @param width Output file width; 0 to not adjust the size. Default is 0.
    attr_accessor :width

    # @param height Output file height; 0 to not adjust the size. Default is 0.
    attr_accessor :height

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage

    # @param fonts_folder Storage folder containing custom fonts to be used with the document.
    attr_accessor :fonts_folder
  end

  # request model for post_slides_add
  class PostSlidesAddRequest

    # @param name Document name.
    attr_accessor :name

    # @param layout_alias Alias of layout slide for new slide. Alias may be the type of layout, name of layout slide or index
    attr_accessor :layout_alias

    # @param position The target position at which to create the slide. Add to the end by default.
    attr_accessor :position

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for post_slides_convert
  class PostSlidesConvertRequest

    # @param document Document data.
    attr_accessor :document

    # @param format Export format.
    attr_accessor :format

    # @param password Document password.
    attr_accessor :password

    # @param storage Document storage.
    attr_accessor :storage

    # @param fonts_folder Custom fonts folder.
    attr_accessor :fonts_folder
  end

  # request model for post_slides_copy
  class PostSlidesCopyRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_to_copy The index of the slide to be copied from the source presentation.
    attr_accessor :slide_to_copy

    # @param position The target position at which to copy the slide. Copy to the end by default.
    attr_accessor :position

    # @param source Name of the document to copy a slide from.
    attr_accessor :source

    # @param source_password Password for the document to copy a slide from.
    attr_accessor :source_password

    # @param source_storage Template storage name.
    attr_accessor :source_storage

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for post_slides_document
  class PostSlidesDocumentRequest

    # @param name Document name.
    attr_accessor :name

    # @param data Document input data.
    attr_accessor :data

    # @param input_password The password for input document.
    attr_accessor :input_password

    # @param password The document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for post_slides_document_from_html
  class PostSlidesDocumentFromHtmlRequest

    # @param name Document name.
    attr_accessor :name

    # @param html HTML data.
    attr_accessor :html

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for post_slides_document_from_pdf
  class PostSlidesDocumentFromPdfRequest

    # @param name Document name.
    attr_accessor :name

    # @param pdf PDF data.
    attr_accessor :pdf

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for post_slides_document_from_source
  class PostSlidesDocumentFromSourceRequest

    # @param name Document name.
    attr_accessor :name

    # @param source_path Template file path.
    attr_accessor :source_path

    # @param source_password Template file password.
    attr_accessor :source_password

    # @param source_storage Template storage name.
    attr_accessor :source_storage

    # @param password The document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for post_slides_document_from_template
  class PostSlidesDocumentFromTemplateRequest

    # @param name Document name.
    attr_accessor :name

    # @param template_path Template file path.
    attr_accessor :template_path

    # @param data Document input data.
    attr_accessor :data

    # @param template_password Template file password.
    attr_accessor :template_password

    # @param template_storage Template storage name.
    attr_accessor :template_storage

    # @param is_image_data_embedded True if image data is embedded.
    attr_accessor :is_image_data_embedded

    # @param password The document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for post_slides_merge
  class PostSlidesMergeRequest

    # @param files Files to merge
    attr_accessor :files

    # @param request Merge request.
    attr_accessor :request

    # @param password Document password.
    attr_accessor :password
  end

  # request model for post_slides_pipeline
  class PostSlidesPipelineRequest

    # @param pipeline A Pipeline object.
    attr_accessor :pipeline

    # @param files Files to upload with the pipeline
    attr_accessor :files
  end

  # request model for post_slides_presentation_replace_text
  class PostSlidesPresentationReplaceTextRequest

    # @param name Document name.
    attr_accessor :name

    # @param old_value Text value to be replaced.
    attr_accessor :old_value

    # @param new_value Text value to replace with.
    attr_accessor :new_value

    # @param ignore_case True if character case must be ignored.
    attr_accessor :ignore_case

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for post_slides_reorder
  class PostSlidesReorderRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index The position of the slide to be reordered.
    attr_accessor :slide_index

    # @param new_position The new position of the reordered slide.
    attr_accessor :new_position

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for post_slides_reorder_many
  class PostSlidesReorderManyRequest

    # @param name Document name.
    attr_accessor :name

    # @param old_positions A comma separated array of positions of slides to be reordered.
    attr_accessor :old_positions

    # @param new_positions A comma separated array of new slide positions.
    attr_accessor :new_positions

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for post_slides_save_as
  class PostSlidesSaveAsRequest

    # @param name Document name.
    attr_accessor :name

    # @param format Export format.
    attr_accessor :format

    # @param options Export options.
    attr_accessor :options

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage

    # @param fonts_folder Custom fonts folder.
    attr_accessor :fonts_folder
  end

  # request model for post_slides_set_document_properties
  class PostSlidesSetDocumentPropertiesRequest

    # @param name Document name.
    attr_accessor :name

    # @param properties New properties.
    attr_accessor :properties

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for post_slides_slide_replace_text
  class PostSlidesSlideReplaceTextRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param old_value Text value to be replaced.
    attr_accessor :old_value

    # @param new_value Text value to replace with.
    attr_accessor :new_value

    # @param ignore_case True if character case must be ignored.
    attr_accessor :ignore_case

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for post_slides_split
  class PostSlidesSplitRequest

    # @param name Document name.
    attr_accessor :name

    # @param options Export options.
    attr_accessor :options

    # @param format Export format. Default value is jpeg.
    attr_accessor :format

    # @param width The width of created images.
    attr_accessor :width

    # @param height The height of created images.
    attr_accessor :height

    # @param from The start slide number for splitting, if is not specified splitting starts from the first slide of the presentation.
    attr_accessor :from

    # @param to The last slide number for splitting, if is not specified splitting ends at the last slide of the document.
    attr_accessor :to

    # @param dest_folder Folder on storage where images are going to be uploaded. If not specified then images are uploaded to same folder as presentation.
    attr_accessor :dest_folder

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage

    # @param fonts_folder Custom fonts folder.
    attr_accessor :fonts_folder
  end

  # request model for post_subshape_save_as
  class PostSubshapeSaveAsRequest

    # @param name Presentation name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param path Shape path.
    attr_accessor :path

    # @param shape_index Index of shape starting from 1
    attr_accessor :shape_index

    # @param format Export picture format.
    attr_accessor :format

    # @param options export options
    attr_accessor :options

    # @param scale_x X scale ratio.
    attr_accessor :scale_x

    # @param scale_y Y scale ratio.
    attr_accessor :scale_y

    # @param bounds Shape thumbnail bounds type.
    attr_accessor :bounds

    # @param password Document password.
    attr_accessor :password

    # @param folder Presentation folder.
    attr_accessor :folder

    # @param storage Presentation storage.
    attr_accessor :storage

    # @param fonts_folder Fonts folder.
    attr_accessor :fonts_folder
  end

  # request model for post_watermark
  class PostWatermarkRequest

    # @param name Document name.
    attr_accessor :name

    # @param shape Shape DTO
    attr_accessor :shape

    # @param font_height Watermark font height.
    attr_accessor :font_height

    # @param text Watermark text.
    attr_accessor :text

    # @param font_name Watermark font name.
    attr_accessor :font_name

    # @param font_color Watermark font color.
    attr_accessor :font_color

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for post_watermark_delete_online
  class PostWatermarkDeleteOnlineRequest

    # @param document Document data.
    attr_accessor :document

    # @param shape_name Name of the watermark shape. If null, default value \&quot;watermark\&quot;is used.
    attr_accessor :shape_name

    # @param password Document password.
    attr_accessor :password
  end

  # request model for post_watermark_online
  class PostWatermarkOnlineRequest

    # @param document Document data.
    attr_accessor :document

    # @param shape Shape DTO
    attr_accessor :shape

    # @param font_height Watermark font height.
    attr_accessor :font_height

    # @param text Watermark text.
    attr_accessor :text

    # @param font_name Watermark font name.
    attr_accessor :font_name

    # @param font_color Watermark font color.
    attr_accessor :font_color

    # @param password Document password.
    attr_accessor :password
  end

  # request model for put_chart_category
  class PutChartCategoryRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param shape_index Shape index.
    attr_accessor :shape_index

    # @param category_index Category index.
    attr_accessor :category_index

    # @param category Category DTO.
    attr_accessor :category

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for put_chart_data_point
  class PutChartDataPointRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param shape_index Shape index.
    attr_accessor :shape_index

    # @param series_index Series index.
    attr_accessor :series_index

    # @param point_index Data point index.
    attr_accessor :point_index

    # @param data_point Data point DTO.
    attr_accessor :data_point

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for put_chart_series
  class PutChartSeriesRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param shape_index Shape index (must be a chart).
    attr_accessor :shape_index

    # @param series_index Series index.
    attr_accessor :series_index

    # @param series Series DTO.
    attr_accessor :series

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for put_export_shape
  class PutExportShapeRequest

    # @param document Document data.
    attr_accessor :document

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param shape_index Index of shape starting from 1
    attr_accessor :shape_index

    # @param format Export picture format.
    attr_accessor :format

    # @param out_path Path to save result.
    attr_accessor :out_path

    # @param scale_x X scale ratio.
    attr_accessor :scale_x

    # @param scale_y Y scale ratio.
    attr_accessor :scale_y

    # @param bounds Shape thumbnail bounds type.
    attr_accessor :bounds

    # @param password Document password.
    attr_accessor :password

    # @param storage Document storage.
    attr_accessor :storage

    # @param fonts_folder Fonts folder.
    attr_accessor :fonts_folder
  end

  # request model for put_export_slide
  class PutExportSlideRequest

    # @param document Document data.
    attr_accessor :document

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param format Output file format.
    attr_accessor :format

    # @param out_path Path to save result.
    attr_accessor :out_path

    # @param width Output file width; 0 to not adjust the size. Default is 0.
    attr_accessor :width

    # @param height Output file height; 0 to not adjust the size. Default is 0.
    attr_accessor :height

    # @param password Document password.
    attr_accessor :password

    # @param storage Document storage.
    attr_accessor :storage

    # @param fonts_folder Storage folder containing custom fonts to be used with the document.
    attr_accessor :fonts_folder
  end

  # request model for put_layout_slide
  class PutLayoutSlideRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param slide_dto Slide update data.
    attr_accessor :slide_dto

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for put_notes_slide_header_footer
  class PutNotesSlideHeaderFooterRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param dto Header/footer to set.
    attr_accessor :dto

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for put_notes_slide_shape_save_as
  class PutNotesSlideShapeSaveAsRequest

    # @param name Presentation name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param shape_index Index of shape starting from 1
    attr_accessor :shape_index

    # @param format Export picture format.
    attr_accessor :format

    # @param out_path Output path.
    attr_accessor :out_path

    # @param options export options
    attr_accessor :options

    # @param scale_x X scale ratio.
    attr_accessor :scale_x

    # @param scale_y Y scale ratio.
    attr_accessor :scale_y

    # @param bounds Shape thumbnail bounds type.
    attr_accessor :bounds

    # @param password Document password.
    attr_accessor :password

    # @param folder Presentation folder.
    attr_accessor :folder

    # @param storage Presentation storage.
    attr_accessor :storage

    # @param fonts_folder Fonts folder.
    attr_accessor :fonts_folder
  end

  # request model for put_presentation_merge
  class PutPresentationMergeRequest

    # @param name Document name.
    attr_accessor :name

    # @param request OrderedMergeRequest with a list of presentations and slide indices to merge.
    attr_accessor :request

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for put_presentation_split
  class PutPresentationSplitRequest

    # @param document Document data.
    attr_accessor :document

    # @param format ExportFormat
    attr_accessor :format

    # @param dest_folder Folder on storage where images are going to be uploaded. If not specified then images are uploaded to the root folder.
    attr_accessor :dest_folder

    # @param width Slide width.
    attr_accessor :width

    # @param height Slide height.
    attr_accessor :height

    # @param from The start slide number for splitting, if is not specified splitting starts from the first slide of the presentation.
    attr_accessor :from

    # @param to The last slide number for splitting, if is not specified splitting ends at the last slide of the document.
    attr_accessor :to

    # @param password Document password.
    attr_accessor :password

    # @param storage Document storage.
    attr_accessor :storage

    # @param fonts_folder Custom fonts folder.
    attr_accessor :fonts_folder
  end

  # request model for put_section
  class PutSectionRequest

    # @param name Document name.
    attr_accessor :name

    # @param section_index The position of the section to be updated.
    attr_accessor :section_index

    # @param section_name Section name.
    attr_accessor :section_name

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for put_sections
  class PutSectionsRequest

    # @param name Document name.
    attr_accessor :name

    # @param sections Sections DTO.
    attr_accessor :sections

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for put_set_paragraph_portion_properties
  class PutSetParagraphPortionPropertiesRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param shape_index Shape index.
    attr_accessor :shape_index

    # @param paragraph_index Paragraph index.
    attr_accessor :paragraph_index

    # @param portion_index Portion index.
    attr_accessor :portion_index

    # @param dto Portion DTO.
    attr_accessor :dto

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for put_set_paragraph_properties
  class PutSetParagraphPropertiesRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param shape_index Shape index.
    attr_accessor :shape_index

    # @param paragraph_index Paragraph index.
    attr_accessor :paragraph_index

    # @param dto Paragraph DTO.
    attr_accessor :dto

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for put_set_subshape_paragraph_portion_properties
  class PutSetSubshapeParagraphPortionPropertiesRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param path Shape path.
    attr_accessor :path

    # @param shape_index Shape index.
    attr_accessor :shape_index

    # @param paragraph_index Paragraph index.
    attr_accessor :paragraph_index

    # @param portion_index Portion index.
    attr_accessor :portion_index

    # @param dto Portion DTO.
    attr_accessor :dto

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for put_set_subshape_paragraph_properties
  class PutSetSubshapeParagraphPropertiesRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param path Shape path.
    attr_accessor :path

    # @param shape_index Shape index.
    attr_accessor :shape_index

    # @param paragraph_index Paragraph index.
    attr_accessor :paragraph_index

    # @param dto Paragraph DTO.
    attr_accessor :dto

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for put_shape_save_as
  class PutShapeSaveAsRequest

    # @param name Presentation name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param shape_index Index of shape starting from 1
    attr_accessor :shape_index

    # @param format Export picture format.
    attr_accessor :format

    # @param out_path Output path.
    attr_accessor :out_path

    # @param options export options
    attr_accessor :options

    # @param scale_x X scale ratio.
    attr_accessor :scale_x

    # @param scale_y Y scale ratio.
    attr_accessor :scale_y

    # @param bounds Shape thumbnail bounds type.
    attr_accessor :bounds

    # @param password Document password.
    attr_accessor :password

    # @param folder Presentation folder.
    attr_accessor :folder

    # @param storage Presentation storage.
    attr_accessor :storage

    # @param fonts_folder Fonts folder.
    attr_accessor :fonts_folder
  end

  # request model for put_slide_animation
  class PutSlideAnimationRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param animation Animation DTO.
    attr_accessor :animation

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for put_slide_animation_effect
  class PutSlideAnimationEffectRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param effect_index The position of the effect to be modified.
    attr_accessor :effect_index

    # @param effect Animation effect DTO.
    attr_accessor :effect

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for put_slide_animation_interactive_sequence_effect
  class PutSlideAnimationInteractiveSequenceEffectRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param sequence_index The position of the interactive sequence.
    attr_accessor :sequence_index

    # @param effect_index The position of the effect to be modified.
    attr_accessor :effect_index

    # @param effect Animation effect DTO.
    attr_accessor :effect

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for put_slide_header_footer
  class PutSlideHeaderFooterRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index The position of the slide to be reordered.
    attr_accessor :slide_index

    # @param dto Footer to set.
    attr_accessor :dto

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for put_slide_save_as
  class PutSlideSaveAsRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param format Output file format.
    attr_accessor :format

    # @param out_path Path to upload the output file to.
    attr_accessor :out_path

    # @param options Export options.
    attr_accessor :options

    # @param width Output file width; 0 to not adjust the size. Default is 0.
    attr_accessor :width

    # @param height Output file height; 0 to not adjust the size. Default is 0.
    attr_accessor :height

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage

    # @param fonts_folder Storage folder containing custom fonts to be used with the document.
    attr_accessor :fonts_folder
  end

  # request model for put_slide_shape_info
  class PutSlideShapeInfoRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param shape_index Shape index.
    attr_accessor :shape_index

    # @param dto Shape DTO.
    attr_accessor :dto

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for put_slide_subshape_info
  class PutSlideSubshapeInfoRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param path Shape path.
    attr_accessor :path

    # @param shape_index Shape index.
    attr_accessor :shape_index

    # @param dto Shape DTO.
    attr_accessor :dto

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for put_slides_convert
  class PutSlidesConvertRequest

    # @param document Document data.
    attr_accessor :document

    # @param format Export format.
    attr_accessor :format

    # @param out_path Path to save result.
    attr_accessor :out_path

    # @param password Document password.
    attr_accessor :password

    # @param storage Document storage.
    attr_accessor :storage

    # @param fonts_folder Custom fonts folder.
    attr_accessor :fonts_folder
  end

  # request model for put_slides_header_footer
  class PutSlidesHeaderFooterRequest

    # @param name Document name.
    attr_accessor :name

    # @param dto HeaderFooter instance.
    attr_accessor :dto

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for put_slides_merge
  class PutSlidesMergeRequest

    # @param out_path Path to save result.
    attr_accessor :out_path

    # @param files Files to merge
    attr_accessor :files

    # @param request Merge request.
    attr_accessor :request

    # @param password Document password.
    attr_accessor :password

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for put_slides_protection_properties
  class PutSlidesProtectionPropertiesRequest

    # @param name Document name.
    attr_accessor :name

    # @param dto Protection properties.
    attr_accessor :dto

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for put_slides_protection_properties_online
  class PutSlidesProtectionPropertiesOnlineRequest

    # @param document Document data.
    attr_accessor :document

    # @param dto Protection properties.
    attr_accessor :dto

    # @param password Document password.
    attr_accessor :password
  end

  # request model for put_slides_save_as
  class PutSlidesSaveAsRequest

    # @param name Document name.
    attr_accessor :name

    # @param format Export format.
    attr_accessor :format

    # @param out_path Output path.
    attr_accessor :out_path

    # @param options Export options.
    attr_accessor :options

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage

    # @param fonts_folder Custom fonts folder.
    attr_accessor :fonts_folder
  end

  # request model for put_slides_set_document_property
  class PutSlidesSetDocumentPropertyRequest

    # @param name Document name.
    attr_accessor :name

    # @param property_name The property name.
    attr_accessor :property_name

    # @param property Property with the value.
    attr_accessor :property

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for put_slides_slide
  class PutSlidesSlideRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param slide_dto Slide update data.
    attr_accessor :slide_dto

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for put_slides_slide_background
  class PutSlidesSlideBackgroundRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param background Slide background update data.
    attr_accessor :background

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for put_slides_slide_background_color
  class PutSlidesSlideBackgroundColorRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param color Slide background target color in RRGGBB format.
    attr_accessor :color

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for put_slides_slide_properties
  class PutSlidesSlidePropertiesRequest

    # @param name Document name.
    attr_accessor :name

    # @param dto The view properties data.
    attr_accessor :dto

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for put_slides_view_properties
  class PutSlidesViewPropertiesRequest

    # @param name Document name.
    attr_accessor :name

    # @param dto The view properties data.
    attr_accessor :dto

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for put_subshape_save_as
  class PutSubshapeSaveAsRequest

    # @param name Presentation name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param path Shape path (for smart art and group shapes).
    attr_accessor :path

    # @param shape_index Index of shape starting from 1
    attr_accessor :shape_index

    # @param format Export picture format.
    attr_accessor :format

    # @param out_path Output path.
    attr_accessor :out_path

    # @param options export options
    attr_accessor :options

    # @param scale_x X scale ratio.
    attr_accessor :scale_x

    # @param scale_y Y scale ratio.
    attr_accessor :scale_y

    # @param bounds Shape thumbnail bounds type.
    attr_accessor :bounds

    # @param password Document password.
    attr_accessor :password

    # @param folder Presentation folder.
    attr_accessor :folder

    # @param storage Presentation storage.
    attr_accessor :storage

    # @param fonts_folder Fonts folder.
    attr_accessor :fonts_folder
  end

  # request model for put_update_notes_slide
  class PutUpdateNotesSlideRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param dto A NotesSlide object with notes slide data.
    attr_accessor :dto

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for put_update_notes_slide_shape
  class PutUpdateNotesSlideShapeRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param shape_index Shape index.
    attr_accessor :shape_index

    # @param dto Shape DTO.
    attr_accessor :dto

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for put_update_notes_slide_shape_paragraph
  class PutUpdateNotesSlideShapeParagraphRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param shape_index Shape index.
    attr_accessor :shape_index

    # @param paragraph_index Paragraph index.
    attr_accessor :paragraph_index

    # @param dto Paragraph DTO.
    attr_accessor :dto

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for put_update_notes_slide_shape_portion
  class PutUpdateNotesSlideShapePortionRequest

    # @param name Document name.
    attr_accessor :name

    # @param slide_index Slide index.
    attr_accessor :slide_index

    # @param shape_index Shape index.
    attr_accessor :shape_index

    # @param paragraph_index Paragraph index.
    attr_accessor :paragraph_index

    # @param portion_index Portion index.
    attr_accessor :portion_index

    # @param dto Portion DTO.
    attr_accessor :dto

    # @param password Document password.
    attr_accessor :password

    # @param folder Document folder.
    attr_accessor :folder

    # @param storage Document storage.
    attr_accessor :storage
  end

  # request model for storage_exists
  class StorageExistsRequest

    # @param storage_name Storage name
    attr_accessor :storage_name
  end

  # request model for upload_file
  class UploadFileRequest

    # @param path Path where to upload including filename and extension e.g. /file.ext or /Folder 1/file.ext             If the content is multipart and path does not contains the file name it tries to get them from filename parameter             from Content-Disposition header.             
    attr_accessor :path

    # @param file File to upload
    attr_accessor :file

    # @param storage_name Storage name
    attr_accessor :storage_name
  end
end
