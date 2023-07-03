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
  # Contains the TextFrame's formatting properties.
  class TextFrameFormat < BaseObject
    # Represents 3d effect properties for a text.
    attr_accessor :three_d_format

    # Gets or sets text wrapping shape.
    attr_accessor :transform

    # Left margin. Left margin.
    attr_accessor :margin_left

    # Right margin.
    attr_accessor :margin_right

    # Top margin.
    attr_accessor :margin_top

    # Bottom margin.
    attr_accessor :margin_bottom

    # True if text is wrapped at TextFrame's margins.
    attr_accessor :wrap_text

    # Returns or sets vertical anchor text in a TextFrame.
    attr_accessor :anchoring_type

    # If True then text should be centered in box horizontally.
    attr_accessor :center_text

    # Determines text orientation. The resulted value of visual text rotation summarized from this property and custom angle in property RotationAngle.
    attr_accessor :text_vertical_type

    # Returns or sets text's auto-fit mode.
    attr_accessor :autofit_type

    # Returns or sets number of columns in the text area. This value must be a positive number. Otherwise, the value will be set to zero.  Value 0 means undefined value.
    attr_accessor :column_count

    # Returns or sets the space between text columns in the text area (in points). This should only apply  when there is more than 1 column present. This value must be a positive number. Otherwise, the value will be set to zero. 
    attr_accessor :column_spacing

    # Returns or set keeping text out of 3D scene entirely.
    attr_accessor :keep_text_flat

    # Specifies the custom rotation that is being applied to the text within the bounding box.
    attr_accessor :rotation_angle

    # Default portion format.
    attr_accessor :default_paragraph_format

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'three_d_format' => :'ThreeDFormat',
        :'transform' => :'Transform',
        :'margin_left' => :'MarginLeft',
        :'margin_right' => :'MarginRight',
        :'margin_top' => :'MarginTop',
        :'margin_bottom' => :'MarginBottom',
        :'wrap_text' => :'WrapText',
        :'anchoring_type' => :'AnchoringType',
        :'center_text' => :'CenterText',
        :'text_vertical_type' => :'TextVerticalType',
        :'autofit_type' => :'AutofitType',
        :'column_count' => :'ColumnCount',
        :'column_spacing' => :'ColumnSpacing',
        :'keep_text_flat' => :'KeepTextFlat',
        :'rotation_angle' => :'RotationAngle',
        :'default_paragraph_format' => :'DefaultParagraphFormat',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'three_d_format' => :'ThreeDFormat',
        :'transform' => :'String',
        :'margin_left' => :'Float',
        :'margin_right' => :'Float',
        :'margin_top' => :'Float',
        :'margin_bottom' => :'Float',
        :'wrap_text' => :'String',
        :'anchoring_type' => :'String',
        :'center_text' => :'String',
        :'text_vertical_type' => :'String',
        :'autofit_type' => :'String',
        :'column_count' => :'Integer',
        :'column_spacing' => :'Float',
        :'keep_text_flat' => :'BOOLEAN',
        :'rotation_angle' => :'Float',
        :'default_paragraph_format' => :'ParagraphFormat',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'ThreeDFormat')
        self.three_d_format = attributes[:'ThreeDFormat']
      end

      if attributes.has_key?(:'Transform')
        self.transform = attributes[:'Transform']
      end

      if attributes.has_key?(:'MarginLeft')
        self.margin_left = attributes[:'MarginLeft']
      end

      if attributes.has_key?(:'MarginRight')
        self.margin_right = attributes[:'MarginRight']
      end

      if attributes.has_key?(:'MarginTop')
        self.margin_top = attributes[:'MarginTop']
      end

      if attributes.has_key?(:'MarginBottom')
        self.margin_bottom = attributes[:'MarginBottom']
      end

      if attributes.has_key?(:'WrapText')
        self.wrap_text = attributes[:'WrapText']
      end

      if attributes.has_key?(:'AnchoringType')
        self.anchoring_type = attributes[:'AnchoringType']
      end

      if attributes.has_key?(:'CenterText')
        self.center_text = attributes[:'CenterText']
      end

      if attributes.has_key?(:'TextVerticalType')
        self.text_vertical_type = attributes[:'TextVerticalType']
      end

      if attributes.has_key?(:'AutofitType')
        self.autofit_type = attributes[:'AutofitType']
      end

      if attributes.has_key?(:'ColumnCount')
        self.column_count = attributes[:'ColumnCount']
      end

      if attributes.has_key?(:'ColumnSpacing')
        self.column_spacing = attributes[:'ColumnSpacing']
      end

      if attributes.has_key?(:'KeepTextFlat')
        self.keep_text_flat = attributes[:'KeepTextFlat']
      end

      if attributes.has_key?(:'RotationAngle')
        self.rotation_angle = attributes[:'RotationAngle']
      end

      if attributes.has_key?(:'DefaultParagraphFormat')
        self.default_paragraph_format = attributes[:'DefaultParagraphFormat']
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
      transform_validator = EnumAttributeValidator.new('String', ['None', 'Plain', 'Stop', 'Triangle', 'TriangleInverted', 'Chevron', 'ChevronInverted', 'RingInside', 'RingOutside', 'ArchUp', 'ArchDown', 'Circle', 'Button', 'ArchUpPour', 'ArchDownPour', 'CirclePour', 'ButtonPour', 'CurveUp', 'CurveDown', 'CanUp', 'CanDown', 'Wave1', 'Wave2', 'DoubleWave1', 'Wave4', 'Inflate', 'Deflate', 'InflateBottom', 'DeflateBottom', 'InflateTop', 'DeflateTop', 'DeflateInflate', 'DeflateInflateDeflate', 'FadeRight', 'FadeLeft', 'FadeUp', 'FadeDown', 'SlantUp', 'SlantDown', 'CascadeUp', 'CascadeDown', 'Custom', 'NotDefined'])
      return false unless transform_validator.valid?(@transform)
      wrap_text_validator = EnumAttributeValidator.new('String', ['False', 'True', 'NotDefined'])
      return false unless wrap_text_validator.valid?(@wrap_text)
      anchoring_type_validator = EnumAttributeValidator.new('String', ['Top', 'Center', 'Bottom', 'Justified', 'Distributed', 'NotDefined'])
      return false unless anchoring_type_validator.valid?(@anchoring_type)
      center_text_validator = EnumAttributeValidator.new('String', ['False', 'True', 'NotDefined'])
      return false unless center_text_validator.valid?(@center_text)
      text_vertical_type_validator = EnumAttributeValidator.new('String', ['Horizontal', 'Vertical', 'Vertical270', 'WordArtVertical', 'EastAsianVertical', 'MongolianVertical', 'WordArtVerticalRightToLeft', 'NotDefined'])
      return false unless text_vertical_type_validator.valid?(@text_vertical_type)
      autofit_type_validator = EnumAttributeValidator.new('String', ['None', 'Normal', 'Shape', 'NotDefined'])
      return false unless autofit_type_validator.valid?(@autofit_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transform Object to be assigned
    def transform=(transform)
      validator = EnumAttributeValidator.new('String', ['None', 'Plain', 'Stop', 'Triangle', 'TriangleInverted', 'Chevron', 'ChevronInverted', 'RingInside', 'RingOutside', 'ArchUp', 'ArchDown', 'Circle', 'Button', 'ArchUpPour', 'ArchDownPour', 'CirclePour', 'ButtonPour', 'CurveUp', 'CurveDown', 'CanUp', 'CanDown', 'Wave1', 'Wave2', 'DoubleWave1', 'Wave4', 'Inflate', 'Deflate', 'InflateBottom', 'DeflateBottom', 'InflateTop', 'DeflateTop', 'DeflateInflate', 'DeflateInflateDeflate', 'FadeRight', 'FadeLeft', 'FadeUp', 'FadeDown', 'SlantUp', 'SlantDown', 'CascadeUp', 'CascadeDown', 'Custom', 'NotDefined'])
      unless validator.valid?(transform)
        fail ArgumentError, 'invalid value for "transform", must be one of #{validator.allowable_values}.'
      end
      @transform = transform
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] wrap_text Object to be assigned
    def wrap_text=(wrap_text)
      validator = EnumAttributeValidator.new('String', ['False', 'True', 'NotDefined'])
      unless validator.valid?(wrap_text)
        fail ArgumentError, 'invalid value for "wrap_text", must be one of #{validator.allowable_values}.'
      end
      @wrap_text = wrap_text
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] anchoring_type Object to be assigned
    def anchoring_type=(anchoring_type)
      validator = EnumAttributeValidator.new('String', ['Top', 'Center', 'Bottom', 'Justified', 'Distributed', 'NotDefined'])
      unless validator.valid?(anchoring_type)
        fail ArgumentError, 'invalid value for "anchoring_type", must be one of #{validator.allowable_values}.'
      end
      @anchoring_type = anchoring_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] center_text Object to be assigned
    def center_text=(center_text)
      validator = EnumAttributeValidator.new('String', ['False', 'True', 'NotDefined'])
      unless validator.valid?(center_text)
        fail ArgumentError, 'invalid value for "center_text", must be one of #{validator.allowable_values}.'
      end
      @center_text = center_text
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] text_vertical_type Object to be assigned
    def text_vertical_type=(text_vertical_type)
      validator = EnumAttributeValidator.new('String', ['Horizontal', 'Vertical', 'Vertical270', 'WordArtVertical', 'EastAsianVertical', 'MongolianVertical', 'WordArtVerticalRightToLeft', 'NotDefined'])
      unless validator.valid?(text_vertical_type)
        fail ArgumentError, 'invalid value for "text_vertical_type", must be one of #{validator.allowable_values}.'
      end
      @text_vertical_type = text_vertical_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] autofit_type Object to be assigned
    def autofit_type=(autofit_type)
      validator = EnumAttributeValidator.new('String', ['None', 'Normal', 'Shape', 'NotDefined'])
      unless validator.valid?(autofit_type)
        fail ArgumentError, 'invalid value for "autofit_type", must be one of #{validator.allowable_values}.'
      end
      @autofit_type = autofit_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          three_d_format == o.three_d_format &&
          transform == o.transform &&
          margin_left == o.margin_left &&
          margin_right == o.margin_right &&
          margin_top == o.margin_top &&
          margin_bottom == o.margin_bottom &&
          wrap_text == o.wrap_text &&
          anchoring_type == o.anchoring_type &&
          center_text == o.center_text &&
          text_vertical_type == o.text_vertical_type &&
          autofit_type == o.autofit_type &&
          column_count == o.column_count &&
          column_spacing == o.column_spacing &&
          keep_text_flat == o.keep_text_flat &&
          rotation_angle == o.rotation_angle &&
          default_paragraph_format == o.default_paragraph_format
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [three_d_format, transform, margin_left, margin_right, margin_top, margin_bottom, wrap_text, anchoring_type, center_text, text_vertical_type, autofit_type, column_count, column_spacing, keep_text_flat, rotation_angle, default_paragraph_format].hash
    end
  end
end
