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
  # Represents GeometryShape resource.
  class GeometryShape < ShapeBase
    # Combined shape type.
    attr_accessor :shape_type

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      super.merge({
        :'shape_type' => :'ShapeType',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'shape_type' => :'String',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'ShapeType')
        self.shape_type = attributes[:'ShapeType']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = super
      if @shape_type.nil?
        invalid_properties.push('invalid value for "shape_type", shape_type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !super
      return false if @shape_type.nil?
      shape_type_validator = EnumAttributeValidator.new('String', ['Custom', 'Line', 'LineInverse', 'Triangle', 'RightTriangle', 'Rectangle', 'Diamond', 'Parallelogram', 'Trapezoid', 'NonIsoscelesTrapezoid', 'Pentagon', 'Hexagon', 'Heptagon', 'Octagon', 'Decagon', 'Dodecagon', 'FourPointedStar', 'FivePointedStar', 'SixPointedStar', 'SevenPointedStar', 'EightPointedStar', 'TenPointedStar', 'TwelvePointedStar', 'SixteenPointedStar', 'TwentyFourPointedStar', 'ThirtyTwoPointedStar', 'RoundCornerRectangle', 'OneRoundCornerRectangle', 'TwoSamesideRoundCornerRectangle', 'TwoDiagonalRoundCornerRectangle', 'OneSnipOneRoundCornerRectangle', 'OneSnipCornerRectangle', 'TwoSamesideSnipCornerRectangle', 'TwoDiagonalSnipCornerRectangle', 'Plaque', 'Ellipse', 'Teardrop', 'HomePlate', 'Chevron', 'PieWedge', 'Pie', 'BlockArc', 'Donut', 'NoSmoking', 'RightArrow', 'LeftArrow', 'UpArrow', 'DownArrow', 'StripedRightArrow', 'NotchedRightArrow', 'BentUpArrow', 'LeftRightArrow', 'UpDownArrow', 'LeftUpArrow', 'LeftRightUpArrow', 'QuadArrow', 'CalloutLeftArrow', 'CalloutRightArrow', 'CalloutUpArrow', 'CalloutDownArrow', 'CalloutLeftRightArrow', 'CalloutUpDownArrow', 'CalloutQuadArrow', 'BentArrow', 'UTurnArrow', 'CircularArrow', 'LeftCircularArrow', 'LeftRightCircularArrow', 'CurvedRightArrow', 'CurvedLeftArrow', 'CurvedUpArrow', 'CurvedDownArrow', 'SwooshArrow', 'Cube', 'Can', 'LightningBolt', 'Heart', 'Sun', 'Moon', 'SmileyFace', 'IrregularSeal1', 'IrregularSeal2', 'FoldedCorner', 'Bevel', 'Frame', 'HalfFrame', 'Corner', 'DiagonalStripe', 'Chord', 'CurvedArc', 'LeftBracket', 'RightBracket', 'LeftBrace', 'RightBrace', 'BracketPair', 'BracePair', 'StraightConnector1', 'BentConnector2', 'BentConnector3', 'BentConnector4', 'BentConnector5', 'CurvedConnector2', 'CurvedConnector3', 'CurvedConnector4', 'CurvedConnector5', 'Callout1', 'Callout2', 'Callout3', 'Callout1WithAccent', 'Callout2WithAccent', 'Callout3WithAccent', 'Callout1WithBorder', 'Callout2WithBorder', 'Callout3WithBorder', 'Callout1WithBorderAndAccent', 'Callout2WithBorderAndAccent', 'Callout3WithBorderAndAccent', 'CalloutWedgeRectangle', 'CalloutWedgeRoundRectangle', 'CalloutWedgeEllipse', 'CalloutCloud', 'Cloud', 'Ribbon', 'Ribbon2', 'EllipseRibbon', 'EllipseRibbon2', 'LeftRightRibbon', 'VerticalScroll', 'HorizontalScroll', 'Wave', 'DoubleWave', 'Plus', 'ProcessFlow', 'DecisionFlow', 'InputOutputFlow', 'PredefinedProcessFlow', 'InternalStorageFlow', 'DocumentFlow', 'MultiDocumentFlow', 'TerminatorFlow', 'PreparationFlow', 'ManualInputFlow', 'ManualOperationFlow', 'ConnectorFlow', 'PunchedCardFlow', 'PunchedTapeFlow', 'SummingJunctionFlow', 'OrFlow', 'CollateFlow', 'SortFlow', 'ExtractFlow', 'MergeFlow', 'OfflineStorageFlow', 'OnlineStorageFlow', 'MagneticTapeFlow', 'MagneticDiskFlow', 'MagneticDrumFlow', 'DisplayFlow', 'DelayFlow', 'AlternateProcessFlow', 'OffPageConnectorFlow', 'BlankButton', 'HomeButton', 'HelpButton', 'InformationButton', 'ForwardOrNextButton', 'BackOrPreviousButton', 'EndButton', 'BeginningButton', 'ReturnButton', 'DocumentButton', 'SoundButton', 'MovieButton', 'Gear6', 'Gear9', 'Funnel', 'PlusMath', 'MinusMath', 'MultiplyMath', 'DivideMath', 'EqualMath', 'NotEqualMath', 'CornerTabs', 'SquareTabs', 'PlaqueTabs', 'ChartX', 'ChartStar', 'ChartPlus', 'NotDefined'])
      return false unless shape_type_validator.valid?(@shape_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shape_type Object to be assigned
    def shape_type=(shape_type)
      validator = EnumAttributeValidator.new('String', ['Custom', 'Line', 'LineInverse', 'Triangle', 'RightTriangle', 'Rectangle', 'Diamond', 'Parallelogram', 'Trapezoid', 'NonIsoscelesTrapezoid', 'Pentagon', 'Hexagon', 'Heptagon', 'Octagon', 'Decagon', 'Dodecagon', 'FourPointedStar', 'FivePointedStar', 'SixPointedStar', 'SevenPointedStar', 'EightPointedStar', 'TenPointedStar', 'TwelvePointedStar', 'SixteenPointedStar', 'TwentyFourPointedStar', 'ThirtyTwoPointedStar', 'RoundCornerRectangle', 'OneRoundCornerRectangle', 'TwoSamesideRoundCornerRectangle', 'TwoDiagonalRoundCornerRectangle', 'OneSnipOneRoundCornerRectangle', 'OneSnipCornerRectangle', 'TwoSamesideSnipCornerRectangle', 'TwoDiagonalSnipCornerRectangle', 'Plaque', 'Ellipse', 'Teardrop', 'HomePlate', 'Chevron', 'PieWedge', 'Pie', 'BlockArc', 'Donut', 'NoSmoking', 'RightArrow', 'LeftArrow', 'UpArrow', 'DownArrow', 'StripedRightArrow', 'NotchedRightArrow', 'BentUpArrow', 'LeftRightArrow', 'UpDownArrow', 'LeftUpArrow', 'LeftRightUpArrow', 'QuadArrow', 'CalloutLeftArrow', 'CalloutRightArrow', 'CalloutUpArrow', 'CalloutDownArrow', 'CalloutLeftRightArrow', 'CalloutUpDownArrow', 'CalloutQuadArrow', 'BentArrow', 'UTurnArrow', 'CircularArrow', 'LeftCircularArrow', 'LeftRightCircularArrow', 'CurvedRightArrow', 'CurvedLeftArrow', 'CurvedUpArrow', 'CurvedDownArrow', 'SwooshArrow', 'Cube', 'Can', 'LightningBolt', 'Heart', 'Sun', 'Moon', 'SmileyFace', 'IrregularSeal1', 'IrregularSeal2', 'FoldedCorner', 'Bevel', 'Frame', 'HalfFrame', 'Corner', 'DiagonalStripe', 'Chord', 'CurvedArc', 'LeftBracket', 'RightBracket', 'LeftBrace', 'RightBrace', 'BracketPair', 'BracePair', 'StraightConnector1', 'BentConnector2', 'BentConnector3', 'BentConnector4', 'BentConnector5', 'CurvedConnector2', 'CurvedConnector3', 'CurvedConnector4', 'CurvedConnector5', 'Callout1', 'Callout2', 'Callout3', 'Callout1WithAccent', 'Callout2WithAccent', 'Callout3WithAccent', 'Callout1WithBorder', 'Callout2WithBorder', 'Callout3WithBorder', 'Callout1WithBorderAndAccent', 'Callout2WithBorderAndAccent', 'Callout3WithBorderAndAccent', 'CalloutWedgeRectangle', 'CalloutWedgeRoundRectangle', 'CalloutWedgeEllipse', 'CalloutCloud', 'Cloud', 'Ribbon', 'Ribbon2', 'EllipseRibbon', 'EllipseRibbon2', 'LeftRightRibbon', 'VerticalScroll', 'HorizontalScroll', 'Wave', 'DoubleWave', 'Plus', 'ProcessFlow', 'DecisionFlow', 'InputOutputFlow', 'PredefinedProcessFlow', 'InternalStorageFlow', 'DocumentFlow', 'MultiDocumentFlow', 'TerminatorFlow', 'PreparationFlow', 'ManualInputFlow', 'ManualOperationFlow', 'ConnectorFlow', 'PunchedCardFlow', 'PunchedTapeFlow', 'SummingJunctionFlow', 'OrFlow', 'CollateFlow', 'SortFlow', 'ExtractFlow', 'MergeFlow', 'OfflineStorageFlow', 'OnlineStorageFlow', 'MagneticTapeFlow', 'MagneticDiskFlow', 'MagneticDrumFlow', 'DisplayFlow', 'DelayFlow', 'AlternateProcessFlow', 'OffPageConnectorFlow', 'BlankButton', 'HomeButton', 'HelpButton', 'InformationButton', 'ForwardOrNextButton', 'BackOrPreviousButton', 'EndButton', 'BeginningButton', 'ReturnButton', 'DocumentButton', 'SoundButton', 'MovieButton', 'Gear6', 'Gear9', 'Funnel', 'PlusMath', 'MinusMath', 'MultiplyMath', 'DivideMath', 'EqualMath', 'NotEqualMath', 'CornerTabs', 'SquareTabs', 'PlaqueTabs', 'ChartX', 'ChartStar', 'ChartPlus', 'NotDefined'])
      unless validator.valid?(shape_type)
        fail ArgumentError, 'invalid value for "shape_type", must be one of #{validator.allowable_values}.'
      end
      @shape_type = shape_type
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
          shape_type == o.shape_type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [self_uri, alternate_links, name, width, height, alternative_text, alternative_text_title, hidden, x, y, z_order_position, fill_format, effect_format, three_d_format, line_format, hyperlink_click, hyperlink_mouse_over, type, shape_type].hash
    end
  end
end
