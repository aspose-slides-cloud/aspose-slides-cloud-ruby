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
  # Slide Show Transition.
  class SlideShowTransition < BaseObject
    # Transition Type
    attr_accessor :type

    # Advance After
    attr_accessor :advance_after

    # Advance After Time
    attr_accessor :advance_after_time

    # Advance On Click
    attr_accessor :advance_on_click

    # Sound Is Built In
    attr_accessor :sound_is_built_in

    # Sound Loop
    attr_accessor :sound_loop

    # Sound Mode
    attr_accessor :sound_mode

    # Sound Name
    attr_accessor :sound_name

    # Speed
    attr_accessor :speed

    # Corner Direction.
    attr_accessor :corner_direction

    # Eight Direction.
    attr_accessor :eight_direction

    # In/Out Direction.
    attr_accessor :in_out_direction

    # Has Bounce.
    attr_accessor :has_bounce

    # Side Direction.
    attr_accessor :side_direction

    # Pattern.
    attr_accessor :pattern

    # Left/Right Direction.
    attr_accessor :left_right_direction

    # Morph Type.
    attr_accessor :morph_type

    # From Black.
    attr_accessor :from_black

    # Orientation Direction.
    attr_accessor :orientation_direction

    # Through Black.
    attr_accessor :through_black

    # Orientation.
    attr_accessor :corner_and_center_direction

    # Shred Pattern.
    attr_accessor :shred_pattern

    # Orientation.
    attr_accessor :orientation

    # Spokes.
    attr_accessor :spokes

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'type' => :'Type',
        :'advance_after' => :'AdvanceAfter',
        :'advance_after_time' => :'AdvanceAfterTime',
        :'advance_on_click' => :'AdvanceOnClick',
        :'sound_is_built_in' => :'SoundIsBuiltIn',
        :'sound_loop' => :'SoundLoop',
        :'sound_mode' => :'SoundMode',
        :'sound_name' => :'SoundName',
        :'speed' => :'Speed',
        :'corner_direction' => :'CornerDirection',
        :'eight_direction' => :'EightDirection',
        :'in_out_direction' => :'InOutDirection',
        :'has_bounce' => :'HasBounce',
        :'side_direction' => :'SideDirection',
        :'pattern' => :'Pattern',
        :'left_right_direction' => :'LeftRightDirection',
        :'morph_type' => :'MorphType',
        :'from_black' => :'FromBlack',
        :'orientation_direction' => :'OrientationDirection',
        :'through_black' => :'ThroughBlack',
        :'corner_and_center_direction' => :'CornerAndCenterDirection',
        :'shred_pattern' => :'ShredPattern',
        :'orientation' => :'Orientation',
        :'spokes' => :'Spokes',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'type' => :'String',
        :'advance_after' => :'BOOLEAN',
        :'advance_after_time' => :'Integer',
        :'advance_on_click' => :'BOOLEAN',
        :'sound_is_built_in' => :'BOOLEAN',
        :'sound_loop' => :'BOOLEAN',
        :'sound_mode' => :'String',
        :'sound_name' => :'String',
        :'speed' => :'String',
        :'corner_direction' => :'String',
        :'eight_direction' => :'String',
        :'in_out_direction' => :'String',
        :'has_bounce' => :'BOOLEAN',
        :'side_direction' => :'String',
        :'pattern' => :'String',
        :'left_right_direction' => :'String',
        :'morph_type' => :'String',
        :'from_black' => :'BOOLEAN',
        :'orientation_direction' => :'String',
        :'through_black' => :'BOOLEAN',
        :'corner_and_center_direction' => :'String',
        :'shred_pattern' => :'String',
        :'orientation' => :'String',
        :'spokes' => :'Integer',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'Type')
        self.type = attributes[:'Type']
      end

      if attributes.has_key?(:'AdvanceAfter')
        self.advance_after = attributes[:'AdvanceAfter']
      end

      if attributes.has_key?(:'AdvanceAfterTime')
        self.advance_after_time = attributes[:'AdvanceAfterTime']
      end

      if attributes.has_key?(:'AdvanceOnClick')
        self.advance_on_click = attributes[:'AdvanceOnClick']
      end

      if attributes.has_key?(:'SoundIsBuiltIn')
        self.sound_is_built_in = attributes[:'SoundIsBuiltIn']
      end

      if attributes.has_key?(:'SoundLoop')
        self.sound_loop = attributes[:'SoundLoop']
      end

      if attributes.has_key?(:'SoundMode')
        self.sound_mode = attributes[:'SoundMode']
      end

      if attributes.has_key?(:'SoundName')
        self.sound_name = attributes[:'SoundName']
      end

      if attributes.has_key?(:'Speed')
        self.speed = attributes[:'Speed']
      end

      if attributes.has_key?(:'CornerDirection')
        self.corner_direction = attributes[:'CornerDirection']
      end

      if attributes.has_key?(:'EightDirection')
        self.eight_direction = attributes[:'EightDirection']
      end

      if attributes.has_key?(:'InOutDirection')
        self.in_out_direction = attributes[:'InOutDirection']
      end

      if attributes.has_key?(:'HasBounce')
        self.has_bounce = attributes[:'HasBounce']
      end

      if attributes.has_key?(:'SideDirection')
        self.side_direction = attributes[:'SideDirection']
      end

      if attributes.has_key?(:'Pattern')
        self.pattern = attributes[:'Pattern']
      end

      if attributes.has_key?(:'LeftRightDirection')
        self.left_right_direction = attributes[:'LeftRightDirection']
      end

      if attributes.has_key?(:'MorphType')
        self.morph_type = attributes[:'MorphType']
      end

      if attributes.has_key?(:'FromBlack')
        self.from_black = attributes[:'FromBlack']
      end

      if attributes.has_key?(:'OrientationDirection')
        self.orientation_direction = attributes[:'OrientationDirection']
      end

      if attributes.has_key?(:'ThroughBlack')
        self.through_black = attributes[:'ThroughBlack']
      end

      if attributes.has_key?(:'CornerAndCenterDirection')
        self.corner_and_center_direction = attributes[:'CornerAndCenterDirection']
      end

      if attributes.has_key?(:'ShredPattern')
        self.shred_pattern = attributes[:'ShredPattern']
      end

      if attributes.has_key?(:'Orientation')
        self.orientation = attributes[:'Orientation']
      end

      if attributes.has_key?(:'Spokes')
        self.spokes = attributes[:'Spokes']
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
      type_validator = EnumAttributeValidator.new('String', ['None', 'Blinds', 'Checker', 'Circle', 'Comb', 'Cover', 'Cut', 'Diamond', 'Dissolve', 'Fade', 'Newsflash', 'Plus', 'Pull', 'Push', 'Random', 'RandomBar', 'Split', 'Strips', 'Wedge', 'Wheel', 'Wipe', 'Zoom', 'Vortex', 'Switch', 'Flip', 'Ripple', 'Honeycomb', 'Cube', 'Box', 'Rotate', 'Orbit', 'Doors', 'Window', 'Ferris', 'Gallery', 'Conveyor', 'Pan', 'Glitter', 'Warp', 'Flythrough', 'Flash', 'Shred', 'Reveal', 'WheelReverse', 'FallOver', 'Drape', 'Curtains', 'Wind', 'Prestige', 'Fracture', 'Crush', 'PeelOff', 'PageCurlDouble', 'PageCurlSingle', 'Airplane', 'Origami', 'Morph'])
      return false unless type_validator.valid?(@type)
      sound_mode_validator = EnumAttributeValidator.new('String', ['StartSound', 'StopPrevoiusSound', 'NotDefined'])
      return false unless sound_mode_validator.valid?(@sound_mode)
      speed_validator = EnumAttributeValidator.new('String', ['Fast', 'Medium', 'Slow'])
      return false unless speed_validator.valid?(@speed)
      corner_direction_validator = EnumAttributeValidator.new('String', ['LeftDown', 'LeftUp', 'RightDown', 'RightUp'])
      return false unless corner_direction_validator.valid?(@corner_direction)
      eight_direction_validator = EnumAttributeValidator.new('String', ['LeftDown', 'LeftUp', 'RightDown', 'RightUp', 'Left', 'Up', 'Down', 'Right'])
      return false unless eight_direction_validator.valid?(@eight_direction)
      in_out_direction_validator = EnumAttributeValidator.new('String', ['In', 'Out'])
      return false unless in_out_direction_validator.valid?(@in_out_direction)
      side_direction_validator = EnumAttributeValidator.new('String', ['Left', 'Up', 'Down', 'Right'])
      return false unless side_direction_validator.valid?(@side_direction)
      pattern_validator = EnumAttributeValidator.new('String', ['Diamond', 'Hexagon'])
      return false unless pattern_validator.valid?(@pattern)
      left_right_direction_validator = EnumAttributeValidator.new('String', ['Left', 'Right'])
      return false unless left_right_direction_validator.valid?(@left_right_direction)
      morph_type_validator = EnumAttributeValidator.new('String', ['ByObject', 'ByWord', 'ByChar'])
      return false unless morph_type_validator.valid?(@morph_type)
      orientation_direction_validator = EnumAttributeValidator.new('String', ['Horizontal', 'Vertical'])
      return false unless orientation_direction_validator.valid?(@orientation_direction)
      corner_and_center_direction_validator = EnumAttributeValidator.new('String', ['LeftDown', 'LeftUp', 'RightDown', 'RightUp', 'Center'])
      return false unless corner_and_center_direction_validator.valid?(@corner_and_center_direction)
      shred_pattern_validator = EnumAttributeValidator.new('String', ['Strip', 'Rectangle'])
      return false unless shred_pattern_validator.valid?(@shred_pattern)
      orientation_validator = EnumAttributeValidator.new('String', ['Horizontal', 'Vertical'])
      return false unless orientation_validator.valid?(@orientation)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ['None', 'Blinds', 'Checker', 'Circle', 'Comb', 'Cover', 'Cut', 'Diamond', 'Dissolve', 'Fade', 'Newsflash', 'Plus', 'Pull', 'Push', 'Random', 'RandomBar', 'Split', 'Strips', 'Wedge', 'Wheel', 'Wipe', 'Zoom', 'Vortex', 'Switch', 'Flip', 'Ripple', 'Honeycomb', 'Cube', 'Box', 'Rotate', 'Orbit', 'Doors', 'Window', 'Ferris', 'Gallery', 'Conveyor', 'Pan', 'Glitter', 'Warp', 'Flythrough', 'Flash', 'Shred', 'Reveal', 'WheelReverse', 'FallOver', 'Drape', 'Curtains', 'Wind', 'Prestige', 'Fracture', 'Crush', 'PeelOff', 'PageCurlDouble', 'PageCurlSingle', 'Airplane', 'Origami', 'Morph'])
      unless validator.valid?(type)
        fail ArgumentError, 'invalid value for "type", must be one of #{validator.allowable_values}.'
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sound_mode Object to be assigned
    def sound_mode=(sound_mode)
      validator = EnumAttributeValidator.new('String', ['StartSound', 'StopPrevoiusSound', 'NotDefined'])
      unless validator.valid?(sound_mode)
        fail ArgumentError, 'invalid value for "sound_mode", must be one of #{validator.allowable_values}.'
      end
      @sound_mode = sound_mode
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] speed Object to be assigned
    def speed=(speed)
      validator = EnumAttributeValidator.new('String', ['Fast', 'Medium', 'Slow'])
      unless validator.valid?(speed)
        fail ArgumentError, 'invalid value for "speed", must be one of #{validator.allowable_values}.'
      end
      @speed = speed
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] corner_direction Object to be assigned
    def corner_direction=(corner_direction)
      validator = EnumAttributeValidator.new('String', ['LeftDown', 'LeftUp', 'RightDown', 'RightUp'])
      unless validator.valid?(corner_direction)
        fail ArgumentError, 'invalid value for "corner_direction", must be one of #{validator.allowable_values}.'
      end
      @corner_direction = corner_direction
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] eight_direction Object to be assigned
    def eight_direction=(eight_direction)
      validator = EnumAttributeValidator.new('String', ['LeftDown', 'LeftUp', 'RightDown', 'RightUp', 'Left', 'Up', 'Down', 'Right'])
      unless validator.valid?(eight_direction)
        fail ArgumentError, 'invalid value for "eight_direction", must be one of #{validator.allowable_values}.'
      end
      @eight_direction = eight_direction
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] in_out_direction Object to be assigned
    def in_out_direction=(in_out_direction)
      validator = EnumAttributeValidator.new('String', ['In', 'Out'])
      unless validator.valid?(in_out_direction)
        fail ArgumentError, 'invalid value for "in_out_direction", must be one of #{validator.allowable_values}.'
      end
      @in_out_direction = in_out_direction
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] side_direction Object to be assigned
    def side_direction=(side_direction)
      validator = EnumAttributeValidator.new('String', ['Left', 'Up', 'Down', 'Right'])
      unless validator.valid?(side_direction)
        fail ArgumentError, 'invalid value for "side_direction", must be one of #{validator.allowable_values}.'
      end
      @side_direction = side_direction
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] pattern Object to be assigned
    def pattern=(pattern)
      validator = EnumAttributeValidator.new('String', ['Diamond', 'Hexagon'])
      unless validator.valid?(pattern)
        fail ArgumentError, 'invalid value for "pattern", must be one of #{validator.allowable_values}.'
      end
      @pattern = pattern
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] left_right_direction Object to be assigned
    def left_right_direction=(left_right_direction)
      validator = EnumAttributeValidator.new('String', ['Left', 'Right'])
      unless validator.valid?(left_right_direction)
        fail ArgumentError, 'invalid value for "left_right_direction", must be one of #{validator.allowable_values}.'
      end
      @left_right_direction = left_right_direction
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] morph_type Object to be assigned
    def morph_type=(morph_type)
      validator = EnumAttributeValidator.new('String', ['ByObject', 'ByWord', 'ByChar'])
      unless validator.valid?(morph_type)
        fail ArgumentError, 'invalid value for "morph_type", must be one of #{validator.allowable_values}.'
      end
      @morph_type = morph_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] orientation_direction Object to be assigned
    def orientation_direction=(orientation_direction)
      validator = EnumAttributeValidator.new('String', ['Horizontal', 'Vertical'])
      unless validator.valid?(orientation_direction)
        fail ArgumentError, 'invalid value for "orientation_direction", must be one of #{validator.allowable_values}.'
      end
      @orientation_direction = orientation_direction
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] corner_and_center_direction Object to be assigned
    def corner_and_center_direction=(corner_and_center_direction)
      validator = EnumAttributeValidator.new('String', ['LeftDown', 'LeftUp', 'RightDown', 'RightUp', 'Center'])
      unless validator.valid?(corner_and_center_direction)
        fail ArgumentError, 'invalid value for "corner_and_center_direction", must be one of #{validator.allowable_values}.'
      end
      @corner_and_center_direction = corner_and_center_direction
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shred_pattern Object to be assigned
    def shred_pattern=(shred_pattern)
      validator = EnumAttributeValidator.new('String', ['Strip', 'Rectangle'])
      unless validator.valid?(shred_pattern)
        fail ArgumentError, 'invalid value for "shred_pattern", must be one of #{validator.allowable_values}.'
      end
      @shred_pattern = shred_pattern
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] orientation Object to be assigned
    def orientation=(orientation)
      validator = EnumAttributeValidator.new('String', ['Horizontal', 'Vertical'])
      unless validator.valid?(orientation)
        fail ArgumentError, 'invalid value for "orientation", must be one of #{validator.allowable_values}.'
      end
      @orientation = orientation
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          advance_after == o.advance_after &&
          advance_after_time == o.advance_after_time &&
          advance_on_click == o.advance_on_click &&
          sound_is_built_in == o.sound_is_built_in &&
          sound_loop == o.sound_loop &&
          sound_mode == o.sound_mode &&
          sound_name == o.sound_name &&
          speed == o.speed &&
          corner_direction == o.corner_direction &&
          eight_direction == o.eight_direction &&
          in_out_direction == o.in_out_direction &&
          has_bounce == o.has_bounce &&
          side_direction == o.side_direction &&
          pattern == o.pattern &&
          left_right_direction == o.left_right_direction &&
          morph_type == o.morph_type &&
          from_black == o.from_black &&
          orientation_direction == o.orientation_direction &&
          through_black == o.through_black &&
          corner_and_center_direction == o.corner_and_center_direction &&
          shred_pattern == o.shred_pattern &&
          orientation == o.orientation &&
          spokes == o.spokes
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [type, advance_after, advance_after_time, advance_on_click, sound_is_built_in, sound_loop, sound_mode, sound_name, speed, corner_direction, eight_direction, in_out_direction, has_bounce, side_direction, pattern, left_right_direction, morph_type, from_black, orientation_direction, through_black, corner_and_center_direction, shred_pattern, orientation, spokes].hash
    end
  end
end
