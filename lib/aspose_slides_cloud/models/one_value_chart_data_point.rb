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
  # One value chart data point.
  class OneValueChartDataPoint < DataPoint
    # Value.
    attr_accessor :value

    # Spreadsheet formula in A1-style.
    attr_accessor :value_formula

    # SetAsTotal. Applied to Waterfall data points only.
    attr_accessor :set_as_total

    # True if the data point shall invert its colors if the value is negative. Applies to bar, column and bubble series.
    attr_accessor :invert_if_negative

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      super.merge({
        :'value' => :'Value',
        :'value_formula' => :'ValueFormula',
        :'set_as_total' => :'SetAsTotal',
        :'invert_if_negative' => :'InvertIfNegative',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'value' => :'Float',
        :'value_formula' => :'String',
        :'set_as_total' => :'BOOLEAN',
        :'invert_if_negative' => :'BOOLEAN',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'Value')
        self.value = attributes[:'Value']
      end

      if attributes.has_key?(:'ValueFormula')
        self.value_formula = attributes[:'ValueFormula']
      end

      if attributes.has_key?(:'SetAsTotal')
        self.set_as_total = attributes[:'SetAsTotal']
      end

      if attributes.has_key?(:'InvertIfNegative')
        self.invert_if_negative = attributes[:'InvertIfNegative']
      end
      self.type = 'OneValue'
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
          value == o.value &&
          value_formula == o.value_formula &&
          set_as_total == o.set_as_total &&
          invert_if_negative == o.invert_if_negative
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [fill_format, effect_format, three_d_format, line_format, marker, type, value, value_formula, set_as_total, invert_if_negative].hash
    end
  end
end
