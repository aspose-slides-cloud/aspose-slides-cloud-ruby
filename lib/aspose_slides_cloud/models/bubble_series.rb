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
  # A bubble series.
  class BubbleSeries < XYSeries
    # Gets or sets the values.
    attr_accessor :data_points

    # The number format for the series bubble sizes.
    attr_accessor :number_format_of_bubble_sizes

    # Data source type for Bubble size values.
    attr_accessor :data_source_for_bubble_size_values

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      super.merge({
        :'data_points' => :'DataPoints',
        :'number_format_of_bubble_sizes' => :'NumberFormatOfBubbleSizes',
        :'data_source_for_bubble_size_values' => :'DataSourceForBubbleSizeValues',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'data_points' => :'Array<BubbleChartDataPoint>',
        :'number_format_of_bubble_sizes' => :'String',
        :'data_source_for_bubble_size_values' => :'DataSource',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'DataPoints')
        if (value = attributes[:'DataPoints']).is_a?(Array)
          self.data_points = value
        end
      end

      if attributes.has_key?(:'NumberFormatOfBubbleSizes')
        self.number_format_of_bubble_sizes = attributes[:'NumberFormatOfBubbleSizes']
      end

      if attributes.has_key?(:'DataSourceForBubbleSizeValues')
        self.data_source_for_bubble_size_values = attributes[:'DataSourceForBubbleSizeValues']
      end
      self.data_point_type = 'Bubble'
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
          name == o.name &&
          data_source_for_series_name == o.data_source_for_series_name &&
          is_color_varied == o.is_color_varied &&
          inverted_solid_fill_color == o.inverted_solid_fill_color &&
          smooth == o.smooth &&
          plot_on_second_axis == o.plot_on_second_axis &&
          order == o.order &&
          invert_if_negative == o.invert_if_negative &&
          explosion == o.explosion &&
          marker == o.marker &&
          fill_format == o.fill_format &&
          effect_format == o.effect_format &&
          line_format == o.line_format &&
          data_point_type == o.data_point_type &&
          number_format_of_y_values == o.number_format_of_y_values &&
          number_format_of_x_values == o.number_format_of_x_values &&
          data_source_for_x_values == o.data_source_for_x_values &&
          data_source_for_y_values == o.data_source_for_y_values &&
          data_points == o.data_points &&
          number_format_of_bubble_sizes == o.number_format_of_bubble_sizes &&
          data_source_for_bubble_size_values == o.data_source_for_bubble_size_values
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [type, name, data_source_for_series_name, is_color_varied, inverted_solid_fill_color, smooth, plot_on_second_axis, order, invert_if_negative, explosion, marker, fill_format, effect_format, line_format, data_point_type, number_format_of_y_values, number_format_of_x_values, data_source_for_x_values, data_source_for_y_values, data_points, number_format_of_bubble_sizes, data_source_for_bubble_size_values].hash
    end
  end
end
