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
  # Chart series group. Defines common properties for a group of series.
  class ChartSeriesGroup
    # Returns a type of this series group.
    attr_accessor :type

    # Specifies the space between bar or column clusters, as a percentage of the bar or column width.
    attr_accessor :gap_width

    # Returns or sets the distance, as a percentage of the marker width, between the data series in a 3D chart.
    attr_accessor :gap_depth

    # Gets or sets the angle of the first pie or doughnut chart slice,  in degrees (clockwise from up, from 0 to 360 degrees).
    attr_accessor :first_slice_angle

    # Specifies that each data marker in the series has a different color.
    attr_accessor :is_color_varied

    # True if chart has series lines. Applied to stacked bar and OfPie charts.
    attr_accessor :has_series_lines

    # Specifies how much bars and columns shall overlap on 2-D charts (from -100 to 100).
    attr_accessor :overlap

    # Specifies the size of the second pie or bar of a pie-of-pie chart or  a bar-of-pie chart, as a percentage of the size of the first pie (can  be between 5 and 200 percents).
    attr_accessor :second_pie_size

    # Specifies a value that shall be used to determine which data points  are in the second pie or bar on a pie-of-pie or bar-of-pie chart.  Is used together with PieSplitBy property.
    attr_accessor :pie_split_position

    # Specifies how to determine which data points are in the second pie or bar  on a pie-of-pie or bar-of-pie chart.
    attr_accessor :pie_split_by

    # Specifies the size of the hole in a doughnut chart (can be between 10 and 90 percents  of the size of the plot area.).
    attr_accessor :doughnut_hole_size

    # Specifies the scale factor for the bubble chart (can be  between 0 and 300 percents of the default size). Read/write Int32.
    attr_accessor :bubble_size_scale

    # Specifies HiLowLines format.  HiLowLines applied with HiLowClose, OpenHiLowClose, VolumeHiLowClose and VolumeOpenHiLowClose chart types.
    attr_accessor :hi_low_lines_format

    # Specifies how the bubble size values are represented on the bubble chart. Read/write BubbleSizeRepresentationType.
    attr_accessor :bubble_size_representation

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
      {
        :'type' => :'Type',
        :'gap_width' => :'GapWidth',
        :'gap_depth' => :'GapDepth',
        :'first_slice_angle' => :'FirstSliceAngle',
        :'is_color_varied' => :'IsColorVaried',
        :'has_series_lines' => :'HasSeriesLines',
        :'overlap' => :'Overlap',
        :'second_pie_size' => :'SecondPieSize',
        :'pie_split_position' => :'PieSplitPosition',
        :'pie_split_by' => :'PieSplitBy',
        :'doughnut_hole_size' => :'DoughnutHoleSize',
        :'bubble_size_scale' => :'BubbleSizeScale',
        :'hi_low_lines_format' => :'HiLowLinesFormat',
        :'bubble_size_representation' => :'BubbleSizeRepresentation',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'type' => :'String',
        :'gap_width' => :'Integer',
        :'gap_depth' => :'Integer',
        :'first_slice_angle' => :'Integer',
        :'is_color_varied' => :'BOOLEAN',
        :'has_series_lines' => :'BOOLEAN',
        :'overlap' => :'Integer',
        :'second_pie_size' => :'Integer',
        :'pie_split_position' => :'Float',
        :'pie_split_by' => :'String',
        :'doughnut_hole_size' => :'Integer',
        :'bubble_size_scale' => :'Integer',
        :'hi_low_lines_format' => :'ChartLinesFormat',
        :'bubble_size_representation' => :'String',
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

      if attributes.has_key?(:'GapWidth')
        self.gap_width = attributes[:'GapWidth']
      end

      if attributes.has_key?(:'GapDepth')
        self.gap_depth = attributes[:'GapDepth']
      end

      if attributes.has_key?(:'FirstSliceAngle')
        self.first_slice_angle = attributes[:'FirstSliceAngle']
      end

      if attributes.has_key?(:'IsColorVaried')
        self.is_color_varied = attributes[:'IsColorVaried']
      end

      if attributes.has_key?(:'HasSeriesLines')
        self.has_series_lines = attributes[:'HasSeriesLines']
      end

      if attributes.has_key?(:'Overlap')
        self.overlap = attributes[:'Overlap']
      end

      if attributes.has_key?(:'SecondPieSize')
        self.second_pie_size = attributes[:'SecondPieSize']
      end

      if attributes.has_key?(:'PieSplitPosition')
        self.pie_split_position = attributes[:'PieSplitPosition']
      end

      if attributes.has_key?(:'PieSplitBy')
        self.pie_split_by = attributes[:'PieSplitBy']
      end

      if attributes.has_key?(:'DoughnutHoleSize')
        self.doughnut_hole_size = attributes[:'DoughnutHoleSize']
      end

      if attributes.has_key?(:'BubbleSizeScale')
        self.bubble_size_scale = attributes[:'BubbleSizeScale']
      end

      if attributes.has_key?(:'HiLowLinesFormat')
        self.hi_low_lines_format = attributes[:'HiLowLinesFormat']
      end

      if attributes.has_key?(:'BubbleSizeRepresentation')
        self.bubble_size_representation = attributes[:'BubbleSizeRepresentation']
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
      type_validator = EnumAttributeValidator.new('String', ['BarOfPieChart', 'PieOfPieChart', 'DoughnutChart', 'PieChart', 'AreaChartArea', 'AreaChartPercentsStackedArea', 'AreaChartStackedArea', 'BarChartHorizClustered', 'BarChartHorizStacked', 'BarChartHorizPercentsStacked', 'BarChartVertClustered', 'BarChartVertStacked', 'BarChartVertPercentsStacked', 'LineChartLine', 'LineChartStackedLine', 'LineChartPercentsStackedLine', 'RadarChart', 'FilledRadarChart', 'StockHighLowClose', 'StockOpenHighLowClose', 'StockVolumeHighLowClose', 'StockVolumeOpenHighLowClose', 'ScatterStraightMarker', 'ScatterSmoothMarker', 'AreaChartArea3D', 'AreaChartStackedArea3D', 'AreaChartPercentsStackedArea3D', 'Line3DChart', 'Pie3DChart', 'Bar3DChartVert', 'Bar3DChartVertClustered', 'Bar3DChartVertPercentsStackedColumn3D', 'Bar3DChartVertPercentsStackedCone', 'Bar3DChartVertPercentsStackedCylinder', 'Bar3DChartVertPercentsStackedPyramid', 'Bar3DChartVertStackedColumn3D', 'Bar3DChartVertStackedCone', 'Bar3DChartVertStackedCylinder', 'Bar3DChartVertStackedPyramid', 'Bar3DChartHorizClustered', 'Bar3DChartHorizStackedBar3D', 'Bar3DChartHorizStackedCone', 'Bar3DChartHorizStackedCylinder', 'Bar3DChartHorizStackedPyramid', 'Bar3DChartHorizPercentsStackedBar3D', 'Bar3DChartHorizPercentsStackedCone', 'Bar3DChartHorizPercentsStackedCylinder', 'Bar3DChartHorizPercentsStackedPyramid', 'SurfaceChartContour', 'SurfaceChartWireframeContour', 'SurfaceChartSurface3D', 'SurfaceChartWireframeSurface3D', 'BubbleChart', 'HistogramChart', 'ParetoLineChart', 'BoxAndWhiskerChart', 'WaterfallChart', 'FunnelChart', 'TreemapChart', 'MapChart', 'SunburstChart'])
      return false unless type_validator.valid?(@type)
      pie_split_by_validator = EnumAttributeValidator.new('String', ['Default', 'Custom', 'ByPercentage', 'ByPos', 'ByValue'])
      return false unless pie_split_by_validator.valid?(@pie_split_by)
      bubble_size_representation_validator = EnumAttributeValidator.new('String', ['Area', 'Width'])
      return false unless bubble_size_representation_validator.valid?(@bubble_size_representation)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ['BarOfPieChart', 'PieOfPieChart', 'DoughnutChart', 'PieChart', 'AreaChartArea', 'AreaChartPercentsStackedArea', 'AreaChartStackedArea', 'BarChartHorizClustered', 'BarChartHorizStacked', 'BarChartHorizPercentsStacked', 'BarChartVertClustered', 'BarChartVertStacked', 'BarChartVertPercentsStacked', 'LineChartLine', 'LineChartStackedLine', 'LineChartPercentsStackedLine', 'RadarChart', 'FilledRadarChart', 'StockHighLowClose', 'StockOpenHighLowClose', 'StockVolumeHighLowClose', 'StockVolumeOpenHighLowClose', 'ScatterStraightMarker', 'ScatterSmoothMarker', 'AreaChartArea3D', 'AreaChartStackedArea3D', 'AreaChartPercentsStackedArea3D', 'Line3DChart', 'Pie3DChart', 'Bar3DChartVert', 'Bar3DChartVertClustered', 'Bar3DChartVertPercentsStackedColumn3D', 'Bar3DChartVertPercentsStackedCone', 'Bar3DChartVertPercentsStackedCylinder', 'Bar3DChartVertPercentsStackedPyramid', 'Bar3DChartVertStackedColumn3D', 'Bar3DChartVertStackedCone', 'Bar3DChartVertStackedCylinder', 'Bar3DChartVertStackedPyramid', 'Bar3DChartHorizClustered', 'Bar3DChartHorizStackedBar3D', 'Bar3DChartHorizStackedCone', 'Bar3DChartHorizStackedCylinder', 'Bar3DChartHorizStackedPyramid', 'Bar3DChartHorizPercentsStackedBar3D', 'Bar3DChartHorizPercentsStackedCone', 'Bar3DChartHorizPercentsStackedCylinder', 'Bar3DChartHorizPercentsStackedPyramid', 'SurfaceChartContour', 'SurfaceChartWireframeContour', 'SurfaceChartSurface3D', 'SurfaceChartWireframeSurface3D', 'BubbleChart', 'HistogramChart', 'ParetoLineChart', 'BoxAndWhiskerChart', 'WaterfallChart', 'FunnelChart', 'TreemapChart', 'MapChart', 'SunburstChart'])
      unless validator.valid?(type)
        fail ArgumentError, 'invalid value for "type", must be one of #{validator.allowable_values}.'
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] pie_split_by Object to be assigned
    def pie_split_by=(pie_split_by)
      validator = EnumAttributeValidator.new('String', ['Default', 'Custom', 'ByPercentage', 'ByPos', 'ByValue'])
      unless validator.valid?(pie_split_by)
        fail ArgumentError, 'invalid value for "pie_split_by", must be one of #{validator.allowable_values}.'
      end
      @pie_split_by = pie_split_by
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bubble_size_representation Object to be assigned
    def bubble_size_representation=(bubble_size_representation)
      validator = EnumAttributeValidator.new('String', ['Area', 'Width'])
      unless validator.valid?(bubble_size_representation)
        fail ArgumentError, 'invalid value for "bubble_size_representation", must be one of #{validator.allowable_values}.'
      end
      @bubble_size_representation = bubble_size_representation
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          gap_width == o.gap_width &&
          gap_depth == o.gap_depth &&
          first_slice_angle == o.first_slice_angle &&
          is_color_varied == o.is_color_varied &&
          has_series_lines == o.has_series_lines &&
          overlap == o.overlap &&
          second_pie_size == o.second_pie_size &&
          pie_split_position == o.pie_split_position &&
          pie_split_by == o.pie_split_by &&
          doughnut_hole_size == o.doughnut_hole_size &&
          bubble_size_scale == o.bubble_size_scale &&
          hi_low_lines_format == o.hi_low_lines_format &&
          bubble_size_representation == o.bubble_size_representation
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [type, gap_width, gap_depth, first_slice_angle, is_color_varied, has_series_lines, overlap, second_pie_size, pie_split_position, pie_split_by, doughnut_hole_size, bubble_size_scale, hi_low_lines_format, bubble_size_representation].hash
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
