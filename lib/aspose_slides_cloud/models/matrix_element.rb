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
  end
end
