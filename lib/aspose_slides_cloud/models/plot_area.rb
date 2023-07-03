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
  # Represents the plot area
  class PlotArea < BaseObject
    # the X location
    attr_accessor :x

    # the Y location
    attr_accessor :y

    # Width
    attr_accessor :width

    # Height
    attr_accessor :height

    # If layout of the plot area is defined manually specifies whether to layout the plot area by its inside (not including axis and axis labels) or outside.
    attr_accessor :layout_target_type

    # Get or sets the fill format.
    attr_accessor :fill_format

    # Get or sets the effect format.
    attr_accessor :effect_format

    # Get or sets the line format.
    attr_accessor :line_format

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'x' => :'X',
        :'y' => :'Y',
        :'width' => :'Width',
        :'height' => :'Height',
        :'layout_target_type' => :'LayoutTargetType',
        :'fill_format' => :'FillFormat',
        :'effect_format' => :'EffectFormat',
        :'line_format' => :'LineFormat',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'x' => :'Float',
        :'y' => :'Float',
        :'width' => :'Float',
        :'height' => :'Float',
        :'layout_target_type' => :'String',
        :'fill_format' => :'FillFormat',
        :'effect_format' => :'EffectFormat',
        :'line_format' => :'LineFormat',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'X')
        self.x = attributes[:'X']
      end

      if attributes.has_key?(:'Y')
        self.y = attributes[:'Y']
      end

      if attributes.has_key?(:'Width')
        self.width = attributes[:'Width']
      end

      if attributes.has_key?(:'Height')
        self.height = attributes[:'Height']
      end

      if attributes.has_key?(:'LayoutTargetType')
        self.layout_target_type = attributes[:'LayoutTargetType']
      end

      if attributes.has_key?(:'FillFormat')
        self.fill_format = attributes[:'FillFormat']
      end

      if attributes.has_key?(:'EffectFormat')
        self.effect_format = attributes[:'EffectFormat']
      end

      if attributes.has_key?(:'LineFormat')
        self.line_format = attributes[:'LineFormat']
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
      layout_target_type_validator = EnumAttributeValidator.new('String', ['Inner', 'Outer'])
      return false unless layout_target_type_validator.valid?(@layout_target_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] layout_target_type Object to be assigned
    def layout_target_type=(layout_target_type)
      validator = EnumAttributeValidator.new('String', ['Inner', 'Outer'])
      unless validator.valid?(layout_target_type)
        fail ArgumentError, 'invalid value for "layout_target_type", must be one of #{validator.allowable_values}.'
      end
      @layout_target_type = layout_target_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          x == o.x &&
          y == o.y &&
          width == o.width &&
          height == o.height &&
          layout_target_type == o.layout_target_type &&
          fill_format == o.fill_format &&
          effect_format == o.effect_format &&
          line_format == o.line_format
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [x, y, width, height, layout_target_type, fill_format, effect_format, line_format].hash
    end
  end
end
