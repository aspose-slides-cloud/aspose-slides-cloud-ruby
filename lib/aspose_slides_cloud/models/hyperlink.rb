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
  class Hyperlink < BaseObject
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
  end
end
