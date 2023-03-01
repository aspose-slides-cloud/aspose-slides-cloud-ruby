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
  # Paragraph formatting properties.
  class ParagraphFormat
    # Depth.
    attr_accessor :depth

    # Text alignment.
    attr_accessor :alignment

    # Left margin.
    attr_accessor :margin_left

    # Right margin.
    attr_accessor :margin_right

    # Left spacing.
    attr_accessor :space_before

    # Right spacing.
    attr_accessor :space_after

    # Spacing between lines.
    attr_accessor :space_within

    # Font alignment.
    attr_accessor :font_alignment

    # First line indent.
    attr_accessor :indent

    # Determines whether the Right to Left writing is used in a paragraph. No inheritance applied.
    attr_accessor :right_to_left

    # Determines whether the East Asian line break is used in a paragraph. No inheritance applied.
    attr_accessor :east_asian_line_break

    # Determines whether the Latin line break is used in a paragraph. No inheritance applied.
    attr_accessor :latin_line_break

    # Determines whether the hanging punctuation is used in a paragraph. No inheritance applied.
    attr_accessor :hanging_punctuation

    # Returns or sets default tabulation size with no inheritance.
    attr_accessor :default_tab_size

    # Default portion format.
    attr_accessor :default_portion_format

    # Bullet char.
    attr_accessor :bullet_char

    # Bullet height.
    attr_accessor :bullet_height

    # Bullet type.
    attr_accessor :bullet_type

    # Starting number for a numbered bullet.
    attr_accessor :numbered_bullet_start_with

    # Numbered bullet style.
    attr_accessor :numbered_bullet_style

    # Bullet fill format.
    attr_accessor :bullet_fill_format

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
        :'depth' => :'Depth',
        :'alignment' => :'Alignment',
        :'margin_left' => :'MarginLeft',
        :'margin_right' => :'MarginRight',
        :'space_before' => :'SpaceBefore',
        :'space_after' => :'SpaceAfter',
        :'space_within' => :'SpaceWithin',
        :'font_alignment' => :'FontAlignment',
        :'indent' => :'Indent',
        :'right_to_left' => :'RightToLeft',
        :'east_asian_line_break' => :'EastAsianLineBreak',
        :'latin_line_break' => :'LatinLineBreak',
        :'hanging_punctuation' => :'HangingPunctuation',
        :'default_tab_size' => :'DefaultTabSize',
        :'default_portion_format' => :'DefaultPortionFormat',
        :'bullet_char' => :'BulletChar',
        :'bullet_height' => :'BulletHeight',
        :'bullet_type' => :'BulletType',
        :'numbered_bullet_start_with' => :'NumberedBulletStartWith',
        :'numbered_bullet_style' => :'NumberedBulletStyle',
        :'bullet_fill_format' => :'BulletFillFormat',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'depth' => :'Integer',
        :'alignment' => :'String',
        :'margin_left' => :'Float',
        :'margin_right' => :'Float',
        :'space_before' => :'Float',
        :'space_after' => :'Float',
        :'space_within' => :'Float',
        :'font_alignment' => :'String',
        :'indent' => :'Float',
        :'right_to_left' => :'String',
        :'east_asian_line_break' => :'String',
        :'latin_line_break' => :'String',
        :'hanging_punctuation' => :'String',
        :'default_tab_size' => :'Float',
        :'default_portion_format' => :'PortionFormat',
        :'bullet_char' => :'String',
        :'bullet_height' => :'Float',
        :'bullet_type' => :'String',
        :'numbered_bullet_start_with' => :'Integer',
        :'numbered_bullet_style' => :'String',
        :'bullet_fill_format' => :'FillFormat',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'Depth')
        self.depth = attributes[:'Depth']
      end

      if attributes.has_key?(:'Alignment')
        self.alignment = attributes[:'Alignment']
      end

      if attributes.has_key?(:'MarginLeft')
        self.margin_left = attributes[:'MarginLeft']
      end

      if attributes.has_key?(:'MarginRight')
        self.margin_right = attributes[:'MarginRight']
      end

      if attributes.has_key?(:'SpaceBefore')
        self.space_before = attributes[:'SpaceBefore']
      end

      if attributes.has_key?(:'SpaceAfter')
        self.space_after = attributes[:'SpaceAfter']
      end

      if attributes.has_key?(:'SpaceWithin')
        self.space_within = attributes[:'SpaceWithin']
      end

      if attributes.has_key?(:'FontAlignment')
        self.font_alignment = attributes[:'FontAlignment']
      end

      if attributes.has_key?(:'Indent')
        self.indent = attributes[:'Indent']
      end

      if attributes.has_key?(:'RightToLeft')
        self.right_to_left = attributes[:'RightToLeft']
      end

      if attributes.has_key?(:'EastAsianLineBreak')
        self.east_asian_line_break = attributes[:'EastAsianLineBreak']
      end

      if attributes.has_key?(:'LatinLineBreak')
        self.latin_line_break = attributes[:'LatinLineBreak']
      end

      if attributes.has_key?(:'HangingPunctuation')
        self.hanging_punctuation = attributes[:'HangingPunctuation']
      end

      if attributes.has_key?(:'DefaultTabSize')
        self.default_tab_size = attributes[:'DefaultTabSize']
      end

      if attributes.has_key?(:'DefaultPortionFormat')
        self.default_portion_format = attributes[:'DefaultPortionFormat']
      end

      if attributes.has_key?(:'BulletChar')
        self.bullet_char = attributes[:'BulletChar']
      end

      if attributes.has_key?(:'BulletHeight')
        self.bullet_height = attributes[:'BulletHeight']
      end

      if attributes.has_key?(:'BulletType')
        self.bullet_type = attributes[:'BulletType']
      end

      if attributes.has_key?(:'NumberedBulletStartWith')
        self.numbered_bullet_start_with = attributes[:'NumberedBulletStartWith']
      end

      if attributes.has_key?(:'NumberedBulletStyle')
        self.numbered_bullet_style = attributes[:'NumberedBulletStyle']
      end

      if attributes.has_key?(:'BulletFillFormat')
        self.bullet_fill_format = attributes[:'BulletFillFormat']
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
      alignment_validator = EnumAttributeValidator.new('String', ['Left', 'Center', 'Right', 'Justify', 'JustifyLow', 'Distributed', 'NotDefined'])
      return false unless alignment_validator.valid?(@alignment)
      font_alignment_validator = EnumAttributeValidator.new('String', ['Automatic', 'Top', 'Center', 'Bottom', 'Baseline', 'Default'])
      return false unless font_alignment_validator.valid?(@font_alignment)
      right_to_left_validator = EnumAttributeValidator.new('String', ['False', 'True', 'NotDefined'])
      return false unless right_to_left_validator.valid?(@right_to_left)
      east_asian_line_break_validator = EnumAttributeValidator.new('String', ['False', 'True', 'NotDefined'])
      return false unless east_asian_line_break_validator.valid?(@east_asian_line_break)
      latin_line_break_validator = EnumAttributeValidator.new('String', ['False', 'True', 'NotDefined'])
      return false unless latin_line_break_validator.valid?(@latin_line_break)
      hanging_punctuation_validator = EnumAttributeValidator.new('String', ['False', 'True', 'NotDefined'])
      return false unless hanging_punctuation_validator.valid?(@hanging_punctuation)
      bullet_type_validator = EnumAttributeValidator.new('String', ['None', 'Symbol', 'Numbered', 'Picture', 'NotDefined'])
      return false unless bullet_type_validator.valid?(@bullet_type)
      numbered_bullet_style_validator = EnumAttributeValidator.new('String', ['BulletAlphaLCPeriod', 'BulletAlphaUCPeriod', 'BulletArabicParenRight', 'BulletArabicPeriod', 'BulletRomanLCParenBoth', 'BulletRomanLCParenRight', 'BulletRomanLCPeriod', 'BulletRomanUCPeriod', 'BulletAlphaLCParenBoth', 'BulletAlphaLCParenRight', 'BulletAlphaUCParenBoth', 'BulletAlphaUCParenRight', 'BulletArabicParenBoth', 'BulletArabicPlain', 'BulletRomanUCParenBoth', 'BulletRomanUCParenRight', 'BulletSimpChinPlain', 'BulletSimpChinPeriod', 'BulletCircleNumDBPlain', 'BulletCircleNumWDWhitePlain', 'BulletCircleNumWDBlackPlain', 'BulletTradChinPlain', 'BulletTradChinPeriod', 'BulletArabicAlphaDash', 'BulletArabicAbjadDash', 'BulletHebrewAlphaDash', 'BulletKanjiKoreanPlain', 'BulletKanjiKoreanPeriod', 'BulletArabicDBPlain', 'BulletArabicDBPeriod', 'BulletThaiAlphaPeriod', 'BulletThaiAlphaParenRight', 'BulletThaiAlphaParenBoth', 'BulletThaiNumPeriod', 'BulletThaiNumParenRight', 'BulletThaiNumParenBoth', 'BulletHindiAlphaPeriod', 'BulletHindiNumPeriod', 'BulletKanjiSimpChinDBPeriod', 'BulletHindiNumParenRight', 'BulletHindiAlpha1Period', 'NotDefined'])
      return false unless numbered_bullet_style_validator.valid?(@numbered_bullet_style)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] alignment Object to be assigned
    def alignment=(alignment)
      validator = EnumAttributeValidator.new('String', ['Left', 'Center', 'Right', 'Justify', 'JustifyLow', 'Distributed', 'NotDefined'])
      unless validator.valid?(alignment)
        fail ArgumentError, 'invalid value for "alignment", must be one of #{validator.allowable_values}.'
      end
      @alignment = alignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] font_alignment Object to be assigned
    def font_alignment=(font_alignment)
      validator = EnumAttributeValidator.new('String', ['Automatic', 'Top', 'Center', 'Bottom', 'Baseline', 'Default'])
      unless validator.valid?(font_alignment)
        fail ArgumentError, 'invalid value for "font_alignment", must be one of #{validator.allowable_values}.'
      end
      @font_alignment = font_alignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] right_to_left Object to be assigned
    def right_to_left=(right_to_left)
      validator = EnumAttributeValidator.new('String', ['False', 'True', 'NotDefined'])
      unless validator.valid?(right_to_left)
        fail ArgumentError, 'invalid value for "right_to_left", must be one of #{validator.allowable_values}.'
      end
      @right_to_left = right_to_left
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] east_asian_line_break Object to be assigned
    def east_asian_line_break=(east_asian_line_break)
      validator = EnumAttributeValidator.new('String', ['False', 'True', 'NotDefined'])
      unless validator.valid?(east_asian_line_break)
        fail ArgumentError, 'invalid value for "east_asian_line_break", must be one of #{validator.allowable_values}.'
      end
      @east_asian_line_break = east_asian_line_break
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] latin_line_break Object to be assigned
    def latin_line_break=(latin_line_break)
      validator = EnumAttributeValidator.new('String', ['False', 'True', 'NotDefined'])
      unless validator.valid?(latin_line_break)
        fail ArgumentError, 'invalid value for "latin_line_break", must be one of #{validator.allowable_values}.'
      end
      @latin_line_break = latin_line_break
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] hanging_punctuation Object to be assigned
    def hanging_punctuation=(hanging_punctuation)
      validator = EnumAttributeValidator.new('String', ['False', 'True', 'NotDefined'])
      unless validator.valid?(hanging_punctuation)
        fail ArgumentError, 'invalid value for "hanging_punctuation", must be one of #{validator.allowable_values}.'
      end
      @hanging_punctuation = hanging_punctuation
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bullet_type Object to be assigned
    def bullet_type=(bullet_type)
      validator = EnumAttributeValidator.new('String', ['None', 'Symbol', 'Numbered', 'Picture', 'NotDefined'])
      unless validator.valid?(bullet_type)
        fail ArgumentError, 'invalid value for "bullet_type", must be one of #{validator.allowable_values}.'
      end
      @bullet_type = bullet_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] numbered_bullet_style Object to be assigned
    def numbered_bullet_style=(numbered_bullet_style)
      validator = EnumAttributeValidator.new('String', ['BulletAlphaLCPeriod', 'BulletAlphaUCPeriod', 'BulletArabicParenRight', 'BulletArabicPeriod', 'BulletRomanLCParenBoth', 'BulletRomanLCParenRight', 'BulletRomanLCPeriod', 'BulletRomanUCPeriod', 'BulletAlphaLCParenBoth', 'BulletAlphaLCParenRight', 'BulletAlphaUCParenBoth', 'BulletAlphaUCParenRight', 'BulletArabicParenBoth', 'BulletArabicPlain', 'BulletRomanUCParenBoth', 'BulletRomanUCParenRight', 'BulletSimpChinPlain', 'BulletSimpChinPeriod', 'BulletCircleNumDBPlain', 'BulletCircleNumWDWhitePlain', 'BulletCircleNumWDBlackPlain', 'BulletTradChinPlain', 'BulletTradChinPeriod', 'BulletArabicAlphaDash', 'BulletArabicAbjadDash', 'BulletHebrewAlphaDash', 'BulletKanjiKoreanPlain', 'BulletKanjiKoreanPeriod', 'BulletArabicDBPlain', 'BulletArabicDBPeriod', 'BulletThaiAlphaPeriod', 'BulletThaiAlphaParenRight', 'BulletThaiAlphaParenBoth', 'BulletThaiNumPeriod', 'BulletThaiNumParenRight', 'BulletThaiNumParenBoth', 'BulletHindiAlphaPeriod', 'BulletHindiNumPeriod', 'BulletKanjiSimpChinDBPeriod', 'BulletHindiNumParenRight', 'BulletHindiAlpha1Period', 'NotDefined'])
      unless validator.valid?(numbered_bullet_style)
        fail ArgumentError, 'invalid value for "numbered_bullet_style", must be one of #{validator.allowable_values}.'
      end
      @numbered_bullet_style = numbered_bullet_style
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          depth == o.depth &&
          alignment == o.alignment &&
          margin_left == o.margin_left &&
          margin_right == o.margin_right &&
          space_before == o.space_before &&
          space_after == o.space_after &&
          space_within == o.space_within &&
          font_alignment == o.font_alignment &&
          indent == o.indent &&
          right_to_left == o.right_to_left &&
          east_asian_line_break == o.east_asian_line_break &&
          latin_line_break == o.latin_line_break &&
          hanging_punctuation == o.hanging_punctuation &&
          default_tab_size == o.default_tab_size &&
          default_portion_format == o.default_portion_format &&
          bullet_char == o.bullet_char &&
          bullet_height == o.bullet_height &&
          bullet_type == o.bullet_type &&
          numbered_bullet_start_with == o.numbered_bullet_start_with &&
          numbered_bullet_style == o.numbered_bullet_style &&
          bullet_fill_format == o.bullet_fill_format
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [depth, alignment, margin_left, margin_right, space_before, space_after, space_within, font_alignment, indent, right_to_left, east_asian_line_break, latin_line_break, hanging_punctuation, default_tab_size, default_portion_format, bullet_char, bullet_height, bullet_type, numbered_bullet_start_with, numbered_bullet_style, bullet_fill_format].hash
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
