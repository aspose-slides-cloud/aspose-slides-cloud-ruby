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
  # A chart series.
  class Series < BaseObject
    # Series type.
    attr_accessor :type

    # Series name.
    attr_accessor :name

    # Series name data source.
    attr_accessor :data_source_for_series_name

    # True if each data marker in the series has a different color.
    attr_accessor :is_color_varied

    # Invert solid color for the series.
    attr_accessor :inverted_solid_fill_color

    # True if curve smoothing is turned on. Applies only to line and scatter connected by lines charts.
    attr_accessor :smooth

    # True if the series is plotted on second value axis.
    attr_accessor :plot_on_second_axis

    # Series order.
    attr_accessor :order

    # True if the series shall invert its colors if the value is negative. Applies to bar, column and bubble series.
    attr_accessor :invert_if_negative

    # The distance of an open pie slice from the center of the pie chart is expressed as a percentage of the pie diameter.
    attr_accessor :explosion

    # Series marker.
    attr_accessor :marker

    # Fill properties set for the series.
    attr_accessor :fill_format

    # Effect properties set for the series.
    attr_accessor :effect_format

    # Line properties set for the series.
    attr_accessor :line_format

    attr_accessor :data_point_type

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'type' => :'Type',
        :'name' => :'Name',
        :'data_source_for_series_name' => :'DataSourceForSeriesName',
        :'is_color_varied' => :'IsColorVaried',
        :'inverted_solid_fill_color' => :'InvertedSolidFillColor',
        :'smooth' => :'Smooth',
        :'plot_on_second_axis' => :'PlotOnSecondAxis',
        :'order' => :'Order',
        :'invert_if_negative' => :'InvertIfNegative',
        :'explosion' => :'Explosion',
        :'marker' => :'Marker',
        :'fill_format' => :'FillFormat',
        :'effect_format' => :'EffectFormat',
        :'line_format' => :'LineFormat',
        :'data_point_type' => :'DataPointType',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'type' => :'String',
        :'name' => :'String',
        :'data_source_for_series_name' => :'DataSource',
        :'is_color_varied' => :'BOOLEAN',
        :'inverted_solid_fill_color' => :'String',
        :'smooth' => :'BOOLEAN',
        :'plot_on_second_axis' => :'BOOLEAN',
        :'order' => :'Integer',
        :'invert_if_negative' => :'BOOLEAN',
        :'explosion' => :'Integer',
        :'marker' => :'SeriesMarker',
        :'fill_format' => :'FillFormat',
        :'effect_format' => :'EffectFormat',
        :'line_format' => :'LineFormat',
        :'data_point_type' => :'String',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'Type')
        self.type = attributes[:'Type']
      end

      if attributes.has_key?(:'Name')
        self.name = attributes[:'Name']
      end

      if attributes.has_key?(:'DataSourceForSeriesName')
        self.data_source_for_series_name = attributes[:'DataSourceForSeriesName']
      end

      if attributes.has_key?(:'IsColorVaried')
        self.is_color_varied = attributes[:'IsColorVaried']
      end

      if attributes.has_key?(:'InvertedSolidFillColor')
        self.inverted_solid_fill_color = attributes[:'InvertedSolidFillColor']
      end

      if attributes.has_key?(:'Smooth')
        self.smooth = attributes[:'Smooth']
      end

      if attributes.has_key?(:'PlotOnSecondAxis')
        self.plot_on_second_axis = attributes[:'PlotOnSecondAxis']
      end

      if attributes.has_key?(:'Order')
        self.order = attributes[:'Order']
      end

      if attributes.has_key?(:'InvertIfNegative')
        self.invert_if_negative = attributes[:'InvertIfNegative']
      end

      if attributes.has_key?(:'Explosion')
        self.explosion = attributes[:'Explosion']
      end

      if attributes.has_key?(:'Marker')
        self.marker = attributes[:'Marker']
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

      if attributes.has_key?(:'DataPointType')
        self.data_point_type = attributes[:'DataPointType']
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
      type_validator = EnumAttributeValidator.new('String', ['ClusteredColumn', 'StackedColumn', 'PercentsStackedColumn', 'ClusteredColumn3D', 'StackedColumn3D', 'PercentsStackedColumn3D', 'Column3D', 'ClusteredCylinder', 'StackedCylinder', 'PercentsStackedCylinder', 'Cylinder3D', 'ClusteredCone', 'StackedCone', 'PercentsStackedCone', 'Cone3D', 'ClusteredPyramid', 'StackedPyramid', 'PercentsStackedPyramid', 'Pyramid3D', 'Line', 'StackedLine', 'PercentsStackedLine', 'LineWithMarkers', 'StackedLineWithMarkers', 'PercentsStackedLineWithMarkers', 'Line3D', 'Pie', 'Pie3D', 'PieOfPie', 'ExplodedPie', 'ExplodedPie3D', 'BarOfPie', 'PercentsStackedBar', 'ClusteredBar3D', 'ClusteredBar', 'StackedBar', 'StackedBar3D', 'PercentsStackedBar3D', 'ClusteredHorizontalCylinder', 'StackedHorizontalCylinder', 'PercentsStackedHorizontalCylinder', 'ClusteredHorizontalCone', 'StackedHorizontalCone', 'PercentsStackedHorizontalCone', 'ClusteredHorizontalPyramid', 'StackedHorizontalPyramid', 'PercentsStackedHorizontalPyramid', 'Area', 'StackedArea', 'PercentsStackedArea', 'Area3D', 'StackedArea3D', 'PercentsStackedArea3D', 'ScatterWithMarkers', 'ScatterWithSmoothLinesAndMarkers', 'ScatterWithSmoothLines', 'ScatterWithStraightLinesAndMarkers', 'ScatterWithStraightLines', 'HighLowClose', 'OpenHighLowClose', 'VolumeHighLowClose', 'VolumeOpenHighLowClose', 'Surface3D', 'WireframeSurface3D', 'Contour', 'WireframeContour', 'Doughnut', 'ExplodedDoughnut', 'Bubble', 'BubbleWith3D', 'Radar', 'RadarWithMarkers', 'FilledRadar', 'SeriesOfMixedTypes', 'Treemap', 'Sunburst', 'Histogram', 'ParetoLine', 'BoxAndWhisker', 'Waterfall', 'Funnel', 'Map'])
      return false unless type_validator.valid?(@type)
      data_point_type_validator = EnumAttributeValidator.new('String', ['OneValue', 'Scatter', 'Bubble'])
      return false unless data_point_type_validator.valid?(@data_point_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ['ClusteredColumn', 'StackedColumn', 'PercentsStackedColumn', 'ClusteredColumn3D', 'StackedColumn3D', 'PercentsStackedColumn3D', 'Column3D', 'ClusteredCylinder', 'StackedCylinder', 'PercentsStackedCylinder', 'Cylinder3D', 'ClusteredCone', 'StackedCone', 'PercentsStackedCone', 'Cone3D', 'ClusteredPyramid', 'StackedPyramid', 'PercentsStackedPyramid', 'Pyramid3D', 'Line', 'StackedLine', 'PercentsStackedLine', 'LineWithMarkers', 'StackedLineWithMarkers', 'PercentsStackedLineWithMarkers', 'Line3D', 'Pie', 'Pie3D', 'PieOfPie', 'ExplodedPie', 'ExplodedPie3D', 'BarOfPie', 'PercentsStackedBar', 'ClusteredBar3D', 'ClusteredBar', 'StackedBar', 'StackedBar3D', 'PercentsStackedBar3D', 'ClusteredHorizontalCylinder', 'StackedHorizontalCylinder', 'PercentsStackedHorizontalCylinder', 'ClusteredHorizontalCone', 'StackedHorizontalCone', 'PercentsStackedHorizontalCone', 'ClusteredHorizontalPyramid', 'StackedHorizontalPyramid', 'PercentsStackedHorizontalPyramid', 'Area', 'StackedArea', 'PercentsStackedArea', 'Area3D', 'StackedArea3D', 'PercentsStackedArea3D', 'ScatterWithMarkers', 'ScatterWithSmoothLinesAndMarkers', 'ScatterWithSmoothLines', 'ScatterWithStraightLinesAndMarkers', 'ScatterWithStraightLines', 'HighLowClose', 'OpenHighLowClose', 'VolumeHighLowClose', 'VolumeOpenHighLowClose', 'Surface3D', 'WireframeSurface3D', 'Contour', 'WireframeContour', 'Doughnut', 'ExplodedDoughnut', 'Bubble', 'BubbleWith3D', 'Radar', 'RadarWithMarkers', 'FilledRadar', 'SeriesOfMixedTypes', 'Treemap', 'Sunburst', 'Histogram', 'ParetoLine', 'BoxAndWhisker', 'Waterfall', 'Funnel', 'Map'])
      unless validator.valid?(type)
        fail ArgumentError, 'invalid value for "type", must be one of #{validator.allowable_values}.'
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] data_point_type Object to be assigned
    def data_point_type=(data_point_type)
      validator = EnumAttributeValidator.new('String', ['OneValue', 'Scatter', 'Bubble'])
      unless validator.valid?(data_point_type)
        fail ArgumentError, 'invalid value for "data_point_type", must be one of #{validator.allowable_values}.'
      end
      @data_point_type = data_point_type
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
          data_point_type == o.data_point_type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [type, name, data_source_for_series_name, is_color_varied, inverted_solid_fill_color, smooth, plot_on_second_axis, order, invert_if_negative, explosion, marker, fill_format, effect_format, line_format, data_point_type].hash
    end
  end
end
