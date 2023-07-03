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
  # Box element.
  class BoxElement < MathElement
    # Base
    attr_accessor :base

    # Operator emulator
    attr_accessor :operator_emulator

    # No break
    attr_accessor :no_break

    # Differential
    attr_accessor :differential

    # Alignment point
    attr_accessor :alignment_point

    # Explicit break
    attr_accessor :explicit_break

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      super.merge({
        :'base' => :'Base',
        :'operator_emulator' => :'OperatorEmulator',
        :'no_break' => :'NoBreak',
        :'differential' => :'Differential',
        :'alignment_point' => :'AlignmentPoint',
        :'explicit_break' => :'ExplicitBreak',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'base' => :'MathElement',
        :'operator_emulator' => :'BOOLEAN',
        :'no_break' => :'BOOLEAN',
        :'differential' => :'BOOLEAN',
        :'alignment_point' => :'BOOLEAN',
        :'explicit_break' => :'Integer',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'Base')
        self.base = attributes[:'Base']
      end

      if attributes.has_key?(:'OperatorEmulator')
        self.operator_emulator = attributes[:'OperatorEmulator']
      end

      if attributes.has_key?(:'NoBreak')
        self.no_break = attributes[:'NoBreak']
      end

      if attributes.has_key?(:'Differential')
        self.differential = attributes[:'Differential']
      end

      if attributes.has_key?(:'AlignmentPoint')
        self.alignment_point = attributes[:'AlignmentPoint']
      end

      if attributes.has_key?(:'ExplicitBreak')
        self.explicit_break = attributes[:'ExplicitBreak']
      end
      self.type = 'Box'
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
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          base == o.base &&
          operator_emulator == o.operator_emulator &&
          no_break == o.no_break &&
          differential == o.differential &&
          alignment_point == o.alignment_point &&
          explicit_break == o.explicit_break
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [type, base, operator_emulator, no_break, differential, alignment_point, explicit_break].hash
    end
  end
end
