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
  # Represents preset shadow effect 
  class PresetShadowEffect < BaseObject
    # direction
    attr_accessor :direction

    # distance
    attr_accessor :distance

    # preset
    attr_accessor :preset

    # shadow color
    attr_accessor :shadow_color

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'direction' => :'Direction',
        :'distance' => :'Distance',
        :'preset' => :'Preset',
        :'shadow_color' => :'ShadowColor',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'direction' => :'Float',
        :'distance' => :'Float',
        :'preset' => :'String',
        :'shadow_color' => :'String',
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

      if attributes.has_key?(:'Distance')
        self.distance = attributes[:'Distance']
      end

      if attributes.has_key?(:'Preset')
        self.preset = attributes[:'Preset']
      end

      if attributes.has_key?(:'ShadowColor')
        self.shadow_color = attributes[:'ShadowColor']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @direction.nil?
        invalid_properties.push('invalid value for "direction", direction cannot be nil.')
      end

      if @distance.nil?
        invalid_properties.push('invalid value for "distance", distance cannot be nil.')
      end

      if @preset.nil?
        invalid_properties.push('invalid value for "preset", preset cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @direction.nil?
      return false if @distance.nil?
      return false if @preset.nil?
      preset_validator = EnumAttributeValidator.new('String', ['TopLeftDropShadow', 'TopLeftLargeDropShadow', 'BackLeftLongPerspectiveShadow', 'BackRightLongPerspectiveShadow', 'TopLeftDoubleDropShadow', 'BottomRightSmallDropShadow', 'FrontLeftLongPerspectiveShadow', 'FrontRightLongPerspectiveShadow', 'OuterBoxShadow3D', 'InnerBoxShadow3D', 'BackCenterPerspectiveShadow', 'TopRightDropShadow', 'FrontBottomShadow', 'BackLeftPerspectiveShadow', 'BackRightPerspectiveShadow', 'BottomLeftDropShadow', 'BottomRightDropShadow', 'FrontLeftPerspectiveShadow', 'FrontRightPerspectiveShadow', 'TopLeftSmallDropShadow'])
      return false unless preset_validator.valid?(@preset)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] preset Object to be assigned
    def preset=(preset)
      validator = EnumAttributeValidator.new('String', ['TopLeftDropShadow', 'TopLeftLargeDropShadow', 'BackLeftLongPerspectiveShadow', 'BackRightLongPerspectiveShadow', 'TopLeftDoubleDropShadow', 'BottomRightSmallDropShadow', 'FrontLeftLongPerspectiveShadow', 'FrontRightLongPerspectiveShadow', 'OuterBoxShadow3D', 'InnerBoxShadow3D', 'BackCenterPerspectiveShadow', 'TopRightDropShadow', 'FrontBottomShadow', 'BackLeftPerspectiveShadow', 'BackRightPerspectiveShadow', 'BottomLeftDropShadow', 'BottomRightDropShadow', 'FrontLeftPerspectiveShadow', 'FrontRightPerspectiveShadow', 'TopLeftSmallDropShadow'])
      unless validator.valid?(preset)
        fail ArgumentError, 'invalid value for "preset", must be one of #{validator.allowable_values}.'
      end
      @preset = preset
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          direction == o.direction &&
          distance == o.distance &&
          preset == o.preset &&
          shadow_color == o.shadow_color
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [direction, distance, preset, shadow_color].hash
    end
  end
end
