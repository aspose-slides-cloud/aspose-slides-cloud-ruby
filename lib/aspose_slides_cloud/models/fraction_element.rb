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
  # Specifies the fraction object, consisting of a numerator and denominator separated by a fraction bar.
  class FractionElement < MathElement
    # Fraction type
    attr_accessor :fraction_type

    # Numerator
    attr_accessor :numerator

    # Denominator
    attr_accessor :denominator

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      super.merge({
        :'fraction_type' => :'FractionType',
        :'numerator' => :'Numerator',
        :'denominator' => :'Denominator',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'fraction_type' => :'String',
        :'numerator' => :'MathElement',
        :'denominator' => :'MathElement',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'FractionType')
        self.fraction_type = attributes[:'FractionType']
      end

      if attributes.has_key?(:'Numerator')
        self.numerator = attributes[:'Numerator']
      end

      if attributes.has_key?(:'Denominator')
        self.denominator = attributes[:'Denominator']
      end
      self.type = 'Fraction'
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
      fraction_type_validator = EnumAttributeValidator.new('String', ['Bar', 'Skewed', 'Linear', 'NoBar'])
      return false unless fraction_type_validator.valid?(@fraction_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fraction_type Object to be assigned
    def fraction_type=(fraction_type)
      validator = EnumAttributeValidator.new('String', ['Bar', 'Skewed', 'Linear', 'NoBar'])
      unless validator.valid?(fraction_type)
        fail ArgumentError, 'invalid value for "fraction_type", must be one of #{validator.allowable_values}.'
      end
      @fraction_type = fraction_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          fraction_type == o.fraction_type &&
          numerator == o.numerator &&
          denominator == o.denominator
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [type, fraction_type, numerator, denominator].hash
    end
  end
end
