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
  # Represents Pattern Fill
  class PatternFill < FillFormat
    # Gets or sets the back color of the pattern fill.
    attr_accessor :back_color

    # Gets or sets the fore color of the pattern fill.
    attr_accessor :fore_color

    # Gets or sets the style of pattern fill.
    attr_accessor :style

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      super.merge({
        :'back_color' => :'BackColor',
        :'fore_color' => :'ForeColor',
        :'style' => :'Style',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'back_color' => :'String',
        :'fore_color' => :'String',
        :'style' => :'String',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'BackColor')
        self.back_color = attributes[:'BackColor']
      end

      if attributes.has_key?(:'ForeColor')
        self.fore_color = attributes[:'ForeColor']
      end

      if attributes.has_key?(:'Style')
        self.style = attributes[:'Style']
      end
      self.type = 'Pattern'
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = super
      if @style.nil?
        invalid_properties.push('invalid value for "style", style cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !super
      return false if @style.nil?
      style_validator = EnumAttributeValidator.new('String', ['Unknown', 'Percent05', 'Percent10', 'Percent20', 'Percent25', 'Percent30', 'Percent40', 'Percent50', 'Percent60', 'Percent70', 'Percent75', 'Percent80', 'Percent90', 'DarkHorizontal', 'DarkVertical', 'DarkDownwardDiagonal', 'DarkUpwardDiagonal', 'SmallCheckerBoard', 'Trellis', 'LightHorizontal', 'LightVertical', 'LightDownwardDiagonal', 'LightUpwardDiagonal', 'SmallGrid', 'DottedDiamond', 'WideDownwardDiagonal', 'WideUpwardDiagonal', 'DashedUpwardDiagonal', 'DashedDownwardDiagonal', 'NarrowVertical', 'NarrowHorizontal', 'DashedVertical', 'DashedHorizontal', 'LargeConfetti', 'LargeGrid', 'HorizontalBrick', 'LargeCheckerBoard', 'SmallConfetti', 'Zigzag', 'SolidDiamond', 'DiagonalBrick', 'OutlinedDiamond', 'Plaid', 'Sphere', 'Weave', 'DottedGrid', 'Divot', 'Shingle', 'Wave', 'Horizontal', 'Vertical', 'Cross', 'DownwardDiagonal', 'UpwardDiagonal', 'DiagonalCross', 'NotDefined'])
      return false unless style_validator.valid?(@style)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] style Object to be assigned
    def style=(style)
      validator = EnumAttributeValidator.new('String', ['Unknown', 'Percent05', 'Percent10', 'Percent20', 'Percent25', 'Percent30', 'Percent40', 'Percent50', 'Percent60', 'Percent70', 'Percent75', 'Percent80', 'Percent90', 'DarkHorizontal', 'DarkVertical', 'DarkDownwardDiagonal', 'DarkUpwardDiagonal', 'SmallCheckerBoard', 'Trellis', 'LightHorizontal', 'LightVertical', 'LightDownwardDiagonal', 'LightUpwardDiagonal', 'SmallGrid', 'DottedDiamond', 'WideDownwardDiagonal', 'WideUpwardDiagonal', 'DashedUpwardDiagonal', 'DashedDownwardDiagonal', 'NarrowVertical', 'NarrowHorizontal', 'DashedVertical', 'DashedHorizontal', 'LargeConfetti', 'LargeGrid', 'HorizontalBrick', 'LargeCheckerBoard', 'SmallConfetti', 'Zigzag', 'SolidDiamond', 'DiagonalBrick', 'OutlinedDiamond', 'Plaid', 'Sphere', 'Weave', 'DottedGrid', 'Divot', 'Shingle', 'Wave', 'Horizontal', 'Vertical', 'Cross', 'DownwardDiagonal', 'UpwardDiagonal', 'DiagonalCross', 'NotDefined'])
      unless validator.valid?(style)
        fail ArgumentError, 'invalid value for "style", must be one of #{validator.allowable_values}.'
      end
      @style = style
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          back_color == o.back_color &&
          fore_color == o.fore_color &&
          style == o.style
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [type, back_color, fore_color, style].hash
    end
  end
end
