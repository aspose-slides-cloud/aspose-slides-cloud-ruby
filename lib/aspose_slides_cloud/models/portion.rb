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
  # Represents portion resource
  class Portion < ResourceBase
    # Text.
    attr_accessor :text

    # Math paragraph.
    attr_accessor :math_paragraph

    # True for bold font.
    attr_accessor :font_bold

    # True for italic font.
    attr_accessor :font_italic

    # Text underline type.
    attr_accessor :font_underline

    # Text strikethrough type.
    attr_accessor :strikethrough_type

    # Text capitalization type.
    attr_accessor :text_cap_type

    # Superscript or subscript of the text.
    attr_accessor :escapement

    # Intercharacter spacing increment.
    attr_accessor :spacing

    # Font color.
    attr_accessor :font_color

    # Highlight color.
    attr_accessor :highlight_color

    # Font height.
    attr_accessor :font_height

    # True to normalize the text.
    attr_accessor :normalise_height

    # True if the text proof should be disabled.
    attr_accessor :proof_disabled

    # True if smart tag should be cleaned.
    attr_accessor :smart_tag_clean

    # Minimal font size for kerning.
    attr_accessor :kerning_minimal_size

    # True if numbers should ignore East-Asian specific vertical text layout.
    attr_accessor :kumimoji

    # Proving language ID.
    attr_accessor :language_id

    # Alternative proving language ID.
    attr_accessor :alternative_language_id

    # True if underline style has own FillFormat properties.
    attr_accessor :is_hard_underline_fill

    # True if underline style has own LineFormat properties.
    attr_accessor :is_hard_underline_line

    # Fill format.
    attr_accessor :fill_format

    # Effect format.
    attr_accessor :effect_format

    # Line format.
    attr_accessor :line_format

    # Underline fill format.
    attr_accessor :underline_fill_format

    # Underline line format.
    attr_accessor :underline_line_format

    # Hyperlink defined for mouse click.
    attr_accessor :hyperlink_click

    # Hyperlink defined for mouse over.
    attr_accessor :hyperlink_mouse_over

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
        :'text' => :'Text',
        :'math_paragraph' => :'MathParagraph',
        :'font_bold' => :'FontBold',
        :'font_italic' => :'FontItalic',
        :'font_underline' => :'FontUnderline',
        :'strikethrough_type' => :'StrikethroughType',
        :'text_cap_type' => :'TextCapType',
        :'escapement' => :'Escapement',
        :'spacing' => :'Spacing',
        :'font_color' => :'FontColor',
        :'highlight_color' => :'HighlightColor',
        :'font_height' => :'FontHeight',
        :'normalise_height' => :'NormaliseHeight',
        :'proof_disabled' => :'ProofDisabled',
        :'smart_tag_clean' => :'SmartTagClean',
        :'kerning_minimal_size' => :'KerningMinimalSize',
        :'kumimoji' => :'Kumimoji',
        :'language_id' => :'LanguageId',
        :'alternative_language_id' => :'AlternativeLanguageId',
        :'is_hard_underline_fill' => :'IsHardUnderlineFill',
        :'is_hard_underline_line' => :'IsHardUnderlineLine',
        :'fill_format' => :'FillFormat',
        :'effect_format' => :'EffectFormat',
        :'line_format' => :'LineFormat',
        :'underline_fill_format' => :'UnderlineFillFormat',
        :'underline_line_format' => :'UnderlineLineFormat',
        :'hyperlink_click' => :'HyperlinkClick',
        :'hyperlink_mouse_over' => :'HyperlinkMouseOver',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'text' => :'String',
        :'math_paragraph' => :'MathParagraph',
        :'font_bold' => :'String',
        :'font_italic' => :'String',
        :'font_underline' => :'String',
        :'strikethrough_type' => :'String',
        :'text_cap_type' => :'String',
        :'escapement' => :'Float',
        :'spacing' => :'Float',
        :'font_color' => :'String',
        :'highlight_color' => :'String',
        :'font_height' => :'Float',
        :'normalise_height' => :'String',
        :'proof_disabled' => :'String',
        :'smart_tag_clean' => :'BOOLEAN',
        :'kerning_minimal_size' => :'Float',
        :'kumimoji' => :'String',
        :'language_id' => :'String',
        :'alternative_language_id' => :'String',
        :'is_hard_underline_fill' => :'String',
        :'is_hard_underline_line' => :'String',
        :'fill_format' => :'FillFormat',
        :'effect_format' => :'EffectFormat',
        :'line_format' => :'LineFormat',
        :'underline_fill_format' => :'FillFormat',
        :'underline_line_format' => :'LineFormat',
        :'hyperlink_click' => :'Hyperlink',
        :'hyperlink_mouse_over' => :'Hyperlink',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'Text')
        self.text = attributes[:'Text']
      end

      if attributes.has_key?(:'MathParagraph')
        self.math_paragraph = attributes[:'MathParagraph']
      end

      if attributes.has_key?(:'FontBold')
        self.font_bold = attributes[:'FontBold']
      end

      if attributes.has_key?(:'FontItalic')
        self.font_italic = attributes[:'FontItalic']
      end

      if attributes.has_key?(:'FontUnderline')
        self.font_underline = attributes[:'FontUnderline']
      end

      if attributes.has_key?(:'StrikethroughType')
        self.strikethrough_type = attributes[:'StrikethroughType']
      end

      if attributes.has_key?(:'TextCapType')
        self.text_cap_type = attributes[:'TextCapType']
      end

      if attributes.has_key?(:'Escapement')
        self.escapement = attributes[:'Escapement']
      end

      if attributes.has_key?(:'Spacing')
        self.spacing = attributes[:'Spacing']
      end

      if attributes.has_key?(:'FontColor')
        self.font_color = attributes[:'FontColor']
      end

      if attributes.has_key?(:'HighlightColor')
        self.highlight_color = attributes[:'HighlightColor']
      end

      if attributes.has_key?(:'FontHeight')
        self.font_height = attributes[:'FontHeight']
      end

      if attributes.has_key?(:'NormaliseHeight')
        self.normalise_height = attributes[:'NormaliseHeight']
      end

      if attributes.has_key?(:'ProofDisabled')
        self.proof_disabled = attributes[:'ProofDisabled']
      end

      if attributes.has_key?(:'SmartTagClean')
        self.smart_tag_clean = attributes[:'SmartTagClean']
      end

      if attributes.has_key?(:'KerningMinimalSize')
        self.kerning_minimal_size = attributes[:'KerningMinimalSize']
      end

      if attributes.has_key?(:'Kumimoji')
        self.kumimoji = attributes[:'Kumimoji']
      end

      if attributes.has_key?(:'LanguageId')
        self.language_id = attributes[:'LanguageId']
      end

      if attributes.has_key?(:'AlternativeLanguageId')
        self.alternative_language_id = attributes[:'AlternativeLanguageId']
      end

      if attributes.has_key?(:'IsHardUnderlineFill')
        self.is_hard_underline_fill = attributes[:'IsHardUnderlineFill']
      end

      if attributes.has_key?(:'IsHardUnderlineLine')
        self.is_hard_underline_line = attributes[:'IsHardUnderlineLine']
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

      if attributes.has_key?(:'UnderlineFillFormat')
        self.underline_fill_format = attributes[:'UnderlineFillFormat']
      end

      if attributes.has_key?(:'UnderlineLineFormat')
        self.underline_line_format = attributes[:'UnderlineLineFormat']
      end

      if attributes.has_key?(:'HyperlinkClick')
        self.hyperlink_click = attributes[:'HyperlinkClick']
      end

      if attributes.has_key?(:'HyperlinkMouseOver')
        self.hyperlink_mouse_over = attributes[:'HyperlinkMouseOver']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = super
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !super
      font_bold_validator = EnumAttributeValidator.new('String', ['False', 'True', 'NotDefined'])
      return false unless font_bold_validator.valid?(@font_bold)
      font_italic_validator = EnumAttributeValidator.new('String', ['False', 'True', 'NotDefined'])
      return false unless font_italic_validator.valid?(@font_italic)
      font_underline_validator = EnumAttributeValidator.new('String', ['None', 'Words', 'Single', 'Double', 'Heavy', 'Dotted', 'HeavyDotted', 'Dashed', 'HeavyDashed', 'LongDashed', 'HeavyLongDashed', 'DotDash', 'HeavyDotDash', 'DotDotDash', 'HeavyDotDotDash', 'Wavy', 'HeavyWavy', 'DoubleWavy', 'NotDefined'])
      return false unless font_underline_validator.valid?(@font_underline)
      strikethrough_type_validator = EnumAttributeValidator.new('String', ['None', 'Single', 'Double', 'NotDefined'])
      return false unless strikethrough_type_validator.valid?(@strikethrough_type)
      text_cap_type_validator = EnumAttributeValidator.new('String', ['None', 'Small', 'All', 'NotDefined'])
      return false unless text_cap_type_validator.valid?(@text_cap_type)
      normalise_height_validator = EnumAttributeValidator.new('String', ['False', 'True', 'NotDefined'])
      return false unless normalise_height_validator.valid?(@normalise_height)
      proof_disabled_validator = EnumAttributeValidator.new('String', ['False', 'True', 'NotDefined'])
      return false unless proof_disabled_validator.valid?(@proof_disabled)
      kumimoji_validator = EnumAttributeValidator.new('String', ['False', 'True', 'NotDefined'])
      return false unless kumimoji_validator.valid?(@kumimoji)
      is_hard_underline_fill_validator = EnumAttributeValidator.new('String', ['False', 'True', 'NotDefined'])
      return false unless is_hard_underline_fill_validator.valid?(@is_hard_underline_fill)
      is_hard_underline_line_validator = EnumAttributeValidator.new('String', ['False', 'True', 'NotDefined'])
      return false unless is_hard_underline_line_validator.valid?(@is_hard_underline_line)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] font_bold Object to be assigned
    def font_bold=(font_bold)
      validator = EnumAttributeValidator.new('String', ['False', 'True', 'NotDefined'])
      unless validator.valid?(font_bold)
        fail ArgumentError, 'invalid value for "font_bold", must be one of #{validator.allowable_values}.'
      end
      @font_bold = font_bold
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] font_italic Object to be assigned
    def font_italic=(font_italic)
      validator = EnumAttributeValidator.new('String', ['False', 'True', 'NotDefined'])
      unless validator.valid?(font_italic)
        fail ArgumentError, 'invalid value for "font_italic", must be one of #{validator.allowable_values}.'
      end
      @font_italic = font_italic
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] font_underline Object to be assigned
    def font_underline=(font_underline)
      validator = EnumAttributeValidator.new('String', ['None', 'Words', 'Single', 'Double', 'Heavy', 'Dotted', 'HeavyDotted', 'Dashed', 'HeavyDashed', 'LongDashed', 'HeavyLongDashed', 'DotDash', 'HeavyDotDash', 'DotDotDash', 'HeavyDotDotDash', 'Wavy', 'HeavyWavy', 'DoubleWavy', 'NotDefined'])
      unless validator.valid?(font_underline)
        fail ArgumentError, 'invalid value for "font_underline", must be one of #{validator.allowable_values}.'
      end
      @font_underline = font_underline
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] strikethrough_type Object to be assigned
    def strikethrough_type=(strikethrough_type)
      validator = EnumAttributeValidator.new('String', ['None', 'Single', 'Double', 'NotDefined'])
      unless validator.valid?(strikethrough_type)
        fail ArgumentError, 'invalid value for "strikethrough_type", must be one of #{validator.allowable_values}.'
      end
      @strikethrough_type = strikethrough_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] text_cap_type Object to be assigned
    def text_cap_type=(text_cap_type)
      validator = EnumAttributeValidator.new('String', ['None', 'Small', 'All', 'NotDefined'])
      unless validator.valid?(text_cap_type)
        fail ArgumentError, 'invalid value for "text_cap_type", must be one of #{validator.allowable_values}.'
      end
      @text_cap_type = text_cap_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] normalise_height Object to be assigned
    def normalise_height=(normalise_height)
      validator = EnumAttributeValidator.new('String', ['False', 'True', 'NotDefined'])
      unless validator.valid?(normalise_height)
        fail ArgumentError, 'invalid value for "normalise_height", must be one of #{validator.allowable_values}.'
      end
      @normalise_height = normalise_height
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] proof_disabled Object to be assigned
    def proof_disabled=(proof_disabled)
      validator = EnumAttributeValidator.new('String', ['False', 'True', 'NotDefined'])
      unless validator.valid?(proof_disabled)
        fail ArgumentError, 'invalid value for "proof_disabled", must be one of #{validator.allowable_values}.'
      end
      @proof_disabled = proof_disabled
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] kumimoji Object to be assigned
    def kumimoji=(kumimoji)
      validator = EnumAttributeValidator.new('String', ['False', 'True', 'NotDefined'])
      unless validator.valid?(kumimoji)
        fail ArgumentError, 'invalid value for "kumimoji", must be one of #{validator.allowable_values}.'
      end
      @kumimoji = kumimoji
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] is_hard_underline_fill Object to be assigned
    def is_hard_underline_fill=(is_hard_underline_fill)
      validator = EnumAttributeValidator.new('String', ['False', 'True', 'NotDefined'])
      unless validator.valid?(is_hard_underline_fill)
        fail ArgumentError, 'invalid value for "is_hard_underline_fill", must be one of #{validator.allowable_values}.'
      end
      @is_hard_underline_fill = is_hard_underline_fill
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] is_hard_underline_line Object to be assigned
    def is_hard_underline_line=(is_hard_underline_line)
      validator = EnumAttributeValidator.new('String', ['False', 'True', 'NotDefined'])
      unless validator.valid?(is_hard_underline_line)
        fail ArgumentError, 'invalid value for "is_hard_underline_line", must be one of #{validator.allowable_values}.'
      end
      @is_hard_underline_line = is_hard_underline_line
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          self_uri == o.self_uri &&
          alternate_links == o.alternate_links &&
          text == o.text &&
          math_paragraph == o.math_paragraph &&
          font_bold == o.font_bold &&
          font_italic == o.font_italic &&
          font_underline == o.font_underline &&
          strikethrough_type == o.strikethrough_type &&
          text_cap_type == o.text_cap_type &&
          escapement == o.escapement &&
          spacing == o.spacing &&
          font_color == o.font_color &&
          highlight_color == o.highlight_color &&
          font_height == o.font_height &&
          normalise_height == o.normalise_height &&
          proof_disabled == o.proof_disabled &&
          smart_tag_clean == o.smart_tag_clean &&
          kerning_minimal_size == o.kerning_minimal_size &&
          kumimoji == o.kumimoji &&
          language_id == o.language_id &&
          alternative_language_id == o.alternative_language_id &&
          is_hard_underline_fill == o.is_hard_underline_fill &&
          is_hard_underline_line == o.is_hard_underline_line &&
          fill_format == o.fill_format &&
          effect_format == o.effect_format &&
          line_format == o.line_format &&
          underline_fill_format == o.underline_fill_format &&
          underline_line_format == o.underline_line_format &&
          hyperlink_click == o.hyperlink_click &&
          hyperlink_mouse_over == o.hyperlink_mouse_over
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [self_uri, alternate_links, text, math_paragraph, font_bold, font_italic, font_underline, strikethrough_type, text_cap_type, escapement, spacing, font_color, highlight_color, font_height, normalise_height, proof_disabled, smart_tag_clean, kerning_minimal_size, kumimoji, language_id, alternative_language_id, is_hard_underline_fill, is_hard_underline_line, fill_format, effect_format, line_format, underline_fill_format, underline_line_format, hyperlink_click, hyperlink_mouse_over].hash
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
