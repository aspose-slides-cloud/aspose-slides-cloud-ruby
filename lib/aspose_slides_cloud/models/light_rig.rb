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
  # Light rig
  class LightRig < BaseObject
    # Light direction
    attr_accessor :direction

    # Light type
    attr_accessor :light_type

    # XRotation
    attr_accessor :x_rotation

    # YRotation
    attr_accessor :y_rotation

    # ZRotation
    attr_accessor :z_rotation

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'direction' => :'Direction',
        :'light_type' => :'LightType',
        :'x_rotation' => :'XRotation',
        :'y_rotation' => :'YRotation',
        :'z_rotation' => :'ZRotation',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'direction' => :'String',
        :'light_type' => :'String',
        :'x_rotation' => :'Float',
        :'y_rotation' => :'Float',
        :'z_rotation' => :'Float',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'Direction')
        self.direction = attributes[:'Direction']
      end

      if attributes.has_key?(:'LightType')
        self.light_type = attributes[:'LightType']
      end

      if attributes.has_key?(:'XRotation')
        self.x_rotation = attributes[:'XRotation']
      end

      if attributes.has_key?(:'YRotation')
        self.y_rotation = attributes[:'YRotation']
      end

      if attributes.has_key?(:'ZRotation')
        self.z_rotation = attributes[:'ZRotation']
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
      direction_validator = EnumAttributeValidator.new('String', ['TopLeft', 'Top', 'TopRight', 'Right', 'BottomRight', 'Bottom', 'BottomLeft', 'Left', 'NotDefined'])
      return false unless direction_validator.valid?(@direction)
      light_type_validator = EnumAttributeValidator.new('String', ['Balanced', 'BrightRoom', 'Chilly', 'Contrasting', 'Flat', 'Flood', 'Freezing', 'Glow', 'Harsh', 'LegacyFlat1', 'LegacyFlat2', 'LegacyFlat3', 'LegacyFlat4', 'LegacyHarsh1', 'LegacyHarsh2', 'LegacyHarsh3', 'LegacyHarsh4', 'LegacyNormal1', 'LegacyNormal2', 'LegacyNormal3', 'LegacyNormal4', 'Morning', 'Soft', 'Sunrise', 'Sunset', 'ThreePt', 'TwoPt', 'NotDefined'])
      return false unless light_type_validator.valid?(@light_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] direction Object to be assigned
    def direction=(direction)
      validator = EnumAttributeValidator.new('String', ['TopLeft', 'Top', 'TopRight', 'Right', 'BottomRight', 'Bottom', 'BottomLeft', 'Left', 'NotDefined'])
      unless validator.valid?(direction)
        fail ArgumentError, 'invalid value for "direction", must be one of #{validator.allowable_values}.'
      end
      @direction = direction
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] light_type Object to be assigned
    def light_type=(light_type)
      validator = EnumAttributeValidator.new('String', ['Balanced', 'BrightRoom', 'Chilly', 'Contrasting', 'Flat', 'Flood', 'Freezing', 'Glow', 'Harsh', 'LegacyFlat1', 'LegacyFlat2', 'LegacyFlat3', 'LegacyFlat4', 'LegacyHarsh1', 'LegacyHarsh2', 'LegacyHarsh3', 'LegacyHarsh4', 'LegacyNormal1', 'LegacyNormal2', 'LegacyNormal3', 'LegacyNormal4', 'Morning', 'Soft', 'Sunrise', 'Sunset', 'ThreePt', 'TwoPt', 'NotDefined'])
      unless validator.valid?(light_type)
        fail ArgumentError, 'invalid value for "light_type", must be one of #{validator.allowable_values}.'
      end
      @light_type = light_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          direction == o.direction &&
          light_type == o.light_type &&
          x_rotation == o.x_rotation &&
          y_rotation == o.y_rotation &&
          z_rotation == o.z_rotation
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [direction, light_type, x_rotation, y_rotation, z_rotation].hash
    end
  end
end
