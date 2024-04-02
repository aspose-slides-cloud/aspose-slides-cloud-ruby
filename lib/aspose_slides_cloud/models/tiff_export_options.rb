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

    # Slides layouting options
    attr_accessor :slides_layout_options

    # Specifies the algorithm for converting a color image into a black and white image. This option will applied only if Aspose.Slides.Export.TiffOptions.CompressionType is set to Aspose.Slides.Export.TiffCompressionTypes.CCITT4 or Aspose.Slides.Export.TiffCompressionTypes.CCITT3.
    attr_accessor :bw_conversion_mode

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      super.merge({
        :'compression' => :'Compression',
        :'dpi_x' => :'DpiX',
        :'dpi_y' => :'DpiY',
        :'show_hidden_slides' => :'ShowHiddenSlides',
        :'pixel_format' => :'PixelFormat',
        :'slides_layout_options' => :'SlidesLayoutOptions',
        :'bw_conversion_mode' => :'BwConversionMode',
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
        :'slides_layout_options' => :'SlidesLayoutOptions',
        :'bw_conversion_mode' => :'String',
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

      if attributes.has_key?(:'SlidesLayoutOptions')
        self.slides_layout_options = attributes[:'SlidesLayoutOptions']
      end

      if attributes.has_key?(:'BwConversionMode')
        self.bw_conversion_mode = attributes[:'BwConversionMode']
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
      bw_conversion_mode_validator = EnumAttributeValidator.new('String', ['Default', 'Dithering', 'DitheringFloydSteinberg', 'Auto', 'AutoOtsu', 'Threshold25', 'Threshold50', 'Threshold75'])
      return false unless bw_conversion_mode_validator.valid?(@bw_conversion_mode)
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
    # @param [Object] bw_conversion_mode Object to be assigned
    def bw_conversion_mode=(bw_conversion_mode)
      validator = EnumAttributeValidator.new('String', ['Default', 'Dithering', 'DitheringFloydSteinberg', 'Auto', 'AutoOtsu', 'Threshold25', 'Threshold50', 'Threshold75'])
      unless validator.valid?(bw_conversion_mode)
        fail ArgumentError, 'invalid value for "bw_conversion_mode", must be one of #{validator.allowable_values}.'
      end
      @bw_conversion_mode = bw_conversion_mode
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
          slides_layout_options == o.slides_layout_options &&
          bw_conversion_mode == o.bw_conversion_mode
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [default_regular_font, font_fallback_rules, font_subst_rules, format, height, width, compression, dpi_x, dpi_y, show_hidden_slides, pixel_format, slides_layout_options, bw_conversion_mode].hash
    end
  end
end
