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
  # Scatter chart (two-dimensional) data point
  class ScatterChartDataPoint < DataPoint
    # X-value
    attr_accessor :x_value

    # Y-value
    attr_accessor :y_value

    # Spreadsheet formula in A1-style.
    attr_accessor :x_value_formula

    # Spreadsheet formula in A1-style.
    attr_accessor :y_value_formula

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      super.merge({
        :'x_value' => :'XValue',
        :'y_value' => :'YValue',
        :'x_value_formula' => :'XValueFormula',
        :'y_value_formula' => :'YValueFormula',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'x_value' => :'Float',
        :'y_value' => :'Float',
        :'x_value_formula' => :'String',
        :'y_value_formula' => :'String',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'XValue')
        self.x_value = attributes[:'XValue']
      end

      if attributes.has_key?(:'YValue')
        self.y_value = attributes[:'YValue']
      end

      if attributes.has_key?(:'XValueFormula')
        self.x_value_formula = attributes[:'XValueFormula']
      end

      if attributes.has_key?(:'YValueFormula')
        self.y_value_formula = attributes[:'YValueFormula']
      end
      self.type = 'Scatter'
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
          marker == o.marker &&
          type == o.type &&
          x_value == o.x_value &&
          y_value == o.y_value &&
          x_value_formula == o.x_value_formula &&
          y_value_formula == o.y_value_formula
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [fill_format, effect_format, three_d_format, line_format, marker, type, x_value, y_value, x_value_formula, y_value_formula].hash
    end
  end
end
