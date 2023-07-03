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
  # Line format.
  class LineFormat < BaseObject
    # Alignment.
    attr_accessor :alignment

    # Cap style.
    attr_accessor :cap_style

    # Dash style.
    attr_accessor :dash_style

    # Join style.
    attr_accessor :join_style

    # Style.
    attr_accessor :style

    # Sketch type.
    attr_accessor :sketch_type

    # Begin arrowhead.
    attr_accessor :begin_arrow_head

    # End arrowhead.
    attr_accessor :end_arrow_head

    # Custom dash pattern.
    attr_accessor :custom_dash_pattern

    # Fill format.
    attr_accessor :fill_format

    # Miter limit.
    attr_accessor :miter_limit

    # Width.
    attr_accessor :width

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'alignment' => :'Alignment',
        :'cap_style' => :'CapStyle',
        :'dash_style' => :'DashStyle',
        :'join_style' => :'JoinStyle',
        :'style' => :'Style',
        :'sketch_type' => :'SketchType',
        :'begin_arrow_head' => :'BeginArrowHead',
        :'end_arrow_head' => :'EndArrowHead',
        :'custom_dash_pattern' => :'CustomDashPattern',
        :'fill_format' => :'FillFormat',
        :'miter_limit' => :'MiterLimit',
        :'width' => :'Width',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'alignment' => :'String',
        :'cap_style' => :'String',
        :'dash_style' => :'String',
        :'join_style' => :'String',
        :'style' => :'String',
        :'sketch_type' => :'String',
        :'begin_arrow_head' => :'ArrowHeadProperties',
        :'end_arrow_head' => :'ArrowHeadProperties',
        :'custom_dash_pattern' => :'CustomDashPattern',
        :'fill_format' => :'FillFormat',
        :'miter_limit' => :'Float',
        :'width' => :'Float',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'Alignment')
        self.alignment = attributes[:'Alignment']
      end

      if attributes.has_key?(:'CapStyle')
        self.cap_style = attributes[:'CapStyle']
      end

      if attributes.has_key?(:'DashStyle')
        self.dash_style = attributes[:'DashStyle']
      end

      if attributes.has_key?(:'JoinStyle')
        self.join_style = attributes[:'JoinStyle']
      end

      if attributes.has_key?(:'Style')
        self.style = attributes[:'Style']
      end

      if attributes.has_key?(:'SketchType')
        self.sketch_type = attributes[:'SketchType']
      end

      if attributes.has_key?(:'BeginArrowHead')
        self.begin_arrow_head = attributes[:'BeginArrowHead']
      end

      if attributes.has_key?(:'EndArrowHead')
        self.end_arrow_head = attributes[:'EndArrowHead']
      end

      if attributes.has_key?(:'CustomDashPattern')
        self.custom_dash_pattern = attributes[:'CustomDashPattern']
      end

      if attributes.has_key?(:'FillFormat')
        self.fill_format = attributes[:'FillFormat']
      end

      if attributes.has_key?(:'MiterLimit')
        self.miter_limit = attributes[:'MiterLimit']
      end

      if attributes.has_key?(:'Width')
        self.width = attributes[:'Width']
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
      alignment_validator = EnumAttributeValidator.new('String', ['Center', 'Inset', 'NotDefined'])
      return false unless alignment_validator.valid?(@alignment)
      cap_style_validator = EnumAttributeValidator.new('String', ['Round', 'Square', 'Flat', 'NotDefined'])
      return false unless cap_style_validator.valid?(@cap_style)
      dash_style_validator = EnumAttributeValidator.new('String', ['Solid', 'Dot', 'Dash', 'LargeDash', 'DashDot', 'LargeDashDot', 'LargeDashDotDot', 'SystemDash', 'SystemDot', 'SystemDashDot', 'SystemDashDotDot', 'Custom', 'NotDefined'])
      return false unless dash_style_validator.valid?(@dash_style)
      join_style_validator = EnumAttributeValidator.new('String', ['Round', 'Bevel', 'Miter', 'NotDefined'])
      return false unless join_style_validator.valid?(@join_style)
      style_validator = EnumAttributeValidator.new('String', ['Single', 'ThinThin', 'ThinThick', 'ThickThin', 'ThickBetweenThin', 'NotDefined'])
      return false unless style_validator.valid?(@style)
      sketch_type_validator = EnumAttributeValidator.new('String', ['None', 'Curved', 'Freehand', 'Scribble', 'NotDefined'])
      return false unless sketch_type_validator.valid?(@sketch_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] alignment Object to be assigned
    def alignment=(alignment)
      validator = EnumAttributeValidator.new('String', ['Center', 'Inset', 'NotDefined'])
      unless validator.valid?(alignment)
        fail ArgumentError, 'invalid value for "alignment", must be one of #{validator.allowable_values}.'
      end
      @alignment = alignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cap_style Object to be assigned
    def cap_style=(cap_style)
      validator = EnumAttributeValidator.new('String', ['Round', 'Square', 'Flat', 'NotDefined'])
      unless validator.valid?(cap_style)
        fail ArgumentError, 'invalid value for "cap_style", must be one of #{validator.allowable_values}.'
      end
      @cap_style = cap_style
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] dash_style Object to be assigned
    def dash_style=(dash_style)
      validator = EnumAttributeValidator.new('String', ['Solid', 'Dot', 'Dash', 'LargeDash', 'DashDot', 'LargeDashDot', 'LargeDashDotDot', 'SystemDash', 'SystemDot', 'SystemDashDot', 'SystemDashDotDot', 'Custom', 'NotDefined'])
      unless validator.valid?(dash_style)
        fail ArgumentError, 'invalid value for "dash_style", must be one of #{validator.allowable_values}.'
      end
      @dash_style = dash_style
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] join_style Object to be assigned
    def join_style=(join_style)
      validator = EnumAttributeValidator.new('String', ['Round', 'Bevel', 'Miter', 'NotDefined'])
      unless validator.valid?(join_style)
        fail ArgumentError, 'invalid value for "join_style", must be one of #{validator.allowable_values}.'
      end
      @join_style = join_style
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] style Object to be assigned
    def style=(style)
      validator = EnumAttributeValidator.new('String', ['Single', 'ThinThin', 'ThinThick', 'ThickThin', 'ThickBetweenThin', 'NotDefined'])
      unless validator.valid?(style)
        fail ArgumentError, 'invalid value for "style", must be one of #{validator.allowable_values}.'
      end
      @style = style
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sketch_type Object to be assigned
    def sketch_type=(sketch_type)
      validator = EnumAttributeValidator.new('String', ['None', 'Curved', 'Freehand', 'Scribble', 'NotDefined'])
      unless validator.valid?(sketch_type)
        fail ArgumentError, 'invalid value for "sketch_type", must be one of #{validator.allowable_values}.'
      end
      @sketch_type = sketch_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          alignment == o.alignment &&
          cap_style == o.cap_style &&
          dash_style == o.dash_style &&
          join_style == o.join_style &&
          style == o.style &&
          sketch_type == o.sketch_type &&
          begin_arrow_head == o.begin_arrow_head &&
          end_arrow_head == o.end_arrow_head &&
          custom_dash_pattern == o.custom_dash_pattern &&
          fill_format == o.fill_format &&
          miter_limit == o.miter_limit &&
          width == o.width
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [alignment, cap_style, dash_style, join_style, style, sketch_type, begin_arrow_head, end_arrow_head, custom_dash_pattern, fill_format, miter_limit, width].hash
    end
  end
end
