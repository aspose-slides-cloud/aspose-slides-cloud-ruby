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
  # Represents chart resource
  class Chart < ShapeBase
    # Gets or sets the type of the chart.
    attr_accessor :chart_type

    # True if data labels over the maximum of the chart shall be shown.
    attr_accessor :show_data_labels_over_maximum

    # Gets or sets the series of chart data values.
    attr_accessor :series

    # Gets or sets the categories for chart data
    attr_accessor :categories

    # Data source type for categories.
    attr_accessor :data_source_for_categories

    # Gets or sets the title.
    attr_accessor :title

    # Gets or sets the back wall.
    attr_accessor :back_wall

    # Gets or sets the side wall.
    attr_accessor :side_wall

    # Gets or sets the floor.
    attr_accessor :floor

    # Gets or sets the legend.
    attr_accessor :legend

    # Gets or sets the axes.
    attr_accessor :axes

    # Gets or sets the plot area.
    attr_accessor :plot_area

    # Specifies the chart area shall have rounded corners.
    attr_accessor :has_rounded_corners

    # Gets groups of series. 
    attr_accessor :series_groups

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      super.merge({
        :'chart_type' => :'ChartType',
        :'show_data_labels_over_maximum' => :'ShowDataLabelsOverMaximum',
        :'series' => :'Series',
        :'categories' => :'Categories',
        :'data_source_for_categories' => :'DataSourceForCategories',
        :'title' => :'Title',
        :'back_wall' => :'BackWall',
        :'side_wall' => :'SideWall',
        :'floor' => :'Floor',
        :'legend' => :'Legend',
        :'axes' => :'Axes',
        :'plot_area' => :'PlotArea',
        :'has_rounded_corners' => :'HasRoundedCorners',
        :'series_groups' => :'SeriesGroups',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'chart_type' => :'String',
        :'show_data_labels_over_maximum' => :'BOOLEAN',
        :'series' => :'Array<Series>',
        :'categories' => :'Array<ChartCategory>',
        :'data_source_for_categories' => :'DataSource',
        :'title' => :'ChartTitle',
        :'back_wall' => :'ChartWall',
        :'side_wall' => :'ChartWall',
        :'floor' => :'ChartWall',
        :'legend' => :'Legend',
        :'axes' => :'Axes',
        :'plot_area' => :'PlotArea',
        :'has_rounded_corners' => :'BOOLEAN',
        :'series_groups' => :'Array<ChartSeriesGroup>',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'ChartType')
        self.chart_type = attributes[:'ChartType']
      end

      if attributes.has_key?(:'ShowDataLabelsOverMaximum')
        self.show_data_labels_over_maximum = attributes[:'ShowDataLabelsOverMaximum']
      end

      if attributes.has_key?(:'Series')
        if (value = attributes[:'Series']).is_a?(Array)
          self.series = value
        end
      end

      if attributes.has_key?(:'Categories')
        if (value = attributes[:'Categories']).is_a?(Array)
          self.categories = value
        end
      end

      if attributes.has_key?(:'DataSourceForCategories')
        self.data_source_for_categories = attributes[:'DataSourceForCategories']
      end

      if attributes.has_key?(:'Title')
        self.title = attributes[:'Title']
      end

      if attributes.has_key?(:'BackWall')
        self.back_wall = attributes[:'BackWall']
      end

      if attributes.has_key?(:'SideWall')
        self.side_wall = attributes[:'SideWall']
      end

      if attributes.has_key?(:'Floor')
        self.floor = attributes[:'Floor']
      end

      if attributes.has_key?(:'Legend')
        self.legend = attributes[:'Legend']
      end

      if attributes.has_key?(:'Axes')
        self.axes = attributes[:'Axes']
      end

      if attributes.has_key?(:'PlotArea')
        self.plot_area = attributes[:'PlotArea']
      end

      if attributes.has_key?(:'HasRoundedCorners')
        self.has_rounded_corners = attributes[:'HasRoundedCorners']
      end

      if attributes.has_key?(:'SeriesGroups')
        if (value = attributes[:'SeriesGroups']).is_a?(Array)
          self.series_groups = value
        end
      end
      self.type = 'Chart'
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = super
      if @chart_type.nil?
        invalid_properties.push('invalid value for "chart_type", chart_type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !super
      return false if @chart_type.nil?
      chart_type_validator = EnumAttributeValidator.new('String', ['ClusteredColumn', 'StackedColumn', 'PercentsStackedColumn', 'ClusteredColumn3D', 'StackedColumn3D', 'PercentsStackedColumn3D', 'Column3D', 'ClusteredCylinder', 'StackedCylinder', 'PercentsStackedCylinder', 'Cylinder3D', 'ClusteredCone', 'StackedCone', 'PercentsStackedCone', 'Cone3D', 'ClusteredPyramid', 'StackedPyramid', 'PercentsStackedPyramid', 'Pyramid3D', 'Line', 'StackedLine', 'PercentsStackedLine', 'LineWithMarkers', 'StackedLineWithMarkers', 'PercentsStackedLineWithMarkers', 'Line3D', 'Pie', 'Pie3D', 'PieOfPie', 'ExplodedPie', 'ExplodedPie3D', 'BarOfPie', 'PercentsStackedBar', 'ClusteredBar3D', 'ClusteredBar', 'StackedBar', 'StackedBar3D', 'PercentsStackedBar3D', 'ClusteredHorizontalCylinder', 'StackedHorizontalCylinder', 'PercentsStackedHorizontalCylinder', 'ClusteredHorizontalCone', 'StackedHorizontalCone', 'PercentsStackedHorizontalCone', 'ClusteredHorizontalPyramid', 'StackedHorizontalPyramid', 'PercentsStackedHorizontalPyramid', 'Area', 'StackedArea', 'PercentsStackedArea', 'Area3D', 'StackedArea3D', 'PercentsStackedArea3D', 'ScatterWithMarkers', 'ScatterWithSmoothLinesAndMarkers', 'ScatterWithSmoothLines', 'ScatterWithStraightLinesAndMarkers', 'ScatterWithStraightLines', 'HighLowClose', 'OpenHighLowClose', 'VolumeHighLowClose', 'VolumeOpenHighLowClose', 'Surface3D', 'WireframeSurface3D', 'Contour', 'WireframeContour', 'Doughnut', 'ExplodedDoughnut', 'Bubble', 'BubbleWith3D', 'Radar', 'RadarWithMarkers', 'FilledRadar', 'SeriesOfMixedTypes', 'Treemap', 'Sunburst', 'Histogram', 'ParetoLine', 'BoxAndWhisker', 'Waterfall', 'Funnel', 'Map'])
      return false unless chart_type_validator.valid?(@chart_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] chart_type Object to be assigned
    def chart_type=(chart_type)
      validator = EnumAttributeValidator.new('String', ['ClusteredColumn', 'StackedColumn', 'PercentsStackedColumn', 'ClusteredColumn3D', 'StackedColumn3D', 'PercentsStackedColumn3D', 'Column3D', 'ClusteredCylinder', 'StackedCylinder', 'PercentsStackedCylinder', 'Cylinder3D', 'ClusteredCone', 'StackedCone', 'PercentsStackedCone', 'Cone3D', 'ClusteredPyramid', 'StackedPyramid', 'PercentsStackedPyramid', 'Pyramid3D', 'Line', 'StackedLine', 'PercentsStackedLine', 'LineWithMarkers', 'StackedLineWithMarkers', 'PercentsStackedLineWithMarkers', 'Line3D', 'Pie', 'Pie3D', 'PieOfPie', 'ExplodedPie', 'ExplodedPie3D', 'BarOfPie', 'PercentsStackedBar', 'ClusteredBar3D', 'ClusteredBar', 'StackedBar', 'StackedBar3D', 'PercentsStackedBar3D', 'ClusteredHorizontalCylinder', 'StackedHorizontalCylinder', 'PercentsStackedHorizontalCylinder', 'ClusteredHorizontalCone', 'StackedHorizontalCone', 'PercentsStackedHorizontalCone', 'ClusteredHorizontalPyramid', 'StackedHorizontalPyramid', 'PercentsStackedHorizontalPyramid', 'Area', 'StackedArea', 'PercentsStackedArea', 'Area3D', 'StackedArea3D', 'PercentsStackedArea3D', 'ScatterWithMarkers', 'ScatterWithSmoothLinesAndMarkers', 'ScatterWithSmoothLines', 'ScatterWithStraightLinesAndMarkers', 'ScatterWithStraightLines', 'HighLowClose', 'OpenHighLowClose', 'VolumeHighLowClose', 'VolumeOpenHighLowClose', 'Surface3D', 'WireframeSurface3D', 'Contour', 'WireframeContour', 'Doughnut', 'ExplodedDoughnut', 'Bubble', 'BubbleWith3D', 'Radar', 'RadarWithMarkers', 'FilledRadar', 'SeriesOfMixedTypes', 'Treemap', 'Sunburst', 'Histogram', 'ParetoLine', 'BoxAndWhisker', 'Waterfall', 'Funnel', 'Map'])
      unless validator.valid?(chart_type)
        fail ArgumentError, 'invalid value for "chart_type", must be one of #{validator.allowable_values}.'
      end
      @chart_type = chart_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          self_uri == o.self_uri &&
          alternate_links == o.alternate_links &&
          name == o.name &&
          width == o.width &&
          height == o.height &&
          alternative_text == o.alternative_text &&
          alternative_text_title == o.alternative_text_title &&
          hidden == o.hidden &&
          is_decorative == o.is_decorative &&
          x == o.x &&
          y == o.y &&
          z_order_position == o.z_order_position &&
          fill_format == o.fill_format &&
          effect_format == o.effect_format &&
          three_d_format == o.three_d_format &&
          line_format == o.line_format &&
          hyperlink_click == o.hyperlink_click &&
          hyperlink_mouse_over == o.hyperlink_mouse_over &&
          type == o.type &&
          chart_type == o.chart_type &&
          show_data_labels_over_maximum == o.show_data_labels_over_maximum &&
          series == o.series &&
          categories == o.categories &&
          data_source_for_categories == o.data_source_for_categories &&
          title == o.title &&
          back_wall == o.back_wall &&
          side_wall == o.side_wall &&
          floor == o.floor &&
          legend == o.legend &&
          axes == o.axes &&
          plot_area == o.plot_area &&
          has_rounded_corners == o.has_rounded_corners &&
          series_groups == o.series_groups
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [self_uri, alternate_links, name, width, height, alternative_text, alternative_text_title, hidden, is_decorative, x, y, z_order_position, fill_format, effect_format, three_d_format, line_format, hyperlink_click, hyperlink_mouse_over, type, chart_type, show_data_labels_over_maximum, series, categories, data_source_for_categories, title, back_wall, side_wall, floor, legend, axes, plot_area, has_rounded_corners, series_groups].hash
    end
  end
end
