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
  # Provides options that control how a presentation is saved in SVG format.
  class SvgExportOptions < ExportOptions
    # Determines whether the text on a slide will be saved as graphics.
    attr_accessor :vectorize_text

    # Returns or sets the lower resolution limit for metafile rasterization.
    attr_accessor :metafile_rasterization_dpi

    # Determines whether the 3D text is disabled in SVG.
    attr_accessor :disable3_d_text

    # Disables splitting FromCornerX and FromCenter gradients.
    attr_accessor :disable_gradient_split

    # SVG 1.1 lacks ability to define insets for markers. Aspose.Slides SVG writing engine has workaround for that problem: it crops end of line with arrow, so, line doesn't overlap markers. This option switches off such behavior.
    attr_accessor :disable_line_end_cropping

    # Determines JPEG encoding quality.
    attr_accessor :jpeg_quality

    # Represents the pictures compression level
    attr_accessor :pictures_compression

    # A boolean flag indicates if the cropped parts remain as part of the document. If true the cropped  parts will removed, if false they will be serialized in the document (which can possible lead to a  larger file)
    attr_accessor :delete_pictures_cropped_areas

    # Determines a way of handling externally loaded fonts.
    attr_accessor :external_fonts_handling

    # Determines whether the text frame will be included in a rendering area or not.
    attr_accessor :use_frame_size

    # Determines whether to perform the specified rotation of the shape when rendering or not.
    attr_accessor :use_frame_rotation

    # true to disable ligatures in the rendered output.
    attr_accessor :disable_font_ligatures

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      super.merge({
        :'vectorize_text' => :'VectorizeText',
        :'metafile_rasterization_dpi' => :'MetafileRasterizationDpi',
        :'disable3_d_text' => :'Disable3DText',
        :'disable_gradient_split' => :'DisableGradientSplit',
        :'disable_line_end_cropping' => :'DisableLineEndCropping',
        :'jpeg_quality' => :'JpegQuality',
        :'pictures_compression' => :'PicturesCompression',
        :'delete_pictures_cropped_areas' => :'DeletePicturesCroppedAreas',
        :'external_fonts_handling' => :'ExternalFontsHandling',
        :'use_frame_size' => :'UseFrameSize',
        :'use_frame_rotation' => :'UseFrameRotation',
        :'disable_font_ligatures' => :'DisableFontLigatures',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'vectorize_text' => :'BOOLEAN',
        :'metafile_rasterization_dpi' => :'Integer',
        :'disable3_d_text' => :'BOOLEAN',
        :'disable_gradient_split' => :'BOOLEAN',
        :'disable_line_end_cropping' => :'BOOLEAN',
        :'jpeg_quality' => :'Integer',
        :'pictures_compression' => :'String',
        :'delete_pictures_cropped_areas' => :'BOOLEAN',
        :'external_fonts_handling' => :'String',
        :'use_frame_size' => :'BOOLEAN',
        :'use_frame_rotation' => :'BOOLEAN',
        :'disable_font_ligatures' => :'BOOLEAN',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'VectorizeText')
        self.vectorize_text = attributes[:'VectorizeText']
      end

      if attributes.has_key?(:'MetafileRasterizationDpi')
        self.metafile_rasterization_dpi = attributes[:'MetafileRasterizationDpi']
      end

      if attributes.has_key?(:'Disable3DText')
        self.disable3_d_text = attributes[:'Disable3DText']
      end

      if attributes.has_key?(:'DisableGradientSplit')
        self.disable_gradient_split = attributes[:'DisableGradientSplit']
      end

      if attributes.has_key?(:'DisableLineEndCropping')
        self.disable_line_end_cropping = attributes[:'DisableLineEndCropping']
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

      if attributes.has_key?(:'ExternalFontsHandling')
        self.external_fonts_handling = attributes[:'ExternalFontsHandling']
      end

      if attributes.has_key?(:'UseFrameSize')
        self.use_frame_size = attributes[:'UseFrameSize']
      end

      if attributes.has_key?(:'UseFrameRotation')
        self.use_frame_rotation = attributes[:'UseFrameRotation']
      end

      if attributes.has_key?(:'DisableFontLigatures')
        self.disable_font_ligatures = attributes[:'DisableFontLigatures']
      end
      self.format = 'svg'
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
      external_fonts_handling_validator = EnumAttributeValidator.new('String', ['AddLinksToFontFiles', 'Embed', 'Vectorize'])
      return false unless external_fonts_handling_validator.valid?(@external_fonts_handling)
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
    # @param [Object] external_fonts_handling Object to be assigned
    def external_fonts_handling=(external_fonts_handling)
      validator = EnumAttributeValidator.new('String', ['AddLinksToFontFiles', 'Embed', 'Vectorize'])
      unless validator.valid?(external_fonts_handling)
        fail ArgumentError, 'invalid value for "external_fonts_handling", must be one of #{validator.allowable_values}.'
      end
      @external_fonts_handling = external_fonts_handling
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          default_regular_font == o.default_regular_font &&
          delete_embedded_binary_objects == o.delete_embedded_binary_objects &&
          gradient_style == o.gradient_style &&
          font_fallback_rules == o.font_fallback_rules &&
          font_subst_rules == o.font_subst_rules &&
          skip_java_script_links == o.skip_java_script_links &&
          format == o.format &&
          vectorize_text == o.vectorize_text &&
          metafile_rasterization_dpi == o.metafile_rasterization_dpi &&
          disable3_d_text == o.disable3_d_text &&
          disable_gradient_split == o.disable_gradient_split &&
          disable_line_end_cropping == o.disable_line_end_cropping &&
          jpeg_quality == o.jpeg_quality &&
          pictures_compression == o.pictures_compression &&
          delete_pictures_cropped_areas == o.delete_pictures_cropped_areas &&
          external_fonts_handling == o.external_fonts_handling &&
          use_frame_size == o.use_frame_size &&
          use_frame_rotation == o.use_frame_rotation &&
          disable_font_ligatures == o.disable_font_ligatures
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [default_regular_font, delete_embedded_binary_objects, gradient_style, font_fallback_rules, font_subst_rules, skip_java_script_links, format, vectorize_text, metafile_rasterization_dpi, disable3_d_text, disable_gradient_split, disable_line_end_cropping, jpeg_quality, pictures_compression, delete_pictures_cropped_areas, external_fonts_handling, use_frame_size, use_frame_rotation, disable_font_ligatures].hash
    end
  end
end
