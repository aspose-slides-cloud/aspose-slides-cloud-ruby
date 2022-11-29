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
  # Specifies the Matrix object,
  class MatrixElement < MathElement
    # Hide the placeholders for empty matrix elements
    attr_accessor :hide_placeholders

    # Specifies the vertical justification respect to surrounding text. 
    attr_accessor :base_justification

    # Minimum column width in twips (1/20th of a point)
    attr_accessor :min_column_width

    # The type of horizontal spacing between columns of a matrix.
    attr_accessor :column_gap_rule

    # The value of horizontal spacing between columns of a matrix
    attr_accessor :column_gap

    # The type of vertical spacing between rows of a matrix
    attr_accessor :row_gap_rule

    # The value of vertical spacing between rows of a matrix;             
    attr_accessor :row_gap

    # Matrix items
    attr_accessor :items

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
        :'hide_placeholders' => :'HidePlaceholders',
        :'base_justification' => :'BaseJustification',
        :'min_column_width' => :'MinColumnWidth',
        :'column_gap_rule' => :'ColumnGapRule',
        :'column_gap' => :'ColumnGap',
        :'row_gap_rule' => :'RowGapRule',
        :'row_gap' => :'RowGap',
        :'items' => :'Items',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'hide_placeholders' => :'BOOLEAN',
        :'base_justification' => :'String',
        :'min_column_width' => :'Integer',
        :'column_gap_rule' => :'String',
        :'column_gap' => :'Integer',
        :'row_gap_rule' => :'String',
        :'row_gap' => :'Integer',
        :'items' => :'Array<Array<MathElement>>',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'HidePlaceholders')
        self.hide_placeholders = attributes[:'HidePlaceholders']
      end

      if attributes.has_key?(:'BaseJustification')
        self.base_justification = attributes[:'BaseJustification']
      end

      if attributes.has_key?(:'MinColumnWidth')
        self.min_column_width = attributes[:'MinColumnWidth']
      end

      if attributes.has_key?(:'ColumnGapRule')
        self.column_gap_rule = attributes[:'ColumnGapRule']
      end

      if attributes.has_key?(:'ColumnGap')
        self.column_gap = attributes[:'ColumnGap']
      end

      if attributes.has_key?(:'RowGapRule')
        self.row_gap_rule = attributes[:'RowGapRule']
      end

      if attributes.has_key?(:'RowGap')
        self.row_gap = attributes[:'RowGap']
      end

      if attributes.has_key?(:'Items')
        if (value = attributes[:'Items']).is_a?(Array)
          self.items = value
        end
      end
      self.type = 'Matrix'
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
      base_justification_validator = EnumAttributeValidator.new('String', ['NotDefined', 'Top', 'Center', 'Bottom'])
      return false unless base_justification_validator.valid?(@base_justification)
      column_gap_rule_validator = EnumAttributeValidator.new('String', ['SingleSpacingGap', 'OneAndHalfSpacingGap', 'DoubleSpacingGap', 'Exactly', 'Multiple'])
      return false unless column_gap_rule_validator.valid?(@column_gap_rule)
      row_gap_rule_validator = EnumAttributeValidator.new('String', ['SingleSpacingGap', 'OneAndHalfSpacingGap', 'DoubleSpacingGap', 'Exactly', 'Multiple'])
      return false unless row_gap_rule_validator.valid?(@row_gap_rule)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] base_justification Object to be assigned
    def base_justification=(base_justification)
      validator = EnumAttributeValidator.new('String', ['NotDefined', 'Top', 'Center', 'Bottom'])
      unless validator.valid?(base_justification)
        fail ArgumentError, 'invalid value for "base_justification", must be one of #{validator.allowable_values}.'
      end
      @base_justification = base_justification
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] column_gap_rule Object to be assigned
    def column_gap_rule=(column_gap_rule)
      validator = EnumAttributeValidator.new('String', ['SingleSpacingGap', 'OneAndHalfSpacingGap', 'DoubleSpacingGap', 'Exactly', 'Multiple'])
      unless validator.valid?(column_gap_rule)
        fail ArgumentError, 'invalid value for "column_gap_rule", must be one of #{validator.allowable_values}.'
      end
      @column_gap_rule = column_gap_rule
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] row_gap_rule Object to be assigned
    def row_gap_rule=(row_gap_rule)
      validator = EnumAttributeValidator.new('String', ['SingleSpacingGap', 'OneAndHalfSpacingGap', 'DoubleSpacingGap', 'Exactly', 'Multiple'])
      unless validator.valid?(row_gap_rule)
        fail ArgumentError, 'invalid value for "row_gap_rule", must be one of #{validator.allowable_values}.'
      end
      @row_gap_rule = row_gap_rule
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          hide_placeholders == o.hide_placeholders &&
          base_justification == o.base_justification &&
          min_column_width == o.min_column_width &&
          column_gap_rule == o.column_gap_rule &&
          column_gap == o.column_gap &&
          row_gap_rule == o.row_gap_rule &&
          row_gap == o.row_gap &&
          items == o.items
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [type, hide_placeholders, base_justification, min_column_width, column_gap_rule, column_gap, row_gap_rule, row_gap, items].hash
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
