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
  class TextFrameFormat
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
      if value.nil?
        nil
      else
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
