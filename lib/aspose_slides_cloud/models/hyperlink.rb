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
  # Hyperlink
  class Hyperlink
    # If true Hypelink is not applied. 
    attr_accessor :is_disabled

    # Type of HyperLink action             
    attr_accessor :action_type

    # Specifies the external URL
    attr_accessor :external_url

    # Index of the target slide
    attr_accessor :target_slide_index

    # Target frame
    attr_accessor :target_frame

    # Hyperlink tooltip
    attr_accessor :tooltip

    # Makes hyperlink viewed when it is invoked.             
    attr_accessor :history

    # Determines whether the hyperlink should be highlighted on click.
    attr_accessor :highlight_click

    # Determines whether the sound should be stopped on hyperlink click
    attr_accessor :stop_sound_on_click

    # Represents the source of hyperlink color
    attr_accessor :color_source

    # Audio data encoded in base64. Represents the playing sound of the hyperlink. 
    attr_accessor :sound_base64

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
        :'is_disabled' => :'IsDisabled',
        :'action_type' => :'ActionType',
        :'external_url' => :'ExternalUrl',
        :'target_slide_index' => :'TargetSlideIndex',
        :'target_frame' => :'TargetFrame',
        :'tooltip' => :'Tooltip',
        :'history' => :'History',
        :'highlight_click' => :'HighlightClick',
        :'stop_sound_on_click' => :'StopSoundOnClick',
        :'color_source' => :'ColorSource',
        :'sound_base64' => :'SoundBase64',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'is_disabled' => :'BOOLEAN',
        :'action_type' => :'String',
        :'external_url' => :'String',
        :'target_slide_index' => :'Integer',
        :'target_frame' => :'String',
        :'tooltip' => :'String',
        :'history' => :'BOOLEAN',
        :'highlight_click' => :'BOOLEAN',
        :'stop_sound_on_click' => :'BOOLEAN',
        :'color_source' => :'String',
        :'sound_base64' => :'String',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'IsDisabled')
        self.is_disabled = attributes[:'IsDisabled']
      end

      if attributes.has_key?(:'ActionType')
        self.action_type = attributes[:'ActionType']
      end

      if attributes.has_key?(:'ExternalUrl')
        self.external_url = attributes[:'ExternalUrl']
      end

      if attributes.has_key?(:'TargetSlideIndex')
        self.target_slide_index = attributes[:'TargetSlideIndex']
      end

      if attributes.has_key?(:'TargetFrame')
        self.target_frame = attributes[:'TargetFrame']
      end

      if attributes.has_key?(:'Tooltip')
        self.tooltip = attributes[:'Tooltip']
      end

      if attributes.has_key?(:'History')
        self.history = attributes[:'History']
      end

      if attributes.has_key?(:'HighlightClick')
        self.highlight_click = attributes[:'HighlightClick']
      end

      if attributes.has_key?(:'StopSoundOnClick')
        self.stop_sound_on_click = attributes[:'StopSoundOnClick']
      end

      if attributes.has_key?(:'ColorSource')
        self.color_source = attributes[:'ColorSource']
      end

      if attributes.has_key?(:'SoundBase64')
        self.sound_base64 = attributes[:'SoundBase64']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @action_type.nil?
        invalid_properties.push('invalid value for "action_type", action_type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @action_type.nil?
      action_type_validator = EnumAttributeValidator.new('String', ['NoAction', 'Hyperlink', 'JumpFirstSlide', 'JumpPreviousSlide', 'JumpNextSlide', 'JumpLastSlide', 'JumpEndShow', 'JumpLastViewedSlide', 'JumpSpecificSlide', 'StartCustomSlideShow', 'OpenFile', 'OpenPresentation', 'StartStopMedia', 'StartMacro', 'StartProgram', 'Unknown'])
      return false unless action_type_validator.valid?(@action_type)
      color_source_validator = EnumAttributeValidator.new('String', ['Styles', 'PortionFormat'])
      return false unless color_source_validator.valid?(@color_source)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] action_type Object to be assigned
    def action_type=(action_type)
      validator = EnumAttributeValidator.new('String', ['NoAction', 'Hyperlink', 'JumpFirstSlide', 'JumpPreviousSlide', 'JumpNextSlide', 'JumpLastSlide', 'JumpEndShow', 'JumpLastViewedSlide', 'JumpSpecificSlide', 'StartCustomSlideShow', 'OpenFile', 'OpenPresentation', 'StartStopMedia', 'StartMacro', 'StartProgram', 'Unknown'])
      unless validator.valid?(action_type)
        fail ArgumentError, 'invalid value for "action_type", must be one of #{validator.allowable_values}.'
      end
      @action_type = action_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] color_source Object to be assigned
    def color_source=(color_source)
      validator = EnumAttributeValidator.new('String', ['Styles', 'PortionFormat'])
      unless validator.valid?(color_source)
        fail ArgumentError, 'invalid value for "color_source", must be one of #{validator.allowable_values}.'
      end
      @color_source = color_source
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          is_disabled == o.is_disabled &&
          action_type == o.action_type &&
          external_url == o.external_url &&
          target_slide_index == o.target_slide_index &&
          target_frame == o.target_frame &&
          tooltip == o.tooltip &&
          history == o.history &&
          highlight_click == o.highlight_click &&
          stop_sound_on_click == o.stop_sound_on_click &&
          color_source == o.color_source &&
          sound_base64 == o.sound_base64
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [is_disabled, action_type, external_url, target_slide_index, target_frame, tooltip, history, highlight_click, stop_sound_on_click, color_source, sound_base64].hash
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
