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
  # Rectangular or some other border around the MathElement. 
  class BorderBoxElement < MathElement
    # Base
    attr_accessor :base

    # Hide Top Edge
    attr_accessor :hide_top

    # Hide Bottom Edge
    attr_accessor :hide_bottom

    # Hide Left Edge
    attr_accessor :hide_left

    # Hide Right Edge
    attr_accessor :hide_right

    # Strikethrough Horizontal
    attr_accessor :strikethrough_horizontal

    # Strikethrough Vertical
    attr_accessor :strikethrough_vertical

    # Strikethrough Bottom-Left to Top-Right
    attr_accessor :strikethrough_bottom_left_to_top_right

    # Strikethrough Top-Left to Bottom-Right.
    attr_accessor :strikethrough_top_left_to_bottom_right

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      super.merge({
        :'base' => :'Base',
        :'hide_top' => :'HideTop',
        :'hide_bottom' => :'HideBottom',
        :'hide_left' => :'HideLeft',
        :'hide_right' => :'HideRight',
        :'strikethrough_horizontal' => :'StrikethroughHorizontal',
        :'strikethrough_vertical' => :'StrikethroughVertical',
        :'strikethrough_bottom_left_to_top_right' => :'StrikethroughBottomLeftToTopRight',
        :'strikethrough_top_left_to_bottom_right' => :'StrikethroughTopLeftToBottomRight',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'base' => :'MathElement',
        :'hide_top' => :'BOOLEAN',
        :'hide_bottom' => :'BOOLEAN',
        :'hide_left' => :'BOOLEAN',
        :'hide_right' => :'BOOLEAN',
        :'strikethrough_horizontal' => :'BOOLEAN',
        :'strikethrough_vertical' => :'BOOLEAN',
        :'strikethrough_bottom_left_to_top_right' => :'BOOLEAN',
        :'strikethrough_top_left_to_bottom_right' => :'BOOLEAN',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'Base')
        self.base = attributes[:'Base']
      end

      if attributes.has_key?(:'HideTop')
        self.hide_top = attributes[:'HideTop']
      end

      if attributes.has_key?(:'HideBottom')
        self.hide_bottom = attributes[:'HideBottom']
      end

      if attributes.has_key?(:'HideLeft')
        self.hide_left = attributes[:'HideLeft']
      end

      if attributes.has_key?(:'HideRight')
        self.hide_right = attributes[:'HideRight']
      end

      if attributes.has_key?(:'StrikethroughHorizontal')
        self.strikethrough_horizontal = attributes[:'StrikethroughHorizontal']
      end

      if attributes.has_key?(:'StrikethroughVertical')
        self.strikethrough_vertical = attributes[:'StrikethroughVertical']
      end

      if attributes.has_key?(:'StrikethroughBottomLeftToTopRight')
        self.strikethrough_bottom_left_to_top_right = attributes[:'StrikethroughBottomLeftToTopRight']
      end

      if attributes.has_key?(:'StrikethroughTopLeftToBottomRight')
        self.strikethrough_top_left_to_bottom_right = attributes[:'StrikethroughTopLeftToBottomRight']
      end
      self.type = 'BorderBox'
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
          hide_top == o.hide_top &&
          hide_bottom == o.hide_bottom &&
          hide_left == o.hide_left &&
          hide_right == o.hide_right &&
          strikethrough_horizontal == o.strikethrough_horizontal &&
          strikethrough_vertical == o.strikethrough_vertical &&
          strikethrough_bottom_left_to_top_right == o.strikethrough_bottom_left_to_top_right &&
          strikethrough_top_left_to_bottom_right == o.strikethrough_top_left_to_bottom_right
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [type, base, hide_top, hide_bottom, hide_left, hide_right, strikethrough_horizontal, strikethrough_vertical, strikethrough_bottom_left_to_top_right, strikethrough_top_left_to_bottom_right].hash
    end
  end
end
