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
  # Represents Table shape resource.
  class Table < ShapeBase
    # Builtin table style.
    attr_accessor :style

    # Rows.
    attr_accessor :rows

    # Columns.
    attr_accessor :columns

    # Determines whether the first column of a table has to be drawn with a special formatting.
    attr_accessor :first_col

    # Determines whether the first row of a table has to be drawn with a special formatting.
    attr_accessor :first_row

    # Determines whether the even rows has to be drawn with a different formatting.
    attr_accessor :horizontal_banding

    # Determines whether the last column of a table has to be drawn with a special formatting.
    attr_accessor :last_col

    # Determines whether the last row of a table has to be drawn with a special formatting.
    attr_accessor :last_row

    # Determines whether the table has right to left reading order.
    attr_accessor :right_to_left

    # Determines whether the even columns has to be drawn with a different formatting.
    attr_accessor :vertical_banding

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
        :'style' => :'Style',
        :'rows' => :'Rows',
        :'columns' => :'Columns',
        :'first_col' => :'FirstCol',
        :'first_row' => :'FirstRow',
        :'horizontal_banding' => :'HorizontalBanding',
        :'last_col' => :'LastCol',
        :'last_row' => :'LastRow',
        :'right_to_left' => :'RightToLeft',
        :'vertical_banding' => :'VerticalBanding',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'style' => :'String',
        :'rows' => :'Array<TableRow>',
        :'columns' => :'Array<TableColumn>',
        :'first_col' => :'BOOLEAN',
        :'first_row' => :'BOOLEAN',
        :'horizontal_banding' => :'BOOLEAN',
        :'last_col' => :'BOOLEAN',
        :'last_row' => :'BOOLEAN',
        :'right_to_left' => :'BOOLEAN',
        :'vertical_banding' => :'BOOLEAN',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'Style')
        self.style = attributes[:'Style']
      end

      if attributes.has_key?(:'Rows')
        if (value = attributes[:'Rows']).is_a?(Array)
          self.rows = value
        end
      end

      if attributes.has_key?(:'Columns')
        if (value = attributes[:'Columns']).is_a?(Array)
          self.columns = value
        end
      end

      if attributes.has_key?(:'FirstCol')
        self.first_col = attributes[:'FirstCol']
      end

      if attributes.has_key?(:'FirstRow')
        self.first_row = attributes[:'FirstRow']
      end

      if attributes.has_key?(:'HorizontalBanding')
        self.horizontal_banding = attributes[:'HorizontalBanding']
      end

      if attributes.has_key?(:'LastCol')
        self.last_col = attributes[:'LastCol']
      end

      if attributes.has_key?(:'LastRow')
        self.last_row = attributes[:'LastRow']
      end

      if attributes.has_key?(:'RightToLeft')
        self.right_to_left = attributes[:'RightToLeft']
      end

      if attributes.has_key?(:'VerticalBanding')
        self.vertical_banding = attributes[:'VerticalBanding']
      end
      self.type = "Table"
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
      style_validator = EnumAttributeValidator.new('String', ['None', 'MediumStyle2Accent1', 'MediumStyle2', 'NoStyleNoGrid', 'ThemedStyle1Accent1', 'ThemedStyle1Accent2', 'ThemedStyle1Accent3', 'ThemedStyle1Accent4', 'ThemedStyle1Accent5', 'ThemedStyle1Accent6', 'NoStyleTableGrid', 'ThemedStyle2Accent1', 'ThemedStyle2Accent2', 'ThemedStyle2Accent3', 'ThemedStyle2Accent4', 'ThemedStyle2Accent5', 'ThemedStyle2Accent6', 'LightStyle1', 'LightStyle1Accent1', 'LightStyle1Accent2', 'LightStyle1Accent3', 'LightStyle1Accent4', 'LightStyle2Accent5', 'LightStyle1Accent6', 'LightStyle2', 'LightStyle2Accent1', 'LightStyle2Accent2', 'LightStyle2Accent3', 'MediumStyle2Accent3', 'MediumStyle2Accent4', 'MediumStyle2Accent5', 'LightStyle2Accent6', 'LightStyle2Accent4', 'LightStyle3', 'LightStyle3Accent1', 'MediumStyle2Accent2', 'LightStyle3Accent2', 'LightStyle3Accent3', 'LightStyle3Accent4', 'LightStyle3Accent5', 'LightStyle3Accent6', 'MediumStyle1', 'MediumStyle1Accent1', 'MediumStyle1Accent2', 'MediumStyle1Accent3', 'MediumStyle1Accent4', 'MediumStyle1Accent5', 'MediumStyle1Accent6', 'MediumStyle2Accent6', 'MediumStyle3', 'MediumStyle3Accent1', 'MediumStyle3Accent2', 'MediumStyle3Accent3', 'MediumStyle3Accent4', 'MediumStyle3Accent5', 'MediumStyle3Accent6', 'MediumStyle4', 'MediumStyle4Accent1', 'MediumStyle4Accent2', 'MediumStyle4Accent3', 'MediumStyle4Accent4', 'MediumStyle4Accent5', 'MediumStyle4Accent6', 'DarkStyle1', 'DarkStyle1Accent1', 'DarkStyle1Accent2', 'DarkStyle1Accent3', 'DarkStyle1Accent4', 'DarkStyle1Accent5', 'DarkStyle1Accent6', 'DarkStyle2', 'DarkStyle2Accent1Accent2', 'DarkStyle2Accent3Accent4', 'DarkStyle2Accent5Accent6', 'LightStyle1Accent5', 'Custom'])
      return false unless style_validator.valid?(@style)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] style Object to be assigned
    def style=(style)
      validator = EnumAttributeValidator.new('String', ['None', 'MediumStyle2Accent1', 'MediumStyle2', 'NoStyleNoGrid', 'ThemedStyle1Accent1', 'ThemedStyle1Accent2', 'ThemedStyle1Accent3', 'ThemedStyle1Accent4', 'ThemedStyle1Accent5', 'ThemedStyle1Accent6', 'NoStyleTableGrid', 'ThemedStyle2Accent1', 'ThemedStyle2Accent2', 'ThemedStyle2Accent3', 'ThemedStyle2Accent4', 'ThemedStyle2Accent5', 'ThemedStyle2Accent6', 'LightStyle1', 'LightStyle1Accent1', 'LightStyle1Accent2', 'LightStyle1Accent3', 'LightStyle1Accent4', 'LightStyle2Accent5', 'LightStyle1Accent6', 'LightStyle2', 'LightStyle2Accent1', 'LightStyle2Accent2', 'LightStyle2Accent3', 'MediumStyle2Accent3', 'MediumStyle2Accent4', 'MediumStyle2Accent5', 'LightStyle2Accent6', 'LightStyle2Accent4', 'LightStyle3', 'LightStyle3Accent1', 'MediumStyle2Accent2', 'LightStyle3Accent2', 'LightStyle3Accent3', 'LightStyle3Accent4', 'LightStyle3Accent5', 'LightStyle3Accent6', 'MediumStyle1', 'MediumStyle1Accent1', 'MediumStyle1Accent2', 'MediumStyle1Accent3', 'MediumStyle1Accent4', 'MediumStyle1Accent5', 'MediumStyle1Accent6', 'MediumStyle2Accent6', 'MediumStyle3', 'MediumStyle3Accent1', 'MediumStyle3Accent2', 'MediumStyle3Accent3', 'MediumStyle3Accent4', 'MediumStyle3Accent5', 'MediumStyle3Accent6', 'MediumStyle4', 'MediumStyle4Accent1', 'MediumStyle4Accent2', 'MediumStyle4Accent3', 'MediumStyle4Accent4', 'MediumStyle4Accent5', 'MediumStyle4Accent6', 'DarkStyle1', 'DarkStyle1Accent1', 'DarkStyle1Accent2', 'DarkStyle1Accent3', 'DarkStyle1Accent4', 'DarkStyle1Accent5', 'DarkStyle1Accent6', 'DarkStyle2', 'DarkStyle2Accent1Accent2', 'DarkStyle2Accent3Accent4', 'DarkStyle2Accent5Accent6', 'LightStyle1Accent5', 'Custom'])
      unless validator.valid?(style)
        fail ArgumentError, 'invalid value for "style", must be one of #{validator.allowable_values}.'
      end
      @style = style
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
          fill_format == o.fill_format &&
          effect_format == o.effect_format &&
          three_d_format == o.three_d_format &&
          line_format == o.line_format &&
          hyperlink_click == o.hyperlink_click &&
          hyperlink_mouse_over == o.hyperlink_mouse_over &&
          type == o.type &&
          style == o.style &&
          rows == o.rows &&
          columns == o.columns &&
          first_col == o.first_col &&
          first_row == o.first_row &&
          horizontal_banding == o.horizontal_banding &&
          last_col == o.last_col &&
          last_row == o.last_row &&
          right_to_left == o.right_to_left &&
          vertical_banding == o.vertical_banding
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [self_uri, alternate_links, name, width, height, alternative_text, alternative_text_title, hidden, x, y, z_order_position, fill_format, effect_format, three_d_format, line_format, hyperlink_click, hyperlink_mouse_over, type, style, rows, columns, first_col, first_row, horizontal_banding, last_col, last_row, right_to_left, vertical_banding].hash
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
        registry_type = AsposeSlidesCloud::TypeRegistry.get_type(type.to_s, value)
        if registry_type
          type = registry_type
        end
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
