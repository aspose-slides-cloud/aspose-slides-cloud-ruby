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
  # Represents VideoFrame resource.
  class VideoFrame < GeometryShape
    # Determines whether a video is shown in full screen mode.
    attr_accessor :full_screen_mode

    # Determines whether a VideoFrame is hidden. 
    attr_accessor :hide_at_showing

    # Determines whether a video is looped.
    attr_accessor :play_loop_mode

    # Returns or sets the video play mode.  
    attr_accessor :play_mode

    # Determines whether a video is automatically rewinded to start as soon as the movie has finished playing
    attr_accessor :rewind_video

    # Returns or sets the audio volume.
    attr_accessor :volume

    # Video data encoded in base64.
    attr_accessor :base64_data

    # Picture fill format.
    attr_accessor :picture_fill_format

    # Trim start [ms]
    attr_accessor :trim_from_start

    # Trim end [ms]
    attr_accessor :trim_from_end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      super.merge({
        :'full_screen_mode' => :'FullScreenMode',
        :'hide_at_showing' => :'HideAtShowing',
        :'play_loop_mode' => :'PlayLoopMode',
        :'play_mode' => :'PlayMode',
        :'rewind_video' => :'RewindVideo',
        :'volume' => :'Volume',
        :'base64_data' => :'Base64Data',
        :'picture_fill_format' => :'PictureFillFormat',
        :'trim_from_start' => :'TrimFromStart',
        :'trim_from_end' => :'TrimFromEnd',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'full_screen_mode' => :'BOOLEAN',
        :'hide_at_showing' => :'BOOLEAN',
        :'play_loop_mode' => :'BOOLEAN',
        :'play_mode' => :'String',
        :'rewind_video' => :'BOOLEAN',
        :'volume' => :'String',
        :'base64_data' => :'String',
        :'picture_fill_format' => :'PictureFill',
        :'trim_from_start' => :'Float',
        :'trim_from_end' => :'Float',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'FullScreenMode')
        self.full_screen_mode = attributes[:'FullScreenMode']
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

      if attributes.has_key?(:'RewindVideo')
        self.rewind_video = attributes[:'RewindVideo']
      end

      if attributes.has_key?(:'Volume')
        self.volume = attributes[:'Volume']
      end

      if attributes.has_key?(:'Base64Data')
        self.base64_data = attributes[:'Base64Data']
      end

      if attributes.has_key?(:'PictureFillFormat')
        self.picture_fill_format = attributes[:'PictureFillFormat']
      end

      if attributes.has_key?(:'TrimFromStart')
        self.trim_from_start = attributes[:'TrimFromStart']
      end

      if attributes.has_key?(:'TrimFromEnd')
        self.trim_from_end = attributes[:'TrimFromEnd']
      end
      self.type = 'VideoFrame'
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
          is_decorative == o.is_decorative &&
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
          full_screen_mode == o.full_screen_mode &&
          hide_at_showing == o.hide_at_showing &&
          play_loop_mode == o.play_loop_mode &&
          play_mode == o.play_mode &&
          rewind_video == o.rewind_video &&
          volume == o.volume &&
          base64_data == o.base64_data &&
          picture_fill_format == o.picture_fill_format &&
          trim_from_start == o.trim_from_start &&
          trim_from_end == o.trim_from_end
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [self_uri, alternate_links, name, width, height, alternative_text, alternative_text_title, hidden, is_decorative, x, y, z_order_position, fill_format, effect_format, three_d_format, line_format, hyperlink_click, hyperlink_mouse_over, type, shape_type, full_screen_mode, hide_at_showing, play_loop_mode, play_mode, rewind_video, volume, base64_data, picture_fill_format, trim_from_start, trim_from_end].hash
    end
  end
end
