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
  class BubbleSeries
    # Series type.
    attr_accessor :type

    # Series name.
    attr_accessor :name

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

    # The number format for the series y values.
    attr_accessor :number_format_of_y_values

    # The number format for the series x values.
    attr_accessor :number_format_of_x_values

    # The number format for the series values.
    attr_accessor :number_format_of_values

    # The number format for the series bubble sizes.
    attr_accessor :number_format_of_bubble_sizes

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

    # Data point type.
    attr_accessor :data_point_type

    # Gets or sets the values.
    attr_accessor :data_points

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
        :'name' => :'Name',
        :'is_color_varied' => :'IsColorVaried',
        :'inverted_solid_fill_color' => :'InvertedSolidFillColor',
        :'smooth' => :'Smooth',
        :'plot_on_second_axis' => :'PlotOnSecondAxis',
        :'order' => :'Order',
        :'number_format_of_y_values' => :'NumberFormatOfYValues',
        :'number_format_of_x_values' => :'NumberFormatOfXValues',
        :'number_format_of_values' => :'NumberFormatOfValues',
        :'number_format_of_bubble_sizes' => :'NumberFormatOfBubbleSizes',
        :'invert_if_negative' => :'InvertIfNegative',
        :'explosion' => :'Explosion',
        :'marker' => :'Marker',
        :'fill_format' => :'FillFormat',
        :'effect_format' => :'EffectFormat',
        :'line_format' => :'LineFormat',
        :'data_point_type' => :'DataPointType',
        :'data_points' => :'DataPoints'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'type' => :'String',
        :'name' => :'String',
        :'is_color_varied' => :'BOOLEAN',
        :'inverted_solid_fill_color' => :'String',
        :'smooth' => :'BOOLEAN',
        :'plot_on_second_axis' => :'BOOLEAN',
        :'order' => :'Integer',
        :'number_format_of_y_values' => :'String',
        :'number_format_of_x_values' => :'String',
        :'number_format_of_values' => :'String',
        :'number_format_of_bubble_sizes' => :'String',
        :'invert_if_negative' => :'BOOLEAN',
        :'explosion' => :'Integer',
        :'marker' => :'SeriesMarker',
        :'fill_format' => :'FillFormat',
        :'effect_format' => :'EffectFormat',
        :'line_format' => :'LineFormat',
        :'data_point_type' => :'String',
        :'data_points' => :'Array<BubbleChartDataPoint>'
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

      if attributes.has_key?(:'NumberFormatOfYValues')
        self.number_format_of_y_values = attributes[:'NumberFormatOfYValues']
      end

      if attributes.has_key?(:'NumberFormatOfXValues')
        self.number_format_of_x_values = attributes[:'NumberFormatOfXValues']
      end

      if attributes.has_key?(:'NumberFormatOfValues')
        self.number_format_of_values = attributes[:'NumberFormatOfValues']
      end

      if attributes.has_key?(:'NumberFormatOfBubbleSizes')
        self.number_format_of_bubble_sizes = attributes[:'NumberFormatOfBubbleSizes']
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

      if attributes.has_key?(:'DataPoints')
        if (value = attributes[:'DataPoints']).is_a?(Array)
          self.data_points = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @data_point_type.nil?
        invalid_properties.push('invalid value for "data_point_type", data_point_type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      type_validator = EnumAttributeValidator.new('String', ['ClusteredColumn', 'StackedColumn', 'PercentsStackedColumn', 'ClusteredColumn3D', 'StackedColumn3D', 'PercentsStackedColumn3D', 'Column3D', 'ClusteredCylinder', 'StackedCylinder', 'PercentsStackedCylinder', 'Cylinder3D', 'ClusteredCone', 'StackedCone', 'PercentsStackedCone', 'Cone3D', 'ClusteredPyramid', 'StackedPyramid', 'PercentsStackedPyramid', 'Pyramid3D', 'Line', 'StackedLine', 'PercentsStackedLine', 'LineWithMarkers', 'StackedLineWithMarkers', 'PercentsStackedLineWithMarkers', 'Line3D', 'Pie', 'Pie3D', 'PieOfPie', 'ExplodedPie', 'ExplodedPie3D', 'BarOfPie', 'PercentsStackedBar', 'ClusteredBar3D', 'ClusteredBar', 'StackedBar', 'StackedBar3D', 'PercentsStackedBar3D', 'ClusteredHorizontalCylinder', 'StackedHorizontalCylinder', 'PercentsStackedHorizontalCylinder', 'ClusteredHorizontalCone', 'StackedHorizontalCone', 'PercentsStackedHorizontalCone', 'ClusteredHorizontalPyramid', 'StackedHorizontalPyramid', 'PercentsStackedHorizontalPyramid', 'Area', 'StackedArea', 'PercentsStackedArea', 'Area3D', 'StackedArea3D', 'PercentsStackedArea3D', 'ScatterWithMarkers', 'ScatterWithSmoothLinesAndMarkers', 'ScatterWithSmoothLines', 'ScatterWithStraightLinesAndMarkers', 'ScatterWithStraightLines', 'HighLowClose', 'OpenHighLowClose', 'VolumeHighLowClose', 'VolumeOpenHighLowClose', 'Surface3D', 'WireframeSurface3D', 'Contour', 'WireframeContour', 'Doughnut', 'ExplodedDoughnut', 'Bubble', 'BubbleWith3D', 'Radar', 'RadarWithMarkers', 'FilledRadar', 'SeriesOfMixedTypes'])
      return false unless type_validator.valid?(@type)
      return false if @data_point_type.nil?
      data_point_type_validator = EnumAttributeValidator.new('String', ['OneValue', 'Scatter', 'Bubble'])
      return false unless data_point_type_validator.valid?(@data_point_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ['ClusteredColumn', 'StackedColumn', 'PercentsStackedColumn', 'ClusteredColumn3D', 'StackedColumn3D', 'PercentsStackedColumn3D', 'Column3D', 'ClusteredCylinder', 'StackedCylinder', 'PercentsStackedCylinder', 'Cylinder3D', 'ClusteredCone', 'StackedCone', 'PercentsStackedCone', 'Cone3D', 'ClusteredPyramid', 'StackedPyramid', 'PercentsStackedPyramid', 'Pyramid3D', 'Line', 'StackedLine', 'PercentsStackedLine', 'LineWithMarkers', 'StackedLineWithMarkers', 'PercentsStackedLineWithMarkers', 'Line3D', 'Pie', 'Pie3D', 'PieOfPie', 'ExplodedPie', 'ExplodedPie3D', 'BarOfPie', 'PercentsStackedBar', 'ClusteredBar3D', 'ClusteredBar', 'StackedBar', 'StackedBar3D', 'PercentsStackedBar3D', 'ClusteredHorizontalCylinder', 'StackedHorizontalCylinder', 'PercentsStackedHorizontalCylinder', 'ClusteredHorizontalCone', 'StackedHorizontalCone', 'PercentsStackedHorizontalCone', 'ClusteredHorizontalPyramid', 'StackedHorizontalPyramid', 'PercentsStackedHorizontalPyramid', 'Area', 'StackedArea', 'PercentsStackedArea', 'Area3D', 'StackedArea3D', 'PercentsStackedArea3D', 'ScatterWithMarkers', 'ScatterWithSmoothLinesAndMarkers', 'ScatterWithSmoothLines', 'ScatterWithStraightLinesAndMarkers', 'ScatterWithStraightLines', 'HighLowClose', 'OpenHighLowClose', 'VolumeHighLowClose', 'VolumeOpenHighLowClose', 'Surface3D', 'WireframeSurface3D', 'Contour', 'WireframeContour', 'Doughnut', 'ExplodedDoughnut', 'Bubble', 'BubbleWith3D', 'Radar', 'RadarWithMarkers', 'FilledRadar', 'SeriesOfMixedTypes'])
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
          is_color_varied == o.is_color_varied &&
          inverted_solid_fill_color == o.inverted_solid_fill_color &&
          smooth == o.smooth &&
          plot_on_second_axis == o.plot_on_second_axis &&
          order == o.order &&
          number_format_of_y_values == o.number_format_of_y_values &&
          number_format_of_x_values == o.number_format_of_x_values &&
          number_format_of_values == o.number_format_of_values &&
          number_format_of_bubble_sizes == o.number_format_of_bubble_sizes &&
          invert_if_negative == o.invert_if_negative &&
          explosion == o.explosion &&
          marker == o.marker &&
          fill_format == o.fill_format &&
          effect_format == o.effect_format &&
          line_format == o.line_format &&
          data_point_type == o.data_point_type &&
          data_points == o.data_points
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [type, name, is_color_varied, inverted_solid_fill_color, smooth, plot_on_second_axis, order, number_format_of_y_values, number_format_of_x_values, number_format_of_values, number_format_of_bubble_sizes, invert_if_negative, explosion, marker, fill_format, effect_format, line_format, data_point_type, data_points].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
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
