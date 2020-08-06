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
  class Chart
    # Gets or sets the link to this resource.
    attr_accessor :self_uri

    # List of alternate links.
    attr_accessor :alternate_links

    # Gets or sets the name.
    attr_accessor :name

    # Gets or sets the width.
    attr_accessor :width

    # Gets or sets the height.
    attr_accessor :height

    # Gets or sets the alternative text.
    attr_accessor :alternative_text

    # The title of alternative text associated with the shape.
    attr_accessor :alternative_text_title

    # Gets or sets a value indicating whether this ShapeBase is hidden.
    attr_accessor :hidden

    # Gets or sets the X
    attr_accessor :x

    # Gets or sets the Y.
    attr_accessor :y

    # Gets z-order position of shape
    attr_accessor :z_order_position

    # Gets or sets the link to shapes.
    attr_accessor :shapes

    # Gets or sets the fill format.
    attr_accessor :fill_format

    # Gets or sets the effect format.
    attr_accessor :effect_format

    # Gets or sets the line format.
    attr_accessor :line_format

    # Shape type.
    attr_accessor :type

    # Combined shape type.
    attr_accessor :shape_type

    # Gets or sets the type of the chart.
    attr_accessor :chart_type

    # True if data labels over the maximum of the chart shall be shown.
    attr_accessor :show_data_labels_over_maximum

    # Gets or sets the series of chart data values.
    attr_accessor :series

    # Gets or sets the categories for chart data
    attr_accessor :categories

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
        :'self_uri' => :'SelfUri',
        :'alternate_links' => :'AlternateLinks',
        :'name' => :'Name',
        :'width' => :'Width',
        :'height' => :'Height',
        :'alternative_text' => :'AlternativeText',
        :'alternative_text_title' => :'AlternativeTextTitle',
        :'hidden' => :'Hidden',
        :'x' => :'X',
        :'y' => :'Y',
        :'z_order_position' => :'ZOrderPosition',
        :'shapes' => :'Shapes',
        :'fill_format' => :'FillFormat',
        :'effect_format' => :'EffectFormat',
        :'line_format' => :'LineFormat',
        :'type' => :'Type',
        :'shape_type' => :'ShapeType',
        :'chart_type' => :'ChartType',
        :'show_data_labels_over_maximum' => :'ShowDataLabelsOverMaximum',
        :'series' => :'Series',
        :'categories' => :'Categories',
        :'title' => :'Title',
        :'back_wall' => :'BackWall',
        :'side_wall' => :'SideWall',
        :'floor' => :'Floor',
        :'legend' => :'Legend',
        :'axes' => :'Axes',
        :'plot_area' => :'PlotArea'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'self_uri' => :'ResourceUri',
        :'alternate_links' => :'Array<ResourceUri>',
        :'name' => :'String',
        :'width' => :'Float',
        :'height' => :'Float',
        :'alternative_text' => :'String',
        :'alternative_text_title' => :'String',
        :'hidden' => :'BOOLEAN',
        :'x' => :'Float',
        :'y' => :'Float',
        :'z_order_position' => :'Integer',
        :'shapes' => :'ResourceUriElement',
        :'fill_format' => :'FillFormat',
        :'effect_format' => :'EffectFormat',
        :'line_format' => :'LineFormat',
        :'type' => :'String',
        :'shape_type' => :'String',
        :'chart_type' => :'String',
        :'show_data_labels_over_maximum' => :'BOOLEAN',
        :'series' => :'Array<Series>',
        :'categories' => :'Array<ChartCategory>',
        :'title' => :'ChartTitle',
        :'back_wall' => :'ChartWall',
        :'side_wall' => :'ChartWall',
        :'floor' => :'ChartWall',
        :'legend' => :'Legend',
        :'axes' => :'Axes',
        :'plot_area' => :'PlotArea'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'SelfUri')
        self.self_uri = attributes[:'SelfUri']
      end

      if attributes.has_key?(:'AlternateLinks')
        if (value = attributes[:'AlternateLinks']).is_a?(Array)
          self.alternate_links = value
        end
      end

      if attributes.has_key?(:'Name')
        self.name = attributes[:'Name']
      end

      if attributes.has_key?(:'Width')
        self.width = attributes[:'Width']
      end

      if attributes.has_key?(:'Height')
        self.height = attributes[:'Height']
      end

      if attributes.has_key?(:'AlternativeText')
        self.alternative_text = attributes[:'AlternativeText']
      end

      if attributes.has_key?(:'AlternativeTextTitle')
        self.alternative_text_title = attributes[:'AlternativeTextTitle']
      end

      if attributes.has_key?(:'Hidden')
        self.hidden = attributes[:'Hidden']
      end

      if attributes.has_key?(:'X')
        self.x = attributes[:'X']
      end

      if attributes.has_key?(:'Y')
        self.y = attributes[:'Y']
      end

      if attributes.has_key?(:'ZOrderPosition')
        self.z_order_position = attributes[:'ZOrderPosition']
      end

      if attributes.has_key?(:'Shapes')
        self.shapes = attributes[:'Shapes']
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

      if attributes.has_key?(:'Type')
        self.type = attributes[:'Type']
      else
        self.type = "Chart"
      end

      if attributes.has_key?(:'ShapeType')
        self.shape_type = attributes[:'ShapeType']
      else
        self.shape_type = "Chart"
      end

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
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @z_order_position.nil?
        invalid_properties.push('invalid value for "z_order_position", z_order_position cannot be nil.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @shape_type.nil?
        invalid_properties.push('invalid value for "shape_type", shape_type cannot be nil.')
      end

      if @chart_type.nil?
        invalid_properties.push('invalid value for "chart_type", chart_type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @z_order_position.nil?
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ['Shape', 'Chart', 'Table', 'PictureFrame', 'VideoFrame', 'AudioFrame', 'SmartArt', 'OleObjectFrame', 'GroupShape', 'GraphicalObject', 'Connector', 'SmartArtShape'])
      return false unless type_validator.valid?(@type)
      return false if @shape_type.nil?
      shape_type_validator = EnumAttributeValidator.new('String', ['Custom', 'Line', 'LineInverse', 'Triangle', 'RightTriangle', 'Rectangle', 'Diamond', 'Parallelogram', 'Trapezoid', 'NonIsoscelesTrapezoid', 'Pentagon', 'Hexagon', 'Heptagon', 'Octagon', 'Decagon', 'Dodecagon', 'FourPointedStar', 'FivePointedStar', 'SixPointedStar', 'SevenPointedStar', 'EightPointedStar', 'TenPointedStar', 'TwelvePointedStar', 'SixteenPointedStar', 'TwentyFourPointedStar', 'ThirtyTwoPointedStar', 'RoundCornerRectangle', 'OneRoundCornerRectangle', 'TwoSamesideRoundCornerRectangle', 'TwoDiagonalRoundCornerRectangle', 'OneSnipOneRoundCornerRectangle', 'OneSnipCornerRectangle', 'TwoSamesideSnipCornerRectangle', 'TwoDiagonalSnipCornerRectangle', 'Plaque', 'Ellipse', 'Teardrop', 'HomePlate', 'Chevron', 'PieWedge', 'Pie', 'BlockArc', 'Donut', 'NoSmoking', 'RightArrow', 'LeftArrow', 'UpArrow', 'DownArrow', 'StripedRightArrow', 'NotchedRightArrow', 'BentUpArrow', 'LeftRightArrow', 'UpDownArrow', 'LeftUpArrow', 'LeftRightUpArrow', 'QuadArrow', 'CalloutLeftArrow', 'CalloutRightArrow', 'CalloutUpArrow', 'CalloutDownArrow', 'CalloutLeftRightArrow', 'CalloutUpDownArrow', 'CalloutQuadArrow', 'BentArrow', 'UTurnArrow', 'CircularArrow', 'LeftCircularArrow', 'LeftRightCircularArrow', 'CurvedRightArrow', 'CurvedLeftArrow', 'CurvedUpArrow', 'CurvedDownArrow', 'SwooshArrow', 'Cube', 'Can', 'LightningBolt', 'Heart', 'Sun', 'Moon', 'SmileyFace', 'IrregularSeal1', 'IrregularSeal2', 'FoldedCorner', 'Bevel', 'Frame', 'HalfFrame', 'Corner', 'DiagonalStripe', 'Chord', 'CurvedArc', 'LeftBracket', 'RightBracket', 'LeftBrace', 'RightBrace', 'BracketPair', 'BracePair', 'StraightConnector1', 'BentConnector2', 'BentConnector3', 'BentConnector4', 'BentConnector5', 'CurvedConnector2', 'CurvedConnector3', 'CurvedConnector4', 'CurvedConnector5', 'Callout1', 'Callout2', 'Callout3', 'Callout1WithAccent', 'Callout2WithAccent', 'Callout3WithAccent', 'Callout1WithBorder', 'Callout2WithBorder', 'Callout3WithBorder', 'Callout1WithBorderAndAccent', 'Callout2WithBorderAndAccent', 'Callout3WithBorderAndAccent', 'CalloutWedgeRectangle', 'CalloutWedgeRoundRectangle', 'CalloutWedgeEllipse', 'CalloutCloud', 'Cloud', 'Ribbon', 'Ribbon2', 'EllipseRibbon', 'EllipseRibbon2', 'LeftRightRibbon', 'VerticalScroll', 'HorizontalScroll', 'Wave', 'DoubleWave', 'Plus', 'ProcessFlow', 'DecisionFlow', 'InputOutputFlow', 'PredefinedProcessFlow', 'InternalStorageFlow', 'DocumentFlow', 'MultiDocumentFlow', 'TerminatorFlow', 'PreparationFlow', 'ManualInputFlow', 'ManualOperationFlow', 'ConnectorFlow', 'PunchedCardFlow', 'PunchedTapeFlow', 'SummingJunctionFlow', 'OrFlow', 'CollateFlow', 'SortFlow', 'ExtractFlow', 'MergeFlow', 'OfflineStorageFlow', 'OnlineStorageFlow', 'MagneticTapeFlow', 'MagneticDiskFlow', 'MagneticDrumFlow', 'DisplayFlow', 'DelayFlow', 'AlternateProcessFlow', 'OffPageConnectorFlow', 'BlankButton', 'HomeButton', 'HelpButton', 'InformationButton', 'ForwardOrNextButton', 'BackOrPreviousButton', 'EndButton', 'BeginningButton', 'ReturnButton', 'DocumentButton', 'SoundButton', 'MovieButton', 'Gear6', 'Gear9', 'Funnel', 'PlusMath', 'MinusMath', 'MultiplyMath', 'DivideMath', 'EqualMath', 'NotEqualMath', 'CornerTabs', 'SquareTabs', 'PlaqueTabs', 'ChartX', 'ChartStar', 'ChartPlus', 'Chart', 'Table', 'PictureFrame', 'VideoFrame', 'AudioFrame', 'Diagram', 'OleObjectFrame', 'GroupShape', 'GraphicalObject', 'NotDefined'])
      return false unless shape_type_validator.valid?(@shape_type)
      return false if @chart_type.nil?
      chart_type_validator = EnumAttributeValidator.new('String', ['ClusteredColumn', 'StackedColumn', 'PercentsStackedColumn', 'ClusteredColumn3D', 'StackedColumn3D', 'PercentsStackedColumn3D', 'Column3D', 'ClusteredCylinder', 'StackedCylinder', 'PercentsStackedCylinder', 'Cylinder3D', 'ClusteredCone', 'StackedCone', 'PercentsStackedCone', 'Cone3D', 'ClusteredPyramid', 'StackedPyramid', 'PercentsStackedPyramid', 'Pyramid3D', 'Line', 'StackedLine', 'PercentsStackedLine', 'LineWithMarkers', 'StackedLineWithMarkers', 'PercentsStackedLineWithMarkers', 'Line3D', 'Pie', 'Pie3D', 'PieOfPie', 'ExplodedPie', 'ExplodedPie3D', 'BarOfPie', 'PercentsStackedBar', 'ClusteredBar3D', 'ClusteredBar', 'StackedBar', 'StackedBar3D', 'PercentsStackedBar3D', 'ClusteredHorizontalCylinder', 'StackedHorizontalCylinder', 'PercentsStackedHorizontalCylinder', 'ClusteredHorizontalCone', 'StackedHorizontalCone', 'PercentsStackedHorizontalCone', 'ClusteredHorizontalPyramid', 'StackedHorizontalPyramid', 'PercentsStackedHorizontalPyramid', 'Area', 'StackedArea', 'PercentsStackedArea', 'Area3D', 'StackedArea3D', 'PercentsStackedArea3D', 'ScatterWithMarkers', 'ScatterWithSmoothLinesAndMarkers', 'ScatterWithSmoothLines', 'ScatterWithStraightLinesAndMarkers', 'ScatterWithStraightLines', 'HighLowClose', 'OpenHighLowClose', 'VolumeHighLowClose', 'VolumeOpenHighLowClose', 'Surface3D', 'WireframeSurface3D', 'Contour', 'WireframeContour', 'Doughnut', 'ExplodedDoughnut', 'Bubble', 'BubbleWith3D', 'Radar', 'RadarWithMarkers', 'FilledRadar', 'SeriesOfMixedTypes', 'Treemap', 'Sunburst', 'Histogram', 'ParetoLine', 'BoxAndWhisker', 'Waterfall', 'Funnel'])
      return false unless chart_type_validator.valid?(@chart_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ['Shape', 'Chart', 'Table', 'PictureFrame', 'VideoFrame', 'AudioFrame', 'SmartArt', 'OleObjectFrame', 'GroupShape', 'GraphicalObject', 'Connector', 'SmartArtShape'])
      unless validator.valid?(type)
        fail ArgumentError, 'invalid value for "type", must be one of #{validator.allowable_values}.'
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shape_type Object to be assigned
    def shape_type=(shape_type)
      validator = EnumAttributeValidator.new('String', ['Custom', 'Line', 'LineInverse', 'Triangle', 'RightTriangle', 'Rectangle', 'Diamond', 'Parallelogram', 'Trapezoid', 'NonIsoscelesTrapezoid', 'Pentagon', 'Hexagon', 'Heptagon', 'Octagon', 'Decagon', 'Dodecagon', 'FourPointedStar', 'FivePointedStar', 'SixPointedStar', 'SevenPointedStar', 'EightPointedStar', 'TenPointedStar', 'TwelvePointedStar', 'SixteenPointedStar', 'TwentyFourPointedStar', 'ThirtyTwoPointedStar', 'RoundCornerRectangle', 'OneRoundCornerRectangle', 'TwoSamesideRoundCornerRectangle', 'TwoDiagonalRoundCornerRectangle', 'OneSnipOneRoundCornerRectangle', 'OneSnipCornerRectangle', 'TwoSamesideSnipCornerRectangle', 'TwoDiagonalSnipCornerRectangle', 'Plaque', 'Ellipse', 'Teardrop', 'HomePlate', 'Chevron', 'PieWedge', 'Pie', 'BlockArc', 'Donut', 'NoSmoking', 'RightArrow', 'LeftArrow', 'UpArrow', 'DownArrow', 'StripedRightArrow', 'NotchedRightArrow', 'BentUpArrow', 'LeftRightArrow', 'UpDownArrow', 'LeftUpArrow', 'LeftRightUpArrow', 'QuadArrow', 'CalloutLeftArrow', 'CalloutRightArrow', 'CalloutUpArrow', 'CalloutDownArrow', 'CalloutLeftRightArrow', 'CalloutUpDownArrow', 'CalloutQuadArrow', 'BentArrow', 'UTurnArrow', 'CircularArrow', 'LeftCircularArrow', 'LeftRightCircularArrow', 'CurvedRightArrow', 'CurvedLeftArrow', 'CurvedUpArrow', 'CurvedDownArrow', 'SwooshArrow', 'Cube', 'Can', 'LightningBolt', 'Heart', 'Sun', 'Moon', 'SmileyFace', 'IrregularSeal1', 'IrregularSeal2', 'FoldedCorner', 'Bevel', 'Frame', 'HalfFrame', 'Corner', 'DiagonalStripe', 'Chord', 'CurvedArc', 'LeftBracket', 'RightBracket', 'LeftBrace', 'RightBrace', 'BracketPair', 'BracePair', 'StraightConnector1', 'BentConnector2', 'BentConnector3', 'BentConnector4', 'BentConnector5', 'CurvedConnector2', 'CurvedConnector3', 'CurvedConnector4', 'CurvedConnector5', 'Callout1', 'Callout2', 'Callout3', 'Callout1WithAccent', 'Callout2WithAccent', 'Callout3WithAccent', 'Callout1WithBorder', 'Callout2WithBorder', 'Callout3WithBorder', 'Callout1WithBorderAndAccent', 'Callout2WithBorderAndAccent', 'Callout3WithBorderAndAccent', 'CalloutWedgeRectangle', 'CalloutWedgeRoundRectangle', 'CalloutWedgeEllipse', 'CalloutCloud', 'Cloud', 'Ribbon', 'Ribbon2', 'EllipseRibbon', 'EllipseRibbon2', 'LeftRightRibbon', 'VerticalScroll', 'HorizontalScroll', 'Wave', 'DoubleWave', 'Plus', 'ProcessFlow', 'DecisionFlow', 'InputOutputFlow', 'PredefinedProcessFlow', 'InternalStorageFlow', 'DocumentFlow', 'MultiDocumentFlow', 'TerminatorFlow', 'PreparationFlow', 'ManualInputFlow', 'ManualOperationFlow', 'ConnectorFlow', 'PunchedCardFlow', 'PunchedTapeFlow', 'SummingJunctionFlow', 'OrFlow', 'CollateFlow', 'SortFlow', 'ExtractFlow', 'MergeFlow', 'OfflineStorageFlow', 'OnlineStorageFlow', 'MagneticTapeFlow', 'MagneticDiskFlow', 'MagneticDrumFlow', 'DisplayFlow', 'DelayFlow', 'AlternateProcessFlow', 'OffPageConnectorFlow', 'BlankButton', 'HomeButton', 'HelpButton', 'InformationButton', 'ForwardOrNextButton', 'BackOrPreviousButton', 'EndButton', 'BeginningButton', 'ReturnButton', 'DocumentButton', 'SoundButton', 'MovieButton', 'Gear6', 'Gear9', 'Funnel', 'PlusMath', 'MinusMath', 'MultiplyMath', 'DivideMath', 'EqualMath', 'NotEqualMath', 'CornerTabs', 'SquareTabs', 'PlaqueTabs', 'ChartX', 'ChartStar', 'ChartPlus', 'Chart', 'Table', 'PictureFrame', 'VideoFrame', 'AudioFrame', 'Diagram', 'OleObjectFrame', 'GroupShape', 'GraphicalObject', 'NotDefined'])
      unless validator.valid?(shape_type)
        fail ArgumentError, 'invalid value for "shape_type", must be one of #{validator.allowable_values}.'
      end
      @shape_type = shape_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] chart_type Object to be assigned
    def chart_type=(chart_type)
      validator = EnumAttributeValidator.new('String', ['ClusteredColumn', 'StackedColumn', 'PercentsStackedColumn', 'ClusteredColumn3D', 'StackedColumn3D', 'PercentsStackedColumn3D', 'Column3D', 'ClusteredCylinder', 'StackedCylinder', 'PercentsStackedCylinder', 'Cylinder3D', 'ClusteredCone', 'StackedCone', 'PercentsStackedCone', 'Cone3D', 'ClusteredPyramid', 'StackedPyramid', 'PercentsStackedPyramid', 'Pyramid3D', 'Line', 'StackedLine', 'PercentsStackedLine', 'LineWithMarkers', 'StackedLineWithMarkers', 'PercentsStackedLineWithMarkers', 'Line3D', 'Pie', 'Pie3D', 'PieOfPie', 'ExplodedPie', 'ExplodedPie3D', 'BarOfPie', 'PercentsStackedBar', 'ClusteredBar3D', 'ClusteredBar', 'StackedBar', 'StackedBar3D', 'PercentsStackedBar3D', 'ClusteredHorizontalCylinder', 'StackedHorizontalCylinder', 'PercentsStackedHorizontalCylinder', 'ClusteredHorizontalCone', 'StackedHorizontalCone', 'PercentsStackedHorizontalCone', 'ClusteredHorizontalPyramid', 'StackedHorizontalPyramid', 'PercentsStackedHorizontalPyramid', 'Area', 'StackedArea', 'PercentsStackedArea', 'Area3D', 'StackedArea3D', 'PercentsStackedArea3D', 'ScatterWithMarkers', 'ScatterWithSmoothLinesAndMarkers', 'ScatterWithSmoothLines', 'ScatterWithStraightLinesAndMarkers', 'ScatterWithStraightLines', 'HighLowClose', 'OpenHighLowClose', 'VolumeHighLowClose', 'VolumeOpenHighLowClose', 'Surface3D', 'WireframeSurface3D', 'Contour', 'WireframeContour', 'Doughnut', 'ExplodedDoughnut', 'Bubble', 'BubbleWith3D', 'Radar', 'RadarWithMarkers', 'FilledRadar', 'SeriesOfMixedTypes', 'Treemap', 'Sunburst', 'Histogram', 'ParetoLine', 'BoxAndWhisker', 'Waterfall', 'Funnel'])
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
          shapes == o.shapes &&
          fill_format == o.fill_format &&
          effect_format == o.effect_format &&
          line_format == o.line_format &&
          type == o.type &&
          shape_type == o.shape_type &&
          chart_type == o.chart_type &&
          show_data_labels_over_maximum == o.show_data_labels_over_maximum &&
          series == o.series &&
          categories == o.categories &&
          title == o.title &&
          back_wall == o.back_wall &&
          side_wall == o.side_wall &&
          floor == o.floor &&
          legend == o.legend &&
          axes == o.axes &&
          plot_area == o.plot_area
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [self_uri, alternate_links, name, width, height, alternative_text, alternative_text_title, hidden, x, y, z_order_position, shapes, fill_format, effect_format, line_format, type, shape_type, chart_type, show_data_labels_over_maximum, series, categories, title, back_wall, side_wall, floor, legend, axes, plot_area].hash
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
