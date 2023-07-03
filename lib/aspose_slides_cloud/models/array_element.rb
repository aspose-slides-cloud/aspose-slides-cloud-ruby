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
  # An array of elements.
  class ArrayElement < MathElement
    # Arguments
    attr_accessor :arguments

    # Specifies alignment of the array relative to surrounding text
    attr_accessor :base_justification

    # Maximum Distribution
    attr_accessor :maximum_distribution

    # Object Distribution
    attr_accessor :object_distribution

    # The type of vertical spacing between array elements
    attr_accessor :row_spacing_rule

    # Spacing between rows of an array
    attr_accessor :row_spacing

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      super.merge({
        :'arguments' => :'Arguments',
        :'base_justification' => :'BaseJustification',
        :'maximum_distribution' => :'MaximumDistribution',
        :'object_distribution' => :'ObjectDistribution',
        :'row_spacing_rule' => :'RowSpacingRule',
        :'row_spacing' => :'RowSpacing',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'arguments' => :'Array<MathElement>',
        :'base_justification' => :'String',
        :'maximum_distribution' => :'BOOLEAN',
        :'object_distribution' => :'BOOLEAN',
        :'row_spacing_rule' => :'String',
        :'row_spacing' => :'Integer',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'Arguments')
        if (value = attributes[:'Arguments']).is_a?(Array)
          self.arguments = value
        end
      end

      if attributes.has_key?(:'BaseJustification')
        self.base_justification = attributes[:'BaseJustification']
      end

      if attributes.has_key?(:'MaximumDistribution')
        self.maximum_distribution = attributes[:'MaximumDistribution']
      end

      if attributes.has_key?(:'ObjectDistribution')
        self.object_distribution = attributes[:'ObjectDistribution']
      end

      if attributes.has_key?(:'RowSpacingRule')
        self.row_spacing_rule = attributes[:'RowSpacingRule']
      end

      if attributes.has_key?(:'RowSpacing')
        self.row_spacing = attributes[:'RowSpacing']
      end
      self.type = 'Array'
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
      row_spacing_rule_validator = EnumAttributeValidator.new('String', ['SingleLineGap', 'OneAndAHalfLineGap', 'TwoLineGap', 'Exactly', 'Multiple'])
      return false unless row_spacing_rule_validator.valid?(@row_spacing_rule)
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
    # @param [Object] row_spacing_rule Object to be assigned
    def row_spacing_rule=(row_spacing_rule)
      validator = EnumAttributeValidator.new('String', ['SingleLineGap', 'OneAndAHalfLineGap', 'TwoLineGap', 'Exactly', 'Multiple'])
      unless validator.valid?(row_spacing_rule)
        fail ArgumentError, 'invalid value for "row_spacing_rule", must be one of #{validator.allowable_values}.'
      end
      @row_spacing_rule = row_spacing_rule
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          arguments == o.arguments &&
          base_justification == o.base_justification &&
          maximum_distribution == o.maximum_distribution &&
          object_distribution == o.object_distribution &&
          row_spacing_rule == o.row_spacing_rule &&
          row_spacing == o.row_spacing
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [type, arguments, base_justification, maximum_distribution, object_distribution, row_spacing_rule, row_spacing].hash
    end
  end
end
