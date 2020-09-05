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

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.any?{ |s| s.casecmp(value) == 0 }
      end
    end

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
      self.format = "svg"
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = super
      if @vectorize_text.nil?
        invalid_properties.push('invalid value for "vectorize_text", vectorize_text cannot be nil.')
      end

      if @metafile_rasterization_dpi.nil?
        invalid_properties.push('invalid value for "metafile_rasterization_dpi", metafile_rasterization_dpi cannot be nil.')
      end

      if @disable3_d_text.nil?
        invalid_properties.push('invalid value for "disable3_d_text", disable3_d_text cannot be nil.')
      end

      if @disable_gradient_split.nil?
        invalid_properties.push('invalid value for "disable_gradient_split", disable_gradient_split cannot be nil.')
      end

      if @disable_line_end_cropping.nil?
        invalid_properties.push('invalid value for "disable_line_end_cropping", disable_line_end_cropping cannot be nil.')
      end

      if @jpeg_quality.nil?
        invalid_properties.push('invalid value for "jpeg_quality", jpeg_quality cannot be nil.')
      end

      if @pictures_compression.nil?
        invalid_properties.push('invalid value for "pictures_compression", pictures_compression cannot be nil.')
      end

      if @delete_pictures_cropped_areas.nil?
        invalid_properties.push('invalid value for "delete_pictures_cropped_areas", delete_pictures_cropped_areas cannot be nil.')
      end

      if @external_fonts_handling.nil?
        invalid_properties.push('invalid value for "external_fonts_handling", external_fonts_handling cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !super
      return false if @vectorize_text.nil?
      return false if @metafile_rasterization_dpi.nil?
      return false if @disable3_d_text.nil?
      return false if @disable_gradient_split.nil?
      return false if @disable_line_end_cropping.nil?
      return false if @jpeg_quality.nil?
      return false if @pictures_compression.nil?
      pictures_compression_validator = EnumAttributeValidator.new('String', ['Dpi330', 'Dpi220', 'Dpi150', 'Dpi96', 'Dpi72', 'DocumentResolution'])
      return false unless pictures_compression_validator.valid?(@pictures_compression)
      return false if @delete_pictures_cropped_areas.nil?
      return false if @external_fonts_handling.nil?
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
          format == o.format &&
          vectorize_text == o.vectorize_text &&
          metafile_rasterization_dpi == o.metafile_rasterization_dpi &&
          disable3_d_text == o.disable3_d_text &&
          disable_gradient_split == o.disable_gradient_split &&
          disable_line_end_cropping == o.disable_line_end_cropping &&
          jpeg_quality == o.jpeg_quality &&
          pictures_compression == o.pictures_compression &&
          delete_pictures_cropped_areas == o.delete_pictures_cropped_areas &&
          external_fonts_handling == o.external_fonts_handling
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [default_regular_font, format, vectorize_text, metafile_rasterization_dpi, disable3_d_text, disable_gradient_split, disable_line_end_cropping, jpeg_quality, pictures_compression, delete_pictures_cropped_areas, external_fonts_handling].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        mapKey = self.class.attribute_map[key]
        if !mapKey.nil?
          val = attributes[mapKey]
          if val.nil?
            mapKeyString = mapKey.to_s
            mapKeyString[0] = mapKeyString[0].downcase
            mapKey = mapKeyString.to_sym
            val = attributes[mapKey]
          end
          if !val.nil?
            if type =~ /\AArray<(.*)>/i
              # check to ensure the input is an array given that the the attribute
              # is documented as an array but the input is not
              if val.is_a?(Array)
                self.send("#{key}=", val.map { |v| _deserialize($1, v) })
              end
            else
              self.send("#{key}=", _deserialize(type, val))
            end
          end
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = AsposeSlidesCloud.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
