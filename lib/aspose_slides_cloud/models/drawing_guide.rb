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
  # Drawing guide.
  class DrawingGuide < BaseObject
    # Last used view mode.
    attr_accessor :orientation

    # Horizontal bar state.
    attr_accessor :position

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'orientation' => :'Orientation',
        :'position' => :'Position',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'orientation' => :'String',
        :'position' => :'Float',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'Orientation')
        self.orientation = attributes[:'Orientation']
      end

      if attributes.has_key?(:'Position')
        self.position = attributes[:'Position']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @orientation.nil?
        invalid_properties.push('invalid value for "orientation", orientation cannot be nil.')
      end

      if @position.nil?
        invalid_properties.push('invalid value for "position", position cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @orientation.nil?
      orientation_validator = EnumAttributeValidator.new('String', ['Horizontal', 'Vertical'])
      return false unless orientation_validator.valid?(@orientation)
      return false if @position.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] orientation Object to be assigned
    def orientation=(orientation)
      validator = EnumAttributeValidator.new('String', ['Horizontal', 'Vertical'])
      unless validator.valid?(orientation)
        fail ArgumentError, 'invalid value for "orientation", must be one of #{validator.allowable_values}.'
      end
      @orientation = orientation
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          orientation == o.orientation &&
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
      [orientation, position].hash
    end
  end
end
