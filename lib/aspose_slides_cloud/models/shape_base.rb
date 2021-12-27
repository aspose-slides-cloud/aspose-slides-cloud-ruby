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
  # Slide shape.
  class ShapeBase < ResourceBase
    # Gets or sets the name.
    attr_accessor :name

    # Gets or sets the width.
    attr_accessor :width

    # Gets or sets the height.
    attr_accessor :height

    # Gets or sets the alternative text.
    attr_accessor :alternative_text

    # The title of alternative text associated with the shape.
    attr_accessor :alternative_text_title

    # Gets or sets a value indicating whether this ShapeBase is hidden.
    attr_accessor :hidden

    # Gets or sets the X
    attr_accessor :x

    # Gets or sets the Y.
    attr_accessor :y

    # Gets z-order position of shape
    attr_accessor :z_order_position

    # Gets or sets the link to shapes.
    attr_accessor :shapes

    # Gets or sets the fill format.
    attr_accessor :fill_format

    # Gets or sets the effect format.
    attr_accessor :effect_format

    # Gets or sets the 3D format
    attr_accessor :three_d_format

    # Gets or sets the line format.
    attr_accessor :line_format

    attr_accessor :type

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
        :'name' => :'Name',
        :'width' => :'Width',
        :'height' => :'Height',
        :'alternative_text' => :'AlternativeText',
        :'alternative_text_title' => :'AlternativeTextTitle',
        :'hidden' => :'Hidden',
        :'x' => :'X',
        :'y' => :'Y',
        :'z_order_position' => :'ZOrderPosition',
        :'shapes' => :'Shapes',
        :'fill_format' => :'FillFormat',
        :'effect_format' => :'EffectFormat',
        :'three_d_format' => :'ThreeDFormat',
        :'line_format' => :'LineFormat',
        :'type' => :'Type',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'name' => :'String',
        :'width' => :'Float',
        :'height' => :'Float',
        :'alternative_text' => :'String',
        :'alternative_text_title' => :'String',
        :'hidden' => :'BOOLEAN',
        :'x' => :'Float',
        :'y' => :'Float',
        :'z_order_position' => :'Integer',
        :'shapes' => :'ResourceUri',
        :'fill_format' => :'FillFormat',
        :'effect_format' => :'EffectFormat',
        :'three_d_format' => :'ThreeDFormat',
        :'line_format' => :'LineFormat',
        :'type' => :'String',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'Name')
        self.name = attributes[:'Name']
      end

      if attributes.has_key?(:'Width')
        self.width = attributes[:'Width']
      end

      if attributes.has_key?(:'Height')
        self.height = attributes[:'Height']
      end

      if attributes.has_key?(:'AlternativeText')
        self.alternative_text = attributes[:'AlternativeText']
      end

      if attributes.has_key?(:'AlternativeTextTitle')
        self.alternative_text_title = attributes[:'AlternativeTextTitle']
      end

      if attributes.has_key?(:'Hidden')
        self.hidden = attributes[:'Hidden']
      end

      if attributes.has_key?(:'X')
        self.x = attributes[:'X']
      end

      if attributes.has_key?(:'Y')
        self.y = attributes[:'Y']
      end

      if attributes.has_key?(:'ZOrderPosition')
        self.z_order_position = attributes[:'ZOrderPosition']
      end

      if attributes.has_key?(:'Shapes')
        self.shapes = attributes[:'Shapes']
      end

      if attributes.has_key?(:'FillFormat')
        self.fill_format = attributes[:'FillFormat']
      end

      if attributes.has_key?(:'EffectFormat')
        self.effect_format = attributes[:'EffectFormat']
      end

      if attributes.has_key?(:'ThreeDFormat')
        self.three_d_format = attributes[:'ThreeDFormat']
      end

      if attributes.has_key?(:'LineFormat')
        self.line_format = attributes[:'LineFormat']
      end

      if attributes.has_key?(:'Type')
        self.type = attributes[:'Type']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = super
      if @z_order_position.nil?
        invalid_properties.push('invalid value for "z_order_position", z_order_position cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !super
      return false if @z_order_position.nil?
      type_validator = EnumAttributeValidator.new('String', ['Shape', 'Chart', 'Table', 'PictureFrame', 'VideoFrame', 'AudioFrame', 'SmartArt', 'OleObjectFrame', 'GroupShape', 'GraphicalObject', 'Connector', 'SmartArtShape'])
      return false unless type_validator.valid?(@type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ['Shape', 'Chart', 'Table', 'PictureFrame', 'VideoFrame', 'AudioFrame', 'SmartArt', 'OleObjectFrame', 'GroupShape', 'GraphicalObject', 'Connector', 'SmartArtShape'])
      unless validator.valid?(type)
        fail ArgumentError, 'invalid value for "type", must be one of #{validator.allowable_values}.'
      end
      @type = type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          self_uri == o.self_uri &&
          alternate_links == o.alternate_links &&
          name == o.name &&
          width == o.width &&
          height == o.height &&
          alternative_text == o.alternative_text &&
          alternative_text_title == o.alternative_text_title &&
          hidden == o.hidden &&
          x == o.x &&
          y == o.y &&
          z_order_position == o.z_order_position &&
          shapes == o.shapes &&
          fill_format == o.fill_format &&
          effect_format == o.effect_format &&
          three_d_format == o.three_d_format &&
          line_format == o.line_format &&
          type == o.type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [self_uri, alternate_links, name, width, height, alternative_text, alternative_text_title, hidden, x, y, z_order_position, shapes, fill_format, effect_format, three_d_format, line_format, type].hash
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
