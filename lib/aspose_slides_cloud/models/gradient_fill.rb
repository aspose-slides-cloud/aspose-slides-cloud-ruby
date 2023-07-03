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
  # Represents gradient fill format
  class GradientFill < FillFormat
    # Gradient style.
    attr_accessor :direction

    # Gradient shape.
    attr_accessor :shape

    # Gradient stops.
    attr_accessor :stops

    # Gradient angle.
    attr_accessor :linear_angle

    # True if the gradient is scaled.
    attr_accessor :is_scaled

    # Gradient flipping mode.
    attr_accessor :tile_flip

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      super.merge({
        :'direction' => :'Direction',
        :'shape' => :'Shape',
        :'stops' => :'Stops',
        :'linear_angle' => :'LinearAngle',
        :'is_scaled' => :'IsScaled',
        :'tile_flip' => :'TileFlip',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'direction' => :'String',
        :'shape' => :'String',
        :'stops' => :'Array<GradientFillStop>',
        :'linear_angle' => :'Float',
        :'is_scaled' => :'BOOLEAN',
        :'tile_flip' => :'String',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'Direction')
        self.direction = attributes[:'Direction']
      end

      if attributes.has_key?(:'Shape')
        self.shape = attributes[:'Shape']
      end

      if attributes.has_key?(:'Stops')
        if (value = attributes[:'Stops']).is_a?(Array)
          self.stops = value
        end
      end

      if attributes.has_key?(:'LinearAngle')
        self.linear_angle = attributes[:'LinearAngle']
      end

      if attributes.has_key?(:'IsScaled')
        self.is_scaled = attributes[:'IsScaled']
      end

      if attributes.has_key?(:'TileFlip')
        self.tile_flip = attributes[:'TileFlip']
      end
      self.type = 'Gradient'
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = super
      if @direction.nil?
        invalid_properties.push('invalid value for "direction", direction cannot be nil.')
      end

      if @shape.nil?
        invalid_properties.push('invalid value for "shape", shape cannot be nil.')
      end

      if @linear_angle.nil?
        invalid_properties.push('invalid value for "linear_angle", linear_angle cannot be nil.')
      end

      if @is_scaled.nil?
        invalid_properties.push('invalid value for "is_scaled", is_scaled cannot be nil.')
      end

      if @tile_flip.nil?
        invalid_properties.push('invalid value for "tile_flip", tile_flip cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !super
      return false if @direction.nil?
      direction_validator = EnumAttributeValidator.new('String', ['FromCorner1', 'FromCorner2', 'FromCorner3', 'FromCorner4', 'FromCenter', 'NotDefined'])
      return false unless direction_validator.valid?(@direction)
      return false if @shape.nil?
      shape_validator = EnumAttributeValidator.new('String', ['Linear', 'Rectangle', 'Radial', 'Path', 'NotDefined'])
      return false unless shape_validator.valid?(@shape)
      return false if @linear_angle.nil?
      return false if @is_scaled.nil?
      return false if @tile_flip.nil?
      tile_flip_validator = EnumAttributeValidator.new('String', ['NoFlip', 'FlipX', 'FlipY', 'FlipBoth', 'NotDefined'])
      return false unless tile_flip_validator.valid?(@tile_flip)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] direction Object to be assigned
    def direction=(direction)
      validator = EnumAttributeValidator.new('String', ['FromCorner1', 'FromCorner2', 'FromCorner3', 'FromCorner4', 'FromCenter', 'NotDefined'])
      unless validator.valid?(direction)
        fail ArgumentError, 'invalid value for "direction", must be one of #{validator.allowable_values}.'
      end
      @direction = direction
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shape Object to be assigned
    def shape=(shape)
      validator = EnumAttributeValidator.new('String', ['Linear', 'Rectangle', 'Radial', 'Path', 'NotDefined'])
      unless validator.valid?(shape)
        fail ArgumentError, 'invalid value for "shape", must be one of #{validator.allowable_values}.'
      end
      @shape = shape
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tile_flip Object to be assigned
    def tile_flip=(tile_flip)
      validator = EnumAttributeValidator.new('String', ['NoFlip', 'FlipX', 'FlipY', 'FlipBoth', 'NotDefined'])
      unless validator.valid?(tile_flip)
        fail ArgumentError, 'invalid value for "tile_flip", must be one of #{validator.allowable_values}.'
      end
      @tile_flip = tile_flip
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          direction == o.direction &&
          shape == o.shape &&
          stops == o.stops &&
          linear_angle == o.linear_angle &&
          is_scaled == o.is_scaled &&
          tile_flip == o.tile_flip
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [type, direction, shape, stops, linear_angle, is_scaled, tile_flip].hash
    end
  end
end
