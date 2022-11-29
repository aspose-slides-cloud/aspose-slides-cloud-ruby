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

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.any?{ |s| s.casecmp(value) == 0 }
      end
    end

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
      [self_uri, alternate_links, name, width, height, alternative_text, alternative_text_title, hidden, x, y, z_order_position, fill_format, effect_format, three_d_format, line_format, hyperlink_click, hyperlink_mouse_over, type, chart_type, show_data_labels_over_maximum, series, categories, data_source_for_categories, title, back_wall, side_wall, floor, legend, axes, plot_area, has_rounded_corners, series_groups].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        mapKey = self.class.attribute_map[key]
        if !mapKey.nil?
          val = attributes[mapKey]
          if val.nil?
            mapKeyString = mapKey.to_s
            mapKeyString[0] = mapKeyString[0].downcase
            mapKey = mapKeyString.to_sym
            val = attributes[mapKey]
          end
          if !val.nil?
            if type =~ /\AArray<(.*)>/i
              # check to ensure the input is an array given that the the attribute
              # is documented as an array but the input is not
              if val.is_a?(Array)
                self.send("#{key}=", val.map { |v| _deserialize($1, v) })
              end
            else
              self.send("#{key}=", _deserialize(type, val))
            end
          end
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        registry_type = AsposeSlidesCloud::TypeRegistry.get_type(type.to_s, value)
        if registry_type
          type = registry_type
        end
        temp_model = AsposeSlidesCloud.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
