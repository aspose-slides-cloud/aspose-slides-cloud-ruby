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
  # Specifies the bar function, consisting of a base argument and an overbar or underbar
  class BarElement < MathElement
    # Base
    attr_accessor :base

    # Position of the bar line.             
    attr_accessor :position

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      super.merge({
        :'base' => :'Base',
        :'position' => :'Position',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'base' => :'MathElement',
        :'position' => :'String',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'Base')
        self.base = attributes[:'Base']
      end

      if attributes.has_key?(:'Position')
        self.position = attributes[:'Position']
      end
      self.type = 'Bar'
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
      position_validator = EnumAttributeValidator.new('String', ['NotDefined', 'Top', 'Bottom'])
      return false unless position_validator.valid?(@position)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] position Object to be assigned
    def position=(position)
      validator = EnumAttributeValidator.new('String', ['NotDefined', 'Top', 'Bottom'])
      unless validator.valid?(position)
        fail ArgumentError, 'invalid value for "position", must be one of #{validator.allowable_values}.'
      end
      @position = position
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          base == o.base &&
          position == o.position
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [type, base, position].hash
    end
  end
end
