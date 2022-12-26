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
  # Picture fill.
  class PictureFill < FillFormat
    # Percentage of image height that is cropped from the bottom.
    attr_accessor :crop_bottom

    # Percentage of image height that is cropped from the left.
    attr_accessor :crop_left

    # Percentage of image height that is cropped from the right.
    attr_accessor :crop_right

    # Percentage of image height that is cropped from the top.
    attr_accessor :crop_top

    # Picture resolution.
    attr_accessor :dpi

    # Internal image link.
    attr_accessor :image

    # Base 64 image data.
    attr_accessor :base64_data

    # SVG image data.
    attr_accessor :svg_data

    # Fill mode.
    attr_accessor :picture_fill_mode

    # Image transform effects.
    attr_accessor :image_transform_list

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
        :'crop_bottom' => :'CropBottom',
        :'crop_left' => :'CropLeft',
        :'crop_right' => :'CropRight',
        :'crop_top' => :'CropTop',
        :'dpi' => :'Dpi',
        :'image' => :'Image',
        :'base64_data' => :'Base64Data',
        :'svg_data' => :'SvgData',
        :'picture_fill_mode' => :'PictureFillMode',
        :'image_transform_list' => :'ImageTransformList',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'crop_bottom' => :'Float',
        :'crop_left' => :'Float',
        :'crop_right' => :'Float',
        :'crop_top' => :'Float',
        :'dpi' => :'Integer',
        :'image' => :'ResourceUri',
        :'base64_data' => :'String',
        :'svg_data' => :'String',
        :'picture_fill_mode' => :'String',
        :'image_transform_list' => :'Array<ImageTransformEffect>',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'CropBottom')
        self.crop_bottom = attributes[:'CropBottom']
      end

      if attributes.has_key?(:'CropLeft')
        self.crop_left = attributes[:'CropLeft']
      end

      if attributes.has_key?(:'CropRight')
        self.crop_right = attributes[:'CropRight']
      end

      if attributes.has_key?(:'CropTop')
        self.crop_top = attributes[:'CropTop']
      end

      if attributes.has_key?(:'Dpi')
        self.dpi = attributes[:'Dpi']
      end

      if attributes.has_key?(:'Image')
        self.image = attributes[:'Image']
      end

      if attributes.has_key?(:'Base64Data')
        self.base64_data = attributes[:'Base64Data']
      end

      if attributes.has_key?(:'SvgData')
        self.svg_data = attributes[:'SvgData']
      end

      if attributes.has_key?(:'PictureFillMode')
        self.picture_fill_mode = attributes[:'PictureFillMode']
      end

      if attributes.has_key?(:'ImageTransformList')
        if (value = attributes[:'ImageTransformList']).is_a?(Array)
          self.image_transform_list = value
        end
      end
      self.type = 'Picture'
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = super
      if @crop_bottom.nil?
        invalid_properties.push('invalid value for "crop_bottom", crop_bottom cannot be nil.')
      end

      if @crop_left.nil?
        invalid_properties.push('invalid value for "crop_left", crop_left cannot be nil.')
      end

      if @crop_right.nil?
        invalid_properties.push('invalid value for "crop_right", crop_right cannot be nil.')
      end

      if @crop_top.nil?
        invalid_properties.push('invalid value for "crop_top", crop_top cannot be nil.')
      end

      if @dpi.nil?
        invalid_properties.push('invalid value for "dpi", dpi cannot be nil.')
      end

      if @picture_fill_mode.nil?
        invalid_properties.push('invalid value for "picture_fill_mode", picture_fill_mode cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !super
      return false if @crop_bottom.nil?
      return false if @crop_left.nil?
      return false if @crop_right.nil?
      return false if @crop_top.nil?
      return false if @dpi.nil?
      return false if @picture_fill_mode.nil?
      picture_fill_mode_validator = EnumAttributeValidator.new('String', ['Tile', 'Stretch'])
      return false unless picture_fill_mode_validator.valid?(@picture_fill_mode)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] picture_fill_mode Object to be assigned
    def picture_fill_mode=(picture_fill_mode)
      validator = EnumAttributeValidator.new('String', ['Tile', 'Stretch'])
      unless validator.valid?(picture_fill_mode)
        fail ArgumentError, 'invalid value for "picture_fill_mode", must be one of #{validator.allowable_values}.'
      end
      @picture_fill_mode = picture_fill_mode
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          crop_bottom == o.crop_bottom &&
          crop_left == o.crop_left &&
          crop_right == o.crop_right &&
          crop_top == o.crop_top &&
          dpi == o.dpi &&
          image == o.image &&
          base64_data == o.base64_data &&
          svg_data == o.svg_data &&
          picture_fill_mode == o.picture_fill_mode &&
          image_transform_list == o.image_transform_list
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [type, crop_bottom, crop_left, crop_right, crop_top, dpi, image, base64_data, svg_data, picture_fill_mode, image_transform_list].hash
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
      if value.nil?
        nil
      else
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
          registry_type = AsposeSlidesCloud::TypeRegistry.get_type(type.to_s, value)
          if registry_type
            type = registry_type
          end
          temp_model = AsposeSlidesCloud.const_get(type).new
          temp_model.build_from_hash(value)
        end
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
