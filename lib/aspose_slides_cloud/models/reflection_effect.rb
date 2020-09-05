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
  # Represents reflection effect 
  class ReflectionEffect
    # direction
    attr_accessor :direction

    # fade direction
    attr_accessor :fade_direction

    # distance
    attr_accessor :distance

    # blur radius
    attr_accessor :blur_radius

    # scale horizontal
    attr_accessor :scale_horizontal

    # scale vertical
    attr_accessor :scale_vertical

    # skew horizontal
    attr_accessor :skew_horizontal

    # skew vertical
    attr_accessor :skew_vertical

    # start pos alpha
    attr_accessor :start_pos_alpha

    # end pos alpha
    attr_accessor :end_pos_alpha

    # start reflection opacity
    attr_accessor :start_reflection_opacity

    # end reflection opacity
    attr_accessor :end_reflection_opacity

    # rectangle alignment
    attr_accessor :rectangle_align

    # true if the reflection should rotate with the shape when the shape is rotated
    attr_accessor :rotate_shadow_with_shape

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
        :'direction' => :'Direction',
        :'fade_direction' => :'FadeDirection',
        :'distance' => :'Distance',
        :'blur_radius' => :'BlurRadius',
        :'scale_horizontal' => :'ScaleHorizontal',
        :'scale_vertical' => :'ScaleVertical',
        :'skew_horizontal' => :'SkewHorizontal',
        :'skew_vertical' => :'SkewVertical',
        :'start_pos_alpha' => :'StartPosAlpha',
        :'end_pos_alpha' => :'EndPosAlpha',
        :'start_reflection_opacity' => :'StartReflectionOpacity',
        :'end_reflection_opacity' => :'EndReflectionOpacity',
        :'rectangle_align' => :'RectangleAlign',
        :'rotate_shadow_with_shape' => :'RotateShadowWithShape',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'direction' => :'Float',
        :'fade_direction' => :'Float',
        :'distance' => :'Float',
        :'blur_radius' => :'Float',
        :'scale_horizontal' => :'Float',
        :'scale_vertical' => :'Float',
        :'skew_horizontal' => :'Float',
        :'skew_vertical' => :'Float',
        :'start_pos_alpha' => :'Float',
        :'end_pos_alpha' => :'Float',
        :'start_reflection_opacity' => :'Float',
        :'end_reflection_opacity' => :'Float',
        :'rectangle_align' => :'String',
        :'rotate_shadow_with_shape' => :'BOOLEAN',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'Direction')
        self.direction = attributes[:'Direction']
      end

      if attributes.has_key?(:'FadeDirection')
        self.fade_direction = attributes[:'FadeDirection']
      end

      if attributes.has_key?(:'Distance')
        self.distance = attributes[:'Distance']
      end

      if attributes.has_key?(:'BlurRadius')
        self.blur_radius = attributes[:'BlurRadius']
      end

      if attributes.has_key?(:'ScaleHorizontal')
        self.scale_horizontal = attributes[:'ScaleHorizontal']
      end

      if attributes.has_key?(:'ScaleVertical')
        self.scale_vertical = attributes[:'ScaleVertical']
      end

      if attributes.has_key?(:'SkewHorizontal')
        self.skew_horizontal = attributes[:'SkewHorizontal']
      end

      if attributes.has_key?(:'SkewVertical')
        self.skew_vertical = attributes[:'SkewVertical']
      end

      if attributes.has_key?(:'StartPosAlpha')
        self.start_pos_alpha = attributes[:'StartPosAlpha']
      end

      if attributes.has_key?(:'EndPosAlpha')
        self.end_pos_alpha = attributes[:'EndPosAlpha']
      end

      if attributes.has_key?(:'StartReflectionOpacity')
        self.start_reflection_opacity = attributes[:'StartReflectionOpacity']
      end

      if attributes.has_key?(:'EndReflectionOpacity')
        self.end_reflection_opacity = attributes[:'EndReflectionOpacity']
      end

      if attributes.has_key?(:'RectangleAlign')
        self.rectangle_align = attributes[:'RectangleAlign']
      end

      if attributes.has_key?(:'RotateShadowWithShape')
        self.rotate_shadow_with_shape = attributes[:'RotateShadowWithShape']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @direction.nil?
        invalid_properties.push('invalid value for "direction", direction cannot be nil.')
      end

      if @fade_direction.nil?
        invalid_properties.push('invalid value for "fade_direction", fade_direction cannot be nil.')
      end

      if @distance.nil?
        invalid_properties.push('invalid value for "distance", distance cannot be nil.')
      end

      if @blur_radius.nil?
        invalid_properties.push('invalid value for "blur_radius", blur_radius cannot be nil.')
      end

      if @scale_horizontal.nil?
        invalid_properties.push('invalid value for "scale_horizontal", scale_horizontal cannot be nil.')
      end

      if @scale_vertical.nil?
        invalid_properties.push('invalid value for "scale_vertical", scale_vertical cannot be nil.')
      end

      if @skew_horizontal.nil?
        invalid_properties.push('invalid value for "skew_horizontal", skew_horizontal cannot be nil.')
      end

      if @skew_vertical.nil?
        invalid_properties.push('invalid value for "skew_vertical", skew_vertical cannot be nil.')
      end

      if @start_pos_alpha.nil?
        invalid_properties.push('invalid value for "start_pos_alpha", start_pos_alpha cannot be nil.')
      end

      if @end_pos_alpha.nil?
        invalid_properties.push('invalid value for "end_pos_alpha", end_pos_alpha cannot be nil.')
      end

      if @start_reflection_opacity.nil?
        invalid_properties.push('invalid value for "start_reflection_opacity", start_reflection_opacity cannot be nil.')
      end

      if @end_reflection_opacity.nil?
        invalid_properties.push('invalid value for "end_reflection_opacity", end_reflection_opacity cannot be nil.')
      end

      if @rectangle_align.nil?
        invalid_properties.push('invalid value for "rectangle_align", rectangle_align cannot be nil.')
      end

      if @rotate_shadow_with_shape.nil?
        invalid_properties.push('invalid value for "rotate_shadow_with_shape", rotate_shadow_with_shape cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @direction.nil?
      return false if @fade_direction.nil?
      return false if @distance.nil?
      return false if @blur_radius.nil?
      return false if @scale_horizontal.nil?
      return false if @scale_vertical.nil?
      return false if @skew_horizontal.nil?
      return false if @skew_vertical.nil?
      return false if @start_pos_alpha.nil?
      return false if @end_pos_alpha.nil?
      return false if @start_reflection_opacity.nil?
      return false if @end_reflection_opacity.nil?
      return false if @rectangle_align.nil?
      rectangle_align_validator = EnumAttributeValidator.new('String', ['TopLeft', 'Top', 'TopRight', 'Left', 'Center', 'Right', 'BottomLeft', 'Bottom', 'BottomRight', 'NotDefined'])
      return false unless rectangle_align_validator.valid?(@rectangle_align)
      return false if @rotate_shadow_with_shape.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] rectangle_align Object to be assigned
    def rectangle_align=(rectangle_align)
      validator = EnumAttributeValidator.new('String', ['TopLeft', 'Top', 'TopRight', 'Left', 'Center', 'Right', 'BottomLeft', 'Bottom', 'BottomRight', 'NotDefined'])
      unless validator.valid?(rectangle_align)
        fail ArgumentError, 'invalid value for "rectangle_align", must be one of #{validator.allowable_values}.'
      end
      @rectangle_align = rectangle_align
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          direction == o.direction &&
          fade_direction == o.fade_direction &&
          distance == o.distance &&
          blur_radius == o.blur_radius &&
          scale_horizontal == o.scale_horizontal &&
          scale_vertical == o.scale_vertical &&
          skew_horizontal == o.skew_horizontal &&
          skew_vertical == o.skew_vertical &&
          start_pos_alpha == o.start_pos_alpha &&
          end_pos_alpha == o.end_pos_alpha &&
          start_reflection_opacity == o.start_reflection_opacity &&
          end_reflection_opacity == o.end_reflection_opacity &&
          rectangle_align == o.rectangle_align &&
          rotate_shadow_with_shape == o.rotate_shadow_with_shape
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [direction, fade_direction, distance, blur_radius, scale_horizontal, scale_vertical, skew_horizontal, skew_vertical, start_pos_alpha, end_pos_alpha, start_reflection_opacity, end_reflection_opacity, rectangle_align, rotate_shadow_with_shape].hash
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
