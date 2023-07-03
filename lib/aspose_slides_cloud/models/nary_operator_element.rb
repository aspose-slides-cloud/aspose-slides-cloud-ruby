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
  # Specifies an N-ary mathematical object, such as Summation and Integral.
  class NaryOperatorElement < MathElement
    # Base argument
    attr_accessor :base

    # Subscript argument
    attr_accessor :subscript

    # Superscript argument
    attr_accessor :superscript

    # Nary Operator Character
    attr_accessor :operator

    # The location of limits (subscript and superscript)
    attr_accessor :limit_location

    # Operator Character grows vertically to match its operand height
    attr_accessor :grow_to_match_operand_height

    # Hide Subscript
    attr_accessor :hide_subscript

    # Hide Superscript
    attr_accessor :hide_superscript

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      super.merge({
        :'base' => :'Base',
        :'subscript' => :'Subscript',
        :'superscript' => :'Superscript',
        :'operator' => :'Operator',
        :'limit_location' => :'LimitLocation',
        :'grow_to_match_operand_height' => :'GrowToMatchOperandHeight',
        :'hide_subscript' => :'HideSubscript',
        :'hide_superscript' => :'HideSuperscript',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'base' => :'MathElement',
        :'subscript' => :'MathElement',
        :'superscript' => :'MathElement',
        :'operator' => :'String',
        :'limit_location' => :'String',
        :'grow_to_match_operand_height' => :'BOOLEAN',
        :'hide_subscript' => :'BOOLEAN',
        :'hide_superscript' => :'BOOLEAN',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'Base')
        self.base = attributes[:'Base']
      end

      if attributes.has_key?(:'Subscript')
        self.subscript = attributes[:'Subscript']
      end

      if attributes.has_key?(:'Superscript')
        self.superscript = attributes[:'Superscript']
      end

      if attributes.has_key?(:'Operator')
        self.operator = attributes[:'Operator']
      end

      if attributes.has_key?(:'LimitLocation')
        self.limit_location = attributes[:'LimitLocation']
      end

      if attributes.has_key?(:'GrowToMatchOperandHeight')
        self.grow_to_match_operand_height = attributes[:'GrowToMatchOperandHeight']
      end

      if attributes.has_key?(:'HideSubscript')
        self.hide_subscript = attributes[:'HideSubscript']
      end

      if attributes.has_key?(:'HideSuperscript')
        self.hide_superscript = attributes[:'HideSuperscript']
      end
      self.type = 'NaryOperator'
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
      limit_location_validator = EnumAttributeValidator.new('String', ['NotDefined', 'UnderOver', 'SubscriptSuperscript'])
      return false unless limit_location_validator.valid?(@limit_location)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] limit_location Object to be assigned
    def limit_location=(limit_location)
      validator = EnumAttributeValidator.new('String', ['NotDefined', 'UnderOver', 'SubscriptSuperscript'])
      unless validator.valid?(limit_location)
        fail ArgumentError, 'invalid value for "limit_location", must be one of #{validator.allowable_values}.'
      end
      @limit_location = limit_location
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          base == o.base &&
          subscript == o.subscript &&
          superscript == o.superscript &&
          operator == o.operator &&
          limit_location == o.limit_location &&
          grow_to_match_operand_height == o.grow_to_match_operand_height &&
          hide_subscript == o.hide_subscript &&
          hide_superscript == o.hide_superscript
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [type, base, subscript, superscript, operator, limit_location, grow_to_match_operand_height, hide_subscript, hide_superscript].hash
    end
  end
end
