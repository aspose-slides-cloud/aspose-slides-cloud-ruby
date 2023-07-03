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
  # Provides options that control how a presentation is saved in TIFF format.
  class TiffExportOptions < ImageExportOptionsBase
    # Compression type.
    attr_accessor :compression

    # Horizontal resolution, in dots per inch.
    attr_accessor :dpi_x

    # Vertical resolution, in dots per inch.
    attr_accessor :dpi_y

    # Specifies whether the generated document should include hidden slides or not. Default is false. 
    attr_accessor :show_hidden_slides

    # Specifies the pixel format for the generated images. Read/write ImagePixelFormat.
    attr_accessor :pixel_format

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
        :'compression' => :'Compression',
        :'dpi_x' => :'DpiX',
        :'dpi_y' => :'DpiY',
        :'show_hidden_slides' => :'ShowHiddenSlides',
        :'pixel_format' => :'PixelFormat',
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
        :'compression' => :'String',
        :'dpi_x' => :'Integer',
        :'dpi_y' => :'Integer',
        :'show_hidden_slides' => :'BOOLEAN',
        :'pixel_format' => :'String',
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

      if attributes.has_key?(:'Compression')
        self.compression = attributes[:'Compression']
      end

      if attributes.has_key?(:'DpiX')
        self.dpi_x = attributes[:'DpiX']
      end

      if attributes.has_key?(:'DpiY')
        self.dpi_y = attributes[:'DpiY']
      end

      if attributes.has_key?(:'ShowHiddenSlides')
        self.show_hidden_slides = attributes[:'ShowHiddenSlides']
      end

      if attributes.has_key?(:'PixelFormat')
        self.pixel_format = attributes[:'PixelFormat']
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
      self.format = 'tiff'
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
      compression_validator = EnumAttributeValidator.new('String', ['Default', 'None', 'CCITT3', 'CCITT4', 'LZW', 'RLE'])
      return false unless compression_validator.valid?(@compression)
      pixel_format_validator = EnumAttributeValidator.new('String', ['Format1bppIndexed', 'Format4bppIndexed', 'Format8bppIndexed', 'Format24bppRgb', 'Format32bppArgb'])
      return false unless pixel_format_validator.valid?(@pixel_format)
      notes_position_validator = EnumAttributeValidator.new('String', ['None', 'BottomFull', 'BottomTruncated'])
      return false unless notes_position_validator.valid?(@notes_position)
      comments_position_validator = EnumAttributeValidator.new('String', ['None', 'Bottom', 'Right'])
      return false unless comments_position_validator.valid?(@comments_position)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] compression Object to be assigned
    def compression=(compression)
      validator = EnumAttributeValidator.new('String', ['Default', 'None', 'CCITT3', 'CCITT4', 'LZW', 'RLE'])
      unless validator.valid?(compression)
        fail ArgumentError, 'invalid value for "compression", must be one of #{validator.allowable_values}.'
      end
      @compression = compression
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] pixel_format Object to be assigned
    def pixel_format=(pixel_format)
      validator = EnumAttributeValidator.new('String', ['Format1bppIndexed', 'Format4bppIndexed', 'Format8bppIndexed', 'Format24bppRgb', 'Format32bppArgb'])
      unless validator.valid?(pixel_format)
        fail ArgumentError, 'invalid value for "pixel_format", must be one of #{validator.allowable_values}.'
      end
      @pixel_format = pixel_format
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
          height == o.height &&
          width == o.width &&
          compression == o.compression &&
          dpi_x == o.dpi_x &&
          dpi_y == o.dpi_y &&
          show_hidden_slides == o.show_hidden_slides &&
          pixel_format == o.pixel_format &&
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
      [default_regular_font, font_fallback_rules, font_subst_rules, format, height, width, compression, dpi_x, dpi_y, show_hidden_slides, pixel_format, notes_position, comments_position, comments_area_width, comments_area_color, show_comments_by_no_author].hash
    end
  end
end
