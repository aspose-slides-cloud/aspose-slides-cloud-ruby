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
  # Bubble chart data point.
  class BubbleChartDataPoint < ScatterChartDataPoint
    # Bubble size.
    attr_accessor :bubble_size

    # Spreadsheet formula in A1-style.
    attr_accessor :bubble_size_formula

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      super.merge({
        :'bubble_size' => :'BubbleSize',
        :'bubble_size_formula' => :'BubbleSizeFormula',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'bubble_size' => :'Float',
        :'bubble_size_formula' => :'String',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'BubbleSize')
        self.bubble_size = attributes[:'BubbleSize']
      end

      if attributes.has_key?(:'BubbleSizeFormula')
        self.bubble_size_formula = attributes[:'BubbleSizeFormula']
      end
      self.type = 'Bubble'
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
          fill_format == o.fill_format &&
          effect_format == o.effect_format &&
          three_d_format == o.three_d_format &&
          line_format == o.line_format &&
          type == o.type &&
          x_value == o.x_value &&
          y_value == o.y_value &&
          x_value_formula == o.x_value_formula &&
          y_value_formula == o.y_value_formula &&
          bubble_size == o.bubble_size &&
          bubble_size_formula == o.bubble_size_formula
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [fill_format, effect_format, three_d_format, line_format, type, x_value, y_value, x_value_formula, y_value_formula, bubble_size, bubble_size_formula].hash
    end
  end
end
