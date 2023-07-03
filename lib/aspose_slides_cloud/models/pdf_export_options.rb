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
  # Provides options that control how a presentation is saved in Pdf format.
  class PdfExportOptions < ExportOptions
    # Specifies compression type to be used for all textual content in the document.
    attr_accessor :text_compression

    # Determines if all characters of font should be embedded or only used subset.
    attr_accessor :embed_full_fonts

    # Desired conformance level for generated PDF document.
    attr_accessor :compliance

    # Returns or sets a value determining resolution of images inside PDF document.  Property affects on file size, time of export and image quality. The default value is 96.
    attr_accessor :sufficient_resolution

    # Returns or sets a value determining the quality of the JPEG images inside PDF document.
    attr_accessor :jpeg_quality

    # True to draw black frame around each slide.
    attr_accessor :draw_slides_frame

    # Specifies whether the generated document should include hidden slides or not. Default is false. 
    attr_accessor :show_hidden_slides

    # True to convert all metafiles used in a presentation to the PNG images.
    attr_accessor :save_metafiles_as_png

    # Setting user password to protect the PDF document. 
    attr_accessor :password

    # Determines if Aspose.Slides will embed common fonts for ASCII (33..127 code range) text. Fonts for character codes greater than 127 are always embedded. Common fonts list includes PDF's base 14 fonts and additional user specified fonts.
    attr_accessor :embed_true_type_fonts_for_ascii

    # Returns or sets an array of user-defined names of font families which Aspose.Slides should consider common.
    attr_accessor :additional_common_font_families

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

    # Image transparent color.
    attr_accessor :image_transparent_color

    # True to apply specified ImageTransparentColor  to an image.
    attr_accessor :apply_image_transparent

    # Access permissions that should be granted when the document is opened with user access.  Default is AccessPermissions.None.             
    attr_accessor :access_permissions

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      super.merge({
        :'text_compression' => :'TextCompression',
        :'embed_full_fonts' => :'EmbedFullFonts',
        :'compliance' => :'Compliance',
        :'sufficient_resolution' => :'SufficientResolution',
        :'jpeg_quality' => :'JpegQuality',
        :'draw_slides_frame' => :'DrawSlidesFrame',
        :'show_hidden_slides' => :'ShowHiddenSlides',
        :'save_metafiles_as_png' => :'SaveMetafilesAsPng',
        :'password' => :'Password',
        :'embed_true_type_fonts_for_ascii' => :'EmbedTrueTypeFontsForASCII',
        :'additional_common_font_families' => :'AdditionalCommonFontFamilies',
        :'notes_position' => :'NotesPosition',
        :'comments_position' => :'CommentsPosition',
        :'comments_area_width' => :'CommentsAreaWidth',
        :'comments_area_color' => :'CommentsAreaColor',
        :'show_comments_by_no_author' => :'ShowCommentsByNoAuthor',
        :'image_transparent_color' => :'ImageTransparentColor',
        :'apply_image_transparent' => :'ApplyImageTransparent',
        :'access_permissions' => :'AccessPermissions',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'text_compression' => :'String',
        :'embed_full_fonts' => :'BOOLEAN',
        :'compliance' => :'String',
        :'sufficient_resolution' => :'Float',
        :'jpeg_quality' => :'Integer',
        :'draw_slides_frame' => :'BOOLEAN',
        :'show_hidden_slides' => :'BOOLEAN',
        :'save_metafiles_as_png' => :'BOOLEAN',
        :'password' => :'String',
        :'embed_true_type_fonts_for_ascii' => :'BOOLEAN',
        :'additional_common_font_families' => :'Array<String>',
        :'notes_position' => :'String',
        :'comments_position' => :'String',
        :'comments_area_width' => :'Integer',
        :'comments_area_color' => :'String',
        :'show_comments_by_no_author' => :'BOOLEAN',
        :'image_transparent_color' => :'String',
        :'apply_image_transparent' => :'BOOLEAN',
        :'access_permissions' => :'AccessPermissions',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'TextCompression')
        self.text_compression = attributes[:'TextCompression']
      end

      if attributes.has_key?(:'EmbedFullFonts')
        self.embed_full_fonts = attributes[:'EmbedFullFonts']
      end

      if attributes.has_key?(:'Compliance')
        self.compliance = attributes[:'Compliance']
      end

      if attributes.has_key?(:'SufficientResolution')
        self.sufficient_resolution = attributes[:'SufficientResolution']
      end

      if attributes.has_key?(:'JpegQuality')
        self.jpeg_quality = attributes[:'JpegQuality']
      end

      if attributes.has_key?(:'DrawSlidesFrame')
        self.draw_slides_frame = attributes[:'DrawSlidesFrame']
      end

      if attributes.has_key?(:'ShowHiddenSlides')
        self.show_hidden_slides = attributes[:'ShowHiddenSlides']
      end

      if attributes.has_key?(:'SaveMetafilesAsPng')
        self.save_metafiles_as_png = attributes[:'SaveMetafilesAsPng']
      end

      if attributes.has_key?(:'Password')
        self.password = attributes[:'Password']
      end

      if attributes.has_key?(:'EmbedTrueTypeFontsForASCII')
        self.embed_true_type_fonts_for_ascii = attributes[:'EmbedTrueTypeFontsForASCII']
      end

      if attributes.has_key?(:'AdditionalCommonFontFamilies')
        if (value = attributes[:'AdditionalCommonFontFamilies']).is_a?(Array)
          self.additional_common_font_families = value
        end
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

      if attributes.has_key?(:'ImageTransparentColor')
        self.image_transparent_color = attributes[:'ImageTransparentColor']
      end

      if attributes.has_key?(:'ApplyImageTransparent')
        self.apply_image_transparent = attributes[:'ApplyImageTransparent']
      end

      if attributes.has_key?(:'AccessPermissions')
        self.access_permissions = attributes[:'AccessPermissions']
      end
      self.format = 'pdf'
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
      text_compression_validator = EnumAttributeValidator.new('String', ['None', 'Flate'])
      return false unless text_compression_validator.valid?(@text_compression)
      compliance_validator = EnumAttributeValidator.new('String', ['Pdf15', 'Pdf16', 'Pdf17', 'PdfA1b', 'PdfA1a', 'PdfA2b', 'PdfA2a', 'PdfA3b', 'PdfA3a', 'PdfUa', 'PdfA2u'])
      return false unless compliance_validator.valid?(@compliance)
      notes_position_validator = EnumAttributeValidator.new('String', ['None', 'BottomFull', 'BottomTruncated'])
      return false unless notes_position_validator.valid?(@notes_position)
      comments_position_validator = EnumAttributeValidator.new('String', ['None', 'Bottom', 'Right'])
      return false unless comments_position_validator.valid?(@comments_position)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] text_compression Object to be assigned
    def text_compression=(text_compression)
      validator = EnumAttributeValidator.new('String', ['None', 'Flate'])
      unless validator.valid?(text_compression)
        fail ArgumentError, 'invalid value for "text_compression", must be one of #{validator.allowable_values}.'
      end
      @text_compression = text_compression
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] compliance Object to be assigned
    def compliance=(compliance)
      validator = EnumAttributeValidator.new('String', ['Pdf15', 'Pdf16', 'Pdf17', 'PdfA1b', 'PdfA1a', 'PdfA2b', 'PdfA2a', 'PdfA3b', 'PdfA3a', 'PdfUa', 'PdfA2u'])
      unless validator.valid?(compliance)
        fail ArgumentError, 'invalid value for "compliance", must be one of #{validator.allowable_values}.'
      end
      @compliance = compliance
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
          text_compression == o.text_compression &&
          embed_full_fonts == o.embed_full_fonts &&
          compliance == o.compliance &&
          sufficient_resolution == o.sufficient_resolution &&
          jpeg_quality == o.jpeg_quality &&
          draw_slides_frame == o.draw_slides_frame &&
          show_hidden_slides == o.show_hidden_slides &&
          save_metafiles_as_png == o.save_metafiles_as_png &&
          password == o.password &&
          embed_true_type_fonts_for_ascii == o.embed_true_type_fonts_for_ascii &&
          additional_common_font_families == o.additional_common_font_families &&
          notes_position == o.notes_position &&
          comments_position == o.comments_position &&
          comments_area_width == o.comments_area_width &&
          comments_area_color == o.comments_area_color &&
          show_comments_by_no_author == o.show_comments_by_no_author &&
          image_transparent_color == o.image_transparent_color &&
          apply_image_transparent == o.apply_image_transparent &&
          access_permissions == o.access_permissions
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [default_regular_font, font_fallback_rules, font_subst_rules, format, text_compression, embed_full_fonts, compliance, sufficient_resolution, jpeg_quality, draw_slides_frame, show_hidden_slides, save_metafiles_as_png, password, embed_true_type_fonts_for_ascii, additional_common_font_families, notes_position, comments_position, comments_area_width, comments_area_color, show_comments_by_no_author, image_transparent_color, apply_image_transparent, access_permissions].hash
    end
  end
end
