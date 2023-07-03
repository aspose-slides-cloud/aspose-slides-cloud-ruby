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
  # One value series.
  class OneValueSeries < Series
    # Gets or sets the values.
    attr_accessor :data_points

    # The number format for the series values.
    attr_accessor :number_format_of_values

    # Data source type for values.
    attr_accessor :data_source_for_values

    # True if inner points are shown. Applied to Waterfall series only.
    attr_accessor :show_connector_lines

    # Quartile method. Applied to BoxAndWhisker series only.
    attr_accessor :quartile_method

    # True if inner points are shown. Applied to BoxAndWhisker series only.
    attr_accessor :show_inner_points

    # True if mean line is shown. Applied to BoxAndWhisker series only.
    attr_accessor :show_mean_line

    # True if mean markers are shown. Applied to BoxAndWhisker series only.
    attr_accessor :show_mean_markers

    # True if outlier points are shown. Applied to BoxAndWhisker series only.
    attr_accessor :show_outlier_points

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      super.merge({
        :'data_points' => :'DataPoints',
        :'number_format_of_values' => :'NumberFormatOfValues',
        :'data_source_for_values' => :'DataSourceForValues',
        :'show_connector_lines' => :'ShowConnectorLines',
        :'quartile_method' => :'QuartileMethod',
        :'show_inner_points' => :'ShowInnerPoints',
        :'show_mean_line' => :'ShowMeanLine',
        :'show_mean_markers' => :'ShowMeanMarkers',
        :'show_outlier_points' => :'ShowOutlierPoints',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'data_points' => :'Array<OneValueChartDataPoint>',
        :'number_format_of_values' => :'String',
        :'data_source_for_values' => :'DataSource',
        :'show_connector_lines' => :'BOOLEAN',
        :'quartile_method' => :'String',
        :'show_inner_points' => :'BOOLEAN',
        :'show_mean_line' => :'BOOLEAN',
        :'show_mean_markers' => :'BOOLEAN',
        :'show_outlier_points' => :'BOOLEAN',
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

      if attributes.has_key?(:'NumberFormatOfValues')
        self.number_format_of_values = attributes[:'NumberFormatOfValues']
      end

      if attributes.has_key?(:'DataSourceForValues')
        self.data_source_for_values = attributes[:'DataSourceForValues']
      end

      if attributes.has_key?(:'ShowConnectorLines')
        self.show_connector_lines = attributes[:'ShowConnectorLines']
      end

      if attributes.has_key?(:'QuartileMethod')
        self.quartile_method = attributes[:'QuartileMethod']
      end

      if attributes.has_key?(:'ShowInnerPoints')
        self.show_inner_points = attributes[:'ShowInnerPoints']
      end

      if attributes.has_key?(:'ShowMeanLine')
        self.show_mean_line = attributes[:'ShowMeanLine']
      end

      if attributes.has_key?(:'ShowMeanMarkers')
        self.show_mean_markers = attributes[:'ShowMeanMarkers']
      end

      if attributes.has_key?(:'ShowOutlierPoints')
        self.show_outlier_points = attributes[:'ShowOutlierPoints']
      end
      self.data_point_type = 'OneValue'
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
      quartile_method_validator = EnumAttributeValidator.new('String', ['Exclusive', 'Inclusive'])
      return false unless quartile_method_validator.valid?(@quartile_method)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] quartile_method Object to be assigned
    def quartile_method=(quartile_method)
      validator = EnumAttributeValidator.new('String', ['Exclusive', 'Inclusive'])
      unless validator.valid?(quartile_method)
        fail ArgumentError, 'invalid value for "quartile_method", must be one of #{validator.allowable_values}.'
      end
      @quartile_method = quartile_method
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
          data_points == o.data_points &&
          number_format_of_values == o.number_format_of_values &&
          data_source_for_values == o.data_source_for_values &&
          show_connector_lines == o.show_connector_lines &&
          quartile_method == o.quartile_method &&
          show_inner_points == o.show_inner_points &&
          show_mean_line == o.show_mean_line &&
          show_mean_markers == o.show_mean_markers &&
          show_outlier_points == o.show_outlier_points
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [type, name, data_source_for_series_name, is_color_varied, inverted_solid_fill_color, smooth, plot_on_second_axis, order, invert_if_negative, explosion, marker, fill_format, effect_format, line_format, data_point_type, data_points, number_format_of_values, data_source_for_values, show_connector_lines, quartile_method, show_inner_points, show_mean_line, show_mean_markers, show_outlier_points].hash
    end
  end
end
