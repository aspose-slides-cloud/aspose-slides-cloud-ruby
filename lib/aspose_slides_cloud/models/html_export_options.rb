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

require 'date'

module AsposeSlidesCloud
  # Provides options that control how a presentation is saved in Html format.
  class HtmlExportOptions < ExportOptions
    # Get or sets flag for save presentation as zip file
    attr_accessor :save_as_zip

    # Get or set name of subdirectory in zip-file for store external files
    attr_accessor :sub_directory_name

    # Specifies whether the generated document should include hidden slides or not. Default is false. 
    attr_accessor :show_hidden_slides

    # True to make layout responsive by excluding width and height attributes from svg container.
    attr_accessor :svg_responsive_layout

    # Returns or sets a value determining the quality of the JPEG images inside PDF document.
    attr_accessor :jpeg_quality

    # Represents the pictures compression level
    attr_accessor :pictures_compression

    # A boolean flag indicates if the cropped parts remain as part of the document. If true the cropped  parts will removed, if false they will be serialized in the document (which can possible lead to a  larger file)
    attr_accessor :delete_pictures_cropped_areas

    # Gets or sets the position of the notes on the page.
    attr_accessor :notes_position

    # Gets or sets the position of the comments on the page.
    attr_accessor :comments_position

    # Gets or sets the width of the comment output area in pixels (Applies only if comments are displayed on the right).
    attr_accessor :comments_area_width

    # Gets or sets the color of comments area (Applies only if comments are displayed on the right).
    attr_accessor :comments_area_color

    # True if comments that have no author are displayed. (Applies only if comments are displayed).
    attr_accessor :show_comments_by_no_author

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      super.merge({
        :'save_as_zip' => :'SaveAsZip',
        :'sub_directory_name' => :'SubDirectoryName',
        :'show_hidden_slides' => :'ShowHiddenSlides',
        :'svg_responsive_layout' => :'SvgResponsiveLayout',
        :'jpeg_quality' => :'JpegQuality',
        :'pictures_compression' => :'PicturesCompression',
        :'delete_pictures_cropped_areas' => :'DeletePicturesCroppedAreas',
        :'notes_position' => :'NotesPosition',
        :'comments_position' => :'CommentsPosition',
        :'comments_area_width' => :'CommentsAreaWidth',
        :'comments_area_color' => :'CommentsAreaColor',
        :'show_comments_by_no_author' => :'ShowCommentsByNoAuthor',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'save_as_zip' => :'BOOLEAN',
        :'sub_directory_name' => :'String',
        :'show_hidden_slides' => :'BOOLEAN',
        :'svg_responsive_layout' => :'BOOLEAN',
        :'jpeg_quality' => :'Integer',
        :'pictures_compression' => :'String',
        :'delete_pictures_cropped_areas' => :'BOOLEAN',
        :'notes_position' => :'String',
        :'comments_position' => :'String',
        :'comments_area_width' => :'Integer',
        :'comments_area_color' => :'String',
        :'show_comments_by_no_author' => :'BOOLEAN',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'SaveAsZip')
        self.save_as_zip = attributes[:'SaveAsZip']
      end

      if attributes.has_key?(:'SubDirectoryName')
        self.sub_directory_name = attributes[:'SubDirectoryName']
      end

      if attributes.has_key?(:'ShowHiddenSlides')
        self.show_hidden_slides = attributes[:'ShowHiddenSlides']
      end

      if attributes.has_key?(:'SvgResponsiveLayout')
        self.svg_responsive_layout = attributes[:'SvgResponsiveLayout']
      end

      if attributes.has_key?(:'JpegQuality')
        self.jpeg_quality = attributes[:'JpegQuality']
      end

      if attributes.has_key?(:'PicturesCompression')
        self.pictures_compression = attributes[:'PicturesCompression']
      end

      if attributes.has_key?(:'DeletePicturesCroppedAreas')
        self.delete_pictures_cropped_areas = attributes[:'DeletePicturesCroppedAreas']
      end

      if attributes.has_key?(:'NotesPosition')
        self.notes_position = attributes[:'NotesPosition']
      end

      if attributes.has_key?(:'CommentsPosition')
        self.comments_position = attributes[:'CommentsPosition']
      end

      if attributes.has_key?(:'CommentsAreaWidth')
        self.comments_area_width = attributes[:'CommentsAreaWidth']
      end

      if attributes.has_key?(:'CommentsAreaColor')
        self.comments_area_color = attributes[:'CommentsAreaColor']
      end

      if attributes.has_key?(:'ShowCommentsByNoAuthor')
        self.show_comments_by_no_author = attributes[:'ShowCommentsByNoAuthor']
      end
      self.format = 'html'
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = super
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !super
      pictures_compression_validator = EnumAttributeValidator.new('String', ['Dpi330', 'Dpi220', 'Dpi150', 'Dpi96', 'Dpi72', 'DocumentResolution'])
      return false unless pictures_compression_validator.valid?(@pictures_compression)
      notes_position_validator = EnumAttributeValidator.new('String', ['None', 'BottomFull', 'BottomTruncated'])
      return false unless notes_position_validator.valid?(@notes_position)
      comments_position_validator = EnumAttributeValidator.new('String', ['None', 'Bottom', 'Right'])
      return false unless comments_position_validator.valid?(@comments_position)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] pictures_compression Object to be assigned
    def pictures_compression=(pictures_compression)
      validator = EnumAttributeValidator.new('String', ['Dpi330', 'Dpi220', 'Dpi150', 'Dpi96', 'Dpi72', 'DocumentResolution'])
      unless validator.valid?(pictures_compression)
        fail ArgumentError, 'invalid value for "pictures_compression", must be one of #{validator.allowable_values}.'
      end
      @pictures_compression = pictures_compression
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] notes_position Object to be assigned
    def notes_position=(notes_position)
      validator = EnumAttributeValidator.new('String', ['None', 'BottomFull', 'BottomTruncated'])
      unless validator.valid?(notes_position)
        fail ArgumentError, 'invalid value for "notes_position", must be one of #{validator.allowable_values}.'
      end
      @notes_position = notes_position
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] comments_position Object to be assigned
    def comments_position=(comments_position)
      validator = EnumAttributeValidator.new('String', ['None', 'Bottom', 'Right'])
      unless validator.valid?(comments_position)
        fail ArgumentError, 'invalid value for "comments_position", must be one of #{validator.allowable_values}.'
      end
      @comments_position = comments_position
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          default_regular_font == o.default_regular_font &&
          font_fallback_rules == o.font_fallback_rules &&
          font_subst_rules == o.font_subst_rules &&
          format == o.format &&
          save_as_zip == o.save_as_zip &&
          sub_directory_name == o.sub_directory_name &&
          show_hidden_slides == o.show_hidden_slides &&
          svg_responsive_layout == o.svg_responsive_layout &&
          jpeg_quality == o.jpeg_quality &&
          pictures_compression == o.pictures_compression &&
          delete_pictures_cropped_areas == o.delete_pictures_cropped_areas &&
          notes_position == o.notes_position &&
          comments_position == o.comments_position &&
          comments_area_width == o.comments_area_width &&
          comments_area_color == o.comments_area_color &&
          show_comments_by_no_author == o.show_comments_by_no_author
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [default_regular_font, font_fallback_rules, font_subst_rules, format, save_as_zip, sub_directory_name, show_hidden_slides, svg_responsive_layout, jpeg_quality, pictures_compression, delete_pictures_cropped_areas, notes_position, comments_position, comments_area_width, comments_area_color, show_comments_by_no_author].hash
    end
  end
end
