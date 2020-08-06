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
  # Represents one cell of table.
  class TableCell
    # Cell text.
    attr_accessor :text

    # The number of rows spanned by a merged cell.
    attr_accessor :row_span

    # The number of columns spanned by a merged cell.
    attr_accessor :col_span

    # The top margin of the cell.
    attr_accessor :margin_top

    # The right margin of the cell.
    attr_accessor :margin_right

    # The left margin of the cell.
    attr_accessor :margin_left

    # The bottom margin of the cell.
    attr_accessor :margin_bottom

    # Text anchor type.
    attr_accessor :text_anchor_type

    # The type of vertical text.
    attr_accessor :text_vertical_type

    # Fill properties set of the cell.
    attr_accessor :fill_format

    # Line properties set for the top border of the cell.
    attr_accessor :border_top

    # Line properties set for the right border of the cell.
    attr_accessor :border_right

    # Line properties set for the left border of the cell.
    attr_accessor :border_left

    # Line properties set for the bottom border of the cell.
    attr_accessor :border_bottom

    # Line properties set for the diagonal up border of the cell.
    attr_accessor :border_diagonal_up

    # Line properties set for the diagonal down border of the cell.
    attr_accessor :border_diagonal_down

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
        :'text' => :'Text',
        :'row_span' => :'RowSpan',
        :'col_span' => :'ColSpan',
        :'margin_top' => :'MarginTop',
        :'margin_right' => :'MarginRight',
        :'margin_left' => :'MarginLeft',
        :'margin_bottom' => :'MarginBottom',
        :'text_anchor_type' => :'TextAnchorType',
        :'text_vertical_type' => :'TextVerticalType',
        :'fill_format' => :'FillFormat',
        :'border_top' => :'BorderTop',
        :'border_right' => :'BorderRight',
        :'border_left' => :'BorderLeft',
        :'border_bottom' => :'BorderBottom',
        :'border_diagonal_up' => :'BorderDiagonalUp',
        :'border_diagonal_down' => :'BorderDiagonalDown'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'text' => :'String',
        :'row_span' => :'Integer',
        :'col_span' => :'Integer',
        :'margin_top' => :'Float',
        :'margin_right' => :'Float',
        :'margin_left' => :'Float',
        :'margin_bottom' => :'Float',
        :'text_anchor_type' => :'String',
        :'text_vertical_type' => :'String',
        :'fill_format' => :'FillFormat',
        :'border_top' => :'LineFormat',
        :'border_right' => :'LineFormat',
        :'border_left' => :'LineFormat',
        :'border_bottom' => :'LineFormat',
        :'border_diagonal_up' => :'LineFormat',
        :'border_diagonal_down' => :'LineFormat'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'Text')
        self.text = attributes[:'Text']
      end

      if attributes.has_key?(:'RowSpan')
        self.row_span = attributes[:'RowSpan']
      end

      if attributes.has_key?(:'ColSpan')
        self.col_span = attributes[:'ColSpan']
      end

      if attributes.has_key?(:'MarginTop')
        self.margin_top = attributes[:'MarginTop']
      end

      if attributes.has_key?(:'MarginRight')
        self.margin_right = attributes[:'MarginRight']
      end

      if attributes.has_key?(:'MarginLeft')
        self.margin_left = attributes[:'MarginLeft']
      end

      if attributes.has_key?(:'MarginBottom')
        self.margin_bottom = attributes[:'MarginBottom']
      end

      if attributes.has_key?(:'TextAnchorType')
        self.text_anchor_type = attributes[:'TextAnchorType']
      end

      if attributes.has_key?(:'TextVerticalType')
        self.text_vertical_type = attributes[:'TextVerticalType']
      end

      if attributes.has_key?(:'FillFormat')
        self.fill_format = attributes[:'FillFormat']
      end

      if attributes.has_key?(:'BorderTop')
        self.border_top = attributes[:'BorderTop']
      end

      if attributes.has_key?(:'BorderRight')
        self.border_right = attributes[:'BorderRight']
      end

      if attributes.has_key?(:'BorderLeft')
        self.border_left = attributes[:'BorderLeft']
      end

      if attributes.has_key?(:'BorderBottom')
        self.border_bottom = attributes[:'BorderBottom']
      end

      if attributes.has_key?(:'BorderDiagonalUp')
        self.border_diagonal_up = attributes[:'BorderDiagonalUp']
      end

      if attributes.has_key?(:'BorderDiagonalDown')
        self.border_diagonal_down = attributes[:'BorderDiagonalDown']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      text_anchor_type_validator = EnumAttributeValidator.new('String', ['Top', 'Center', 'Bottom', 'Justified', 'Distributed', 'NotDefined'])
      return false unless text_anchor_type_validator.valid?(@text_anchor_type)
      text_vertical_type_validator = EnumAttributeValidator.new('String', ['Horizontal', 'Vertical', 'Vertical270', 'WordArtVertical', 'EastAsianVertical', 'MongolianVertical', 'WordArtVerticalRightToLeft', 'NotDefined'])
      return false unless text_vertical_type_validator.valid?(@text_vertical_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] text_anchor_type Object to be assigned
    def text_anchor_type=(text_anchor_type)
      validator = EnumAttributeValidator.new('String', ['Top', 'Center', 'Bottom', 'Justified', 'Distributed', 'NotDefined'])
      unless validator.valid?(text_anchor_type)
        fail ArgumentError, 'invalid value for "text_anchor_type", must be one of #{validator.allowable_values}.'
      end
      @text_anchor_type = text_anchor_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] text_vertical_type Object to be assigned
    def text_vertical_type=(text_vertical_type)
      validator = EnumAttributeValidator.new('String', ['Horizontal', 'Vertical', 'Vertical270', 'WordArtVertical', 'EastAsianVertical', 'MongolianVertical', 'WordArtVerticalRightToLeft', 'NotDefined'])
      unless validator.valid?(text_vertical_type)
        fail ArgumentError, 'invalid value for "text_vertical_type", must be one of #{validator.allowable_values}.'
      end
      @text_vertical_type = text_vertical_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          text == o.text &&
          row_span == o.row_span &&
          col_span == o.col_span &&
          margin_top == o.margin_top &&
          margin_right == o.margin_right &&
          margin_left == o.margin_left &&
          margin_bottom == o.margin_bottom &&
          text_anchor_type == o.text_anchor_type &&
          text_vertical_type == o.text_vertical_type &&
          fill_format == o.fill_format &&
          border_top == o.border_top &&
          border_right == o.border_right &&
          border_left == o.border_left &&
          border_bottom == o.border_bottom &&
          border_diagonal_up == o.border_diagonal_up &&
          border_diagonal_down == o.border_diagonal_down
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [text, row_span, col_span, margin_top, margin_right, margin_left, margin_bottom, text_anchor_type, text_vertical_type, fill_format, border_top, border_right, border_left, border_bottom, border_diagonal_up, border_diagonal_down].hash
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
