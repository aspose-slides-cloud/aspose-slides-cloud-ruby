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
  # Delimiter element
  class DelimiterElement < MathElement
    # Arguments
    attr_accessor :arguments

    # Beginning character
    attr_accessor :beginning_character

    # Separator character
    attr_accessor :separator_character

    # Ending character
    attr_accessor :ending_character

    # Grow to match operand height
    attr_accessor :grow_to_match_operand_height

    # Delimiter shape
    attr_accessor :delimiter_shape

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      super.merge({
        :'arguments' => :'Arguments',
        :'beginning_character' => :'BeginningCharacter',
        :'separator_character' => :'SeparatorCharacter',
        :'ending_character' => :'EndingCharacter',
        :'grow_to_match_operand_height' => :'GrowToMatchOperandHeight',
        :'delimiter_shape' => :'DelimiterShape',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'arguments' => :'Array<MathElement>',
        :'beginning_character' => :'String',
        :'separator_character' => :'String',
        :'ending_character' => :'String',
        :'grow_to_match_operand_height' => :'BOOLEAN',
        :'delimiter_shape' => :'String',
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

      if attributes.has_key?(:'BeginningCharacter')
        self.beginning_character = attributes[:'BeginningCharacter']
      end

      if attributes.has_key?(:'SeparatorCharacter')
        self.separator_character = attributes[:'SeparatorCharacter']
      end

      if attributes.has_key?(:'EndingCharacter')
        self.ending_character = attributes[:'EndingCharacter']
      end

      if attributes.has_key?(:'GrowToMatchOperandHeight')
        self.grow_to_match_operand_height = attributes[:'GrowToMatchOperandHeight']
      end

      if attributes.has_key?(:'DelimiterShape')
        self.delimiter_shape = attributes[:'DelimiterShape']
      end
      self.type = 'Delimiter'
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
      delimiter_shape_validator = EnumAttributeValidator.new('String', ['Centered', 'Match'])
      return false unless delimiter_shape_validator.valid?(@delimiter_shape)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] delimiter_shape Object to be assigned
    def delimiter_shape=(delimiter_shape)
      validator = EnumAttributeValidator.new('String', ['Centered', 'Match'])
      unless validator.valid?(delimiter_shape)
        fail ArgumentError, 'invalid value for "delimiter_shape", must be one of #{validator.allowable_values}.'
      end
      @delimiter_shape = delimiter_shape
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          arguments == o.arguments &&
          beginning_character == o.beginning_character &&
          separator_character == o.separator_character &&
          ending_character == o.ending_character &&
          grow_to_match_operand_height == o.grow_to_match_operand_height &&
          delimiter_shape == o.delimiter_shape
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [type, arguments, beginning_character, separator_character, ending_character, grow_to_match_operand_height, delimiter_shape].hash
    end
  end
end
