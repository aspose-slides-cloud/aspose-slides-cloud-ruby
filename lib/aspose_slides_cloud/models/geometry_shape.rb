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
          shapes == o.shapes &&
          fill_format == o.fill_format &&
          effect_format == o.effect_format &&
          line_format == o.line_format &&
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
      [self_uri, alternate_links, name, width, height, alternative_text, alternative_text_title, hidden, x, y, z_order_position, shapes, fill_format, effect_format, line_format, type, shape_type].hash
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
