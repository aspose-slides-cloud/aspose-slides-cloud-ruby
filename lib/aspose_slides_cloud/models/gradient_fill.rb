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
  # Represents gradient fill format
  class GradientFill
    # Type of fill.
    attr_accessor :type

    # Gradient style.
    attr_accessor :direction

    # Gradient shape.
    attr_accessor :shape

    # Gradient stops.
    attr_accessor :stops

    # Gradient angle.
    attr_accessor :linear_angle

    # True if the gradient is scaled.
    attr_accessor :is_scaled

    # Gradient flipping mode.
    attr_accessor :tile_flip

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
      {
        :'type' => :'Type',
        :'direction' => :'Direction',
        :'shape' => :'Shape',
        :'stops' => :'Stops',
        :'linear_angle' => :'LinearAngle',
        :'is_scaled' => :'IsScaled',
        :'tile_flip' => :'TileFlip'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'type' => :'String',
        :'direction' => :'String',
        :'shape' => :'String',
        :'stops' => :'Array<GradientFillStop>',
        :'linear_angle' => :'Float',
        :'is_scaled' => :'BOOLEAN',
        :'tile_flip' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'Type')
        self.type = attributes[:'Type']
      else
        self.type = "Gradient"
      end

      if attributes.has_key?(:'Direction')
        self.direction = attributes[:'Direction']
      end

      if attributes.has_key?(:'Shape')
        self.shape = attributes[:'Shape']
      end

      if attributes.has_key?(:'Stops')
        if (value = attributes[:'Stops']).is_a?(Array)
          self.stops = value
        end
      end

      if attributes.has_key?(:'LinearAngle')
        self.linear_angle = attributes[:'LinearAngle']
      end

      if attributes.has_key?(:'IsScaled')
        self.is_scaled = attributes[:'IsScaled']
      end

      if attributes.has_key?(:'TileFlip')
        self.tile_flip = attributes[:'TileFlip']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @direction.nil?
        invalid_properties.push('invalid value for "direction", direction cannot be nil.')
      end

      if @shape.nil?
        invalid_properties.push('invalid value for "shape", shape cannot be nil.')
      end

      if @linear_angle.nil?
        invalid_properties.push('invalid value for "linear_angle", linear_angle cannot be nil.')
      end

      if @is_scaled.nil?
        invalid_properties.push('invalid value for "is_scaled", is_scaled cannot be nil.')
      end

      if @tile_flip.nil?
        invalid_properties.push('invalid value for "tile_flip", tile_flip cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ['NoFill', 'Solid', 'Gradient', 'Pattern', 'Picture', 'NotDefined'])
      return false unless type_validator.valid?(@type)
      return false if @direction.nil?
      direction_validator = EnumAttributeValidator.new('String', ['FromCorner1', 'FromCorner2', 'FromCorner3', 'FromCorner4', 'FromCenter', 'NotDefined'])
      return false unless direction_validator.valid?(@direction)
      return false if @shape.nil?
      shape_validator = EnumAttributeValidator.new('String', ['Linear', 'Rectangle', 'Radial', 'Path', 'NotDefined'])
      return false unless shape_validator.valid?(@shape)
      return false if @linear_angle.nil?
      return false if @is_scaled.nil?
      return false if @tile_flip.nil?
      tile_flip_validator = EnumAttributeValidator.new('String', ['NoFlip', 'FlipX', 'FlipY', 'FlipBoth', 'NotDefined'])
      return false unless tile_flip_validator.valid?(@tile_flip)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ['NoFill', 'Solid', 'Gradient', 'Pattern', 'Picture', 'NotDefined'])
      unless validator.valid?(type)
        fail ArgumentError, 'invalid value for "type", must be one of #{validator.allowable_values}.'
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] direction Object to be assigned
    def direction=(direction)
      validator = EnumAttributeValidator.new('String', ['FromCorner1', 'FromCorner2', 'FromCorner3', 'FromCorner4', 'FromCenter', 'NotDefined'])
      unless validator.valid?(direction)
        fail ArgumentError, 'invalid value for "direction", must be one of #{validator.allowable_values}.'
      end
      @direction = direction
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shape Object to be assigned
    def shape=(shape)
      validator = EnumAttributeValidator.new('String', ['Linear', 'Rectangle', 'Radial', 'Path', 'NotDefined'])
      unless validator.valid?(shape)
        fail ArgumentError, 'invalid value for "shape", must be one of #{validator.allowable_values}.'
      end
      @shape = shape
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tile_flip Object to be assigned
    def tile_flip=(tile_flip)
      validator = EnumAttributeValidator.new('String', ['NoFlip', 'FlipX', 'FlipY', 'FlipBoth', 'NotDefined'])
      unless validator.valid?(tile_flip)
        fail ArgumentError, 'invalid value for "tile_flip", must be one of #{validator.allowable_values}.'
      end
      @tile_flip = tile_flip
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          direction == o.direction &&
          shape == o.shape &&
          stops == o.stops &&
          linear_angle == o.linear_angle &&
          is_scaled == o.is_scaled &&
          tile_flip == o.tile_flip
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [type, direction, shape, stops, linear_angle, is_scaled, tile_flip].hash
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
