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
  # Represents AudioFrame resource.
  class AudioFrame < GeometryShape
    # Returns or sets a last track index.
    attr_accessor :audio_cd_end_track

    # Returns or sets a last track time.
    attr_accessor :audio_cd_end_track_time

    # Returns or sets a start track index.
    attr_accessor :audio_cd_start_track

    # Returns or sets a start track time. 
    attr_accessor :audio_cd_start_track_time

    # Determines whether a sound is embedded to a presentation.
    attr_accessor :embedded

    # Determines whether an AudioFrame is hidden.
    attr_accessor :hide_at_showing

    # Determines whether an audio is looped. 
    attr_accessor :play_loop_mode

    # Returns or sets the audio play mode.
    attr_accessor :play_mode

    # Returns or sets the audio volume.
    attr_accessor :volume

    # Audio data encoded in base64.
    attr_accessor :base64_data

    # Determines whether an audio is playing across the slides.
    attr_accessor :play_across_slides

    # Determines whether audio is automatically rewound to start after playing.
    attr_accessor :rewind_audio

    # Picture fill format.
    attr_accessor :picture_fill_format

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
        :'audio_cd_end_track' => :'AudioCdEndTrack',
        :'audio_cd_end_track_time' => :'AudioCdEndTrackTime',
        :'audio_cd_start_track' => :'AudioCdStartTrack',
        :'audio_cd_start_track_time' => :'AudioCdStartTrackTime',
        :'embedded' => :'Embedded',
        :'hide_at_showing' => :'HideAtShowing',
        :'play_loop_mode' => :'PlayLoopMode',
        :'play_mode' => :'PlayMode',
        :'volume' => :'Volume',
        :'base64_data' => :'Base64Data',
        :'play_across_slides' => :'PlayAcrossSlides',
        :'rewind_audio' => :'RewindAudio',
        :'picture_fill_format' => :'PictureFillFormat',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'audio_cd_end_track' => :'Integer',
        :'audio_cd_end_track_time' => :'Integer',
        :'audio_cd_start_track' => :'Integer',
        :'audio_cd_start_track_time' => :'Integer',
        :'embedded' => :'BOOLEAN',
        :'hide_at_showing' => :'BOOLEAN',
        :'play_loop_mode' => :'BOOLEAN',
        :'play_mode' => :'String',
        :'volume' => :'String',
        :'base64_data' => :'String',
        :'play_across_slides' => :'BOOLEAN',
        :'rewind_audio' => :'BOOLEAN',
        :'picture_fill_format' => :'PictureFill',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'AudioCdEndTrack')
        self.audio_cd_end_track = attributes[:'AudioCdEndTrack']
      end

      if attributes.has_key?(:'AudioCdEndTrackTime')
        self.audio_cd_end_track_time = attributes[:'AudioCdEndTrackTime']
      end

      if attributes.has_key?(:'AudioCdStartTrack')
        self.audio_cd_start_track = attributes[:'AudioCdStartTrack']
      end

      if attributes.has_key?(:'AudioCdStartTrackTime')
        self.audio_cd_start_track_time = attributes[:'AudioCdStartTrackTime']
      end

      if attributes.has_key?(:'Embedded')
        self.embedded = attributes[:'Embedded']
      end

      if attributes.has_key?(:'HideAtShowing')
        self.hide_at_showing = attributes[:'HideAtShowing']
      end

      if attributes.has_key?(:'PlayLoopMode')
        self.play_loop_mode = attributes[:'PlayLoopMode']
      end

      if attributes.has_key?(:'PlayMode')
        self.play_mode = attributes[:'PlayMode']
      end

      if attributes.has_key?(:'Volume')
        self.volume = attributes[:'Volume']
      end

      if attributes.has_key?(:'Base64Data')
        self.base64_data = attributes[:'Base64Data']
      end

      if attributes.has_key?(:'PlayAcrossSlides')
        self.play_across_slides = attributes[:'PlayAcrossSlides']
      end

      if attributes.has_key?(:'RewindAudio')
        self.rewind_audio = attributes[:'RewindAudio']
      end

      if attributes.has_key?(:'PictureFillFormat')
        self.picture_fill_format = attributes[:'PictureFillFormat']
      end
      self.type = 'AudioFrame'
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
      play_mode_validator = EnumAttributeValidator.new('String', ['Auto', 'OnClick', 'AllSlides', 'InClickSequence', 'Mixed'])
      return false unless play_mode_validator.valid?(@play_mode)
      volume_validator = EnumAttributeValidator.new('String', ['Mute', 'Low', 'Medium', 'Loud', 'Mixed'])
      return false unless volume_validator.valid?(@volume)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] play_mode Object to be assigned
    def play_mode=(play_mode)
      validator = EnumAttributeValidator.new('String', ['Auto', 'OnClick', 'AllSlides', 'InClickSequence', 'Mixed'])
      unless validator.valid?(play_mode)
        fail ArgumentError, 'invalid value for "play_mode", must be one of #{validator.allowable_values}.'
      end
      @play_mode = play_mode
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] volume Object to be assigned
    def volume=(volume)
      validator = EnumAttributeValidator.new('String', ['Mute', 'Low', 'Medium', 'Loud', 'Mixed'])
      unless validator.valid?(volume)
        fail ArgumentError, 'invalid value for "volume", must be one of #{validator.allowable_values}.'
      end
      @volume = volume
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
          shape_type == o.shape_type &&
          audio_cd_end_track == o.audio_cd_end_track &&
          audio_cd_end_track_time == o.audio_cd_end_track_time &&
          audio_cd_start_track == o.audio_cd_start_track &&
          audio_cd_start_track_time == o.audio_cd_start_track_time &&
          embedded == o.embedded &&
          hide_at_showing == o.hide_at_showing &&
          play_loop_mode == o.play_loop_mode &&
          play_mode == o.play_mode &&
          volume == o.volume &&
          base64_data == o.base64_data &&
          play_across_slides == o.play_across_slides &&
          rewind_audio == o.rewind_audio &&
          picture_fill_format == o.picture_fill_format
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [self_uri, alternate_links, name, width, height, alternative_text, alternative_text_title, hidden, x, y, z_order_position, fill_format, effect_format, three_d_format, line_format, hyperlink_click, hyperlink_mouse_over, type, shape_type, audio_cd_end_track, audio_cd_end_track_time, audio_cd_start_track, audio_cd_start_track_time, embedded, hide_at_showing, play_loop_mode, play_mode, volume, base64_data, play_across_slides, rewind_audio, picture_fill_format].hash
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
