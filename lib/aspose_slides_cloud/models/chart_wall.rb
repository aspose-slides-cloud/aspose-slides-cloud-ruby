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
  # Represents a chart wall
  class ChartWall < BaseObject
    # Get or sets the fill format.
    attr_accessor :fill_format

    # Get or sets the effect format.
    attr_accessor :effect_format

    # Get or sets the line format.
    attr_accessor :line_format

    # Get or sets wall thickness as a percentage of the largest dimension of the plot volume.
    attr_accessor :thickness

    # Get or sets mode of bar picture filling.
    attr_accessor :picture_type

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'fill_format' => :'FillFormat',
        :'effect_format' => :'EffectFormat',
        :'line_format' => :'LineFormat',
        :'thickness' => :'Thickness',
        :'picture_type' => :'PictureType',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'fill_format' => :'FillFormat',
        :'effect_format' => :'EffectFormat',
        :'line_format' => :'LineFormat',
        :'thickness' => :'Integer',
        :'picture_type' => :'String',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'FillFormat')
        self.fill_format = attributes[:'FillFormat']
      end

      if attributes.has_key?(:'EffectFormat')
        self.effect_format = attributes[:'EffectFormat']
      end

      if attributes.has_key?(:'LineFormat')
        self.line_format = attributes[:'LineFormat']
      end

      if attributes.has_key?(:'Thickness')
        self.thickness = attributes[:'Thickness']
      end

      if attributes.has_key?(:'PictureType')
        self.picture_type = attributes[:'PictureType']
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
      picture_type_validator = EnumAttributeValidator.new('String', ['Stack', 'StackScale', 'Stretch', 'NotDefined'])
      return false unless picture_type_validator.valid?(@picture_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] picture_type Object to be assigned
    def picture_type=(picture_type)
      validator = EnumAttributeValidator.new('String', ['Stack', 'StackScale', 'Stretch', 'NotDefined'])
      unless validator.valid?(picture_type)
        fail ArgumentError, 'invalid value for "picture_type", must be one of #{validator.allowable_values}.'
      end
      @picture_type = picture_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          fill_format == o.fill_format &&
          effect_format == o.effect_format &&
          line_format == o.line_format &&
          thickness == o.thickness &&
          picture_type == o.picture_type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [fill_format, effect_format, line_format, thickness, picture_type].hash
    end
  end
end
