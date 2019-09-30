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
  # Represents comment of slide
  class Effect
    # Effect type.
    attr_accessor :type

    # Effect subtype.
    attr_accessor :subtype

    # Preset class type.
    attr_accessor :preset_class_type

    # Shape index.
    attr_accessor :shape_index

    # Effect trigger type.
    attr_accessor :trigger_type

    # The percentage of duration accelerate behavior effect.
    attr_accessor :accelerate

    # True to automatically play the animation in reverse after playing it in the forward direction.
    attr_accessor :auto_reverse

    # The percentage of duration decelerate behavior effect.
    attr_accessor :decelerate

    # The duration of animation effect.
    attr_accessor :duration

    # The number of times the effect should repeat.
    attr_accessor :repeat_count

    # The number of times the effect should repeat.
    attr_accessor :repeat_duration

    # The way for a effect to restart after complete.
    attr_accessor :restart

    # The percentage by which to speed up (or slow down) the timing.
    attr_accessor :speed

    # Delay time after trigger.
    attr_accessor :trigger_delay_time

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
        :'type' => :'Type',
        :'subtype' => :'Subtype',
        :'preset_class_type' => :'PresetClassType',
        :'shape_index' => :'ShapeIndex',
        :'trigger_type' => :'TriggerType',
        :'accelerate' => :'Accelerate',
        :'auto_reverse' => :'AutoReverse',
        :'decelerate' => :'Decelerate',
        :'duration' => :'Duration',
        :'repeat_count' => :'RepeatCount',
        :'repeat_duration' => :'RepeatDuration',
        :'restart' => :'Restart',
        :'speed' => :'Speed',
        :'trigger_delay_time' => :'TriggerDelayTime'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'type' => :'String',
        :'subtype' => :'String',
        :'preset_class_type' => :'String',
        :'shape_index' => :'Integer',
        :'trigger_type' => :'String',
        :'accelerate' => :'Float',
        :'auto_reverse' => :'BOOLEAN',
        :'decelerate' => :'Float',
        :'duration' => :'Float',
        :'repeat_count' => :'Float',
        :'repeat_duration' => :'Float',
        :'restart' => :'String',
        :'speed' => :'Float',
        :'trigger_delay_time' => :'Float'
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

      if attributes.has_key?(:'Subtype')
        self.subtype = attributes[:'Subtype']
      end

      if attributes.has_key?(:'PresetClassType')
        self.preset_class_type = attributes[:'PresetClassType']
      end

      if attributes.has_key?(:'ShapeIndex')
        self.shape_index = attributes[:'ShapeIndex']
      end

      if attributes.has_key?(:'TriggerType')
        self.trigger_type = attributes[:'TriggerType']
      end

      if attributes.has_key?(:'Accelerate')
        self.accelerate = attributes[:'Accelerate']
      end

      if attributes.has_key?(:'AutoReverse')
        self.auto_reverse = attributes[:'AutoReverse']
      end

      if attributes.has_key?(:'Decelerate')
        self.decelerate = attributes[:'Decelerate']
      end

      if attributes.has_key?(:'Duration')
        self.duration = attributes[:'Duration']
      end

      if attributes.has_key?(:'RepeatCount')
        self.repeat_count = attributes[:'RepeatCount']
      end

      if attributes.has_key?(:'RepeatDuration')
        self.repeat_duration = attributes[:'RepeatDuration']
      end

      if attributes.has_key?(:'Restart')
        self.restart = attributes[:'Restart']
      end

      if attributes.has_key?(:'Speed')
        self.speed = attributes[:'Speed']
      end

      if attributes.has_key?(:'TriggerDelayTime')
        self.trigger_delay_time = attributes[:'TriggerDelayTime']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @shape_index.nil?
        invalid_properties.push('invalid value for "shape_index", shape_index cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      type_validator = EnumAttributeValidator.new('String', ['Appear', 'CurveUpDown', 'Ascend', 'Blast', 'Blinds', 'Blink', 'BoldFlash', 'BoldReveal', 'Boomerang', 'Bounce', 'Box', 'BrushOnColor', 'BrushOnUnderline', 'CenterRevolve', 'ChangeFillColor', 'ChangeFont', 'ChangeFontColor', 'ChangeFontSize', 'ChangeFontStyle', 'ChangeLineColor', 'Checkerboard', 'Circle', 'ColorBlend', 'ColorTypewriter', 'ColorWave', 'ComplementaryColor', 'ComplementaryColor2', 'Compress', 'ContrastingColor', 'Crawl', 'Credits', 'Custom', 'Darken', 'Desaturate', 'Descend', 'Diamond', 'Dissolve', 'EaseInOut', 'Expand', 'Fade', 'FadedSwivel', 'FadedZoom', 'FlashBulb', 'FlashOnce', 'Flicker', 'Flip', 'Float', 'Fly', 'Fold', 'Glide', 'GrowAndTurn', 'GrowShrink', 'GrowWithColor', 'Lighten', 'LightSpeed', 'MediaPause', 'MediaPlay', 'MediaStop', 'Path4PointStar', 'Path5PointStar', 'Path6PointStar', 'Path8PointStar', 'PathArcDown', 'PathArcLeft', 'PathArcRight', 'PathArcUp', 'PathBean', 'PathBounceLeft', 'PathBounceRight', 'PathBuzzsaw', 'PathCircle', 'PathCrescentMoon', 'PathCurvedSquare', 'PathCurvedX', 'PathCurvyLeft', 'PathCurvyRight', 'PathCurvyStar', 'PathDecayingWave', 'PathDiagonalDownRight', 'PathDiagonalUpRight', 'PathDiamond', 'PathDown', 'PathEqualTriangle', 'PathFigure8Four', 'PathFootball', 'PathFunnel', 'PathHeart', 'PathHeartbeat', 'PathHexagon', 'PathHorizontalFigure8', 'PathInvertedSquare', 'PathInvertedTriangle', 'PathLeft', 'PathLoopdeLoop', 'PathNeutron', 'PathOctagon', 'PathParallelogram', 'PathPeanut', 'PathPentagon', 'PathPlus', 'PathPointyStar', 'PathRight', 'PathRightTriangle', 'PathSCurve1', 'PathSCurve2', 'PathSineWave', 'PathSpiralLeft', 'PathSpiralRight', 'PathSpring', 'PathSquare', 'PathStairsDown', 'PathSwoosh', 'PathTeardrop', 'PathTrapezoid', 'PathTurnDown', 'PathTurnRight', 'PathTurnUp', 'PathTurnUpRight', 'PathUp', 'PathUser', 'PathVerticalFigure8', 'PathWave', 'PathZigzag', 'Peek', 'Pinwheel', 'Plus', 'RandomBars', 'RandomEffects', 'RiseUp', 'Shimmer', 'Sling', 'Spin', 'Spinner', 'Spiral', 'Split', 'Stretch', 'Strips', 'StyleEmphasis', 'Swish', 'Swivel', 'Teeter', 'Thread', 'Transparency', 'Unfold', 'VerticalGrow', 'Wave', 'Wedge', 'Wheel', 'Whip', 'Wipe', 'Magnify', 'Zoom', 'OLEObjectShow', 'OLEObjectEdit', 'OLEObjectOpen'])
      return false unless type_validator.valid?(@type)
      subtype_validator = EnumAttributeValidator.new('String', ['None', 'Across', 'Bottom', 'BottomLeft', 'BottomRight', 'Center', 'Clockwise', 'CounterClockwise', 'GradualAndCycleClockwise', 'GradualAndCycleCounterClockwise', 'Down', 'DownLeft', 'DownRight', 'FontAllCaps', 'FontBold', 'FontItalic', 'FontShadow', 'FontStrikethrough', 'FontUnderline', 'Gradual', 'Horizontal', 'HorizontalIn', 'HorizontalOut', 'In', 'InBottom', 'InCenter', 'InSlightly', 'Instant', 'Left', 'OrdinalMask', 'Out', 'OutBottom', 'OutCenter', 'OutSlightly', 'Right', 'Slightly', 'Top', 'TopLeft', 'TopRight', 'Up', 'UpLeft', 'UpRight', 'Vertical', 'VerticalIn', 'VerticalOut', 'Wheel1', 'Wheel2', 'Wheel3', 'Wheel4', 'Wheel8'])
      return false unless subtype_validator.valid?(@subtype)
      preset_class_type_validator = EnumAttributeValidator.new('String', ['Entrance', 'Exit', 'Emphasis', 'Path', 'MediaCall', 'OLEActionVerbs'])
      return false unless preset_class_type_validator.valid?(@preset_class_type)
      return false if @shape_index.nil?
      trigger_type_validator = EnumAttributeValidator.new('String', ['AfterPrevious', 'OnClick', 'WithPrevious'])
      return false unless trigger_type_validator.valid?(@trigger_type)
      restart_validator = EnumAttributeValidator.new('String', ['Always', 'WhenNotActive', 'Never', 'NotDefined'])
      return false unless restart_validator.valid?(@restart)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ['Appear', 'CurveUpDown', 'Ascend', 'Blast', 'Blinds', 'Blink', 'BoldFlash', 'BoldReveal', 'Boomerang', 'Bounce', 'Box', 'BrushOnColor', 'BrushOnUnderline', 'CenterRevolve', 'ChangeFillColor', 'ChangeFont', 'ChangeFontColor', 'ChangeFontSize', 'ChangeFontStyle', 'ChangeLineColor', 'Checkerboard', 'Circle', 'ColorBlend', 'ColorTypewriter', 'ColorWave', 'ComplementaryColor', 'ComplementaryColor2', 'Compress', 'ContrastingColor', 'Crawl', 'Credits', 'Custom', 'Darken', 'Desaturate', 'Descend', 'Diamond', 'Dissolve', 'EaseInOut', 'Expand', 'Fade', 'FadedSwivel', 'FadedZoom', 'FlashBulb', 'FlashOnce', 'Flicker', 'Flip', 'Float', 'Fly', 'Fold', 'Glide', 'GrowAndTurn', 'GrowShrink', 'GrowWithColor', 'Lighten', 'LightSpeed', 'MediaPause', 'MediaPlay', 'MediaStop', 'Path4PointStar', 'Path5PointStar', 'Path6PointStar', 'Path8PointStar', 'PathArcDown', 'PathArcLeft', 'PathArcRight', 'PathArcUp', 'PathBean', 'PathBounceLeft', 'PathBounceRight', 'PathBuzzsaw', 'PathCircle', 'PathCrescentMoon', 'PathCurvedSquare', 'PathCurvedX', 'PathCurvyLeft', 'PathCurvyRight', 'PathCurvyStar', 'PathDecayingWave', 'PathDiagonalDownRight', 'PathDiagonalUpRight', 'PathDiamond', 'PathDown', 'PathEqualTriangle', 'PathFigure8Four', 'PathFootball', 'PathFunnel', 'PathHeart', 'PathHeartbeat', 'PathHexagon', 'PathHorizontalFigure8', 'PathInvertedSquare', 'PathInvertedTriangle', 'PathLeft', 'PathLoopdeLoop', 'PathNeutron', 'PathOctagon', 'PathParallelogram', 'PathPeanut', 'PathPentagon', 'PathPlus', 'PathPointyStar', 'PathRight', 'PathRightTriangle', 'PathSCurve1', 'PathSCurve2', 'PathSineWave', 'PathSpiralLeft', 'PathSpiralRight', 'PathSpring', 'PathSquare', 'PathStairsDown', 'PathSwoosh', 'PathTeardrop', 'PathTrapezoid', 'PathTurnDown', 'PathTurnRight', 'PathTurnUp', 'PathTurnUpRight', 'PathUp', 'PathUser', 'PathVerticalFigure8', 'PathWave', 'PathZigzag', 'Peek', 'Pinwheel', 'Plus', 'RandomBars', 'RandomEffects', 'RiseUp', 'Shimmer', 'Sling', 'Spin', 'Spinner', 'Spiral', 'Split', 'Stretch', 'Strips', 'StyleEmphasis', 'Swish', 'Swivel', 'Teeter', 'Thread', 'Transparency', 'Unfold', 'VerticalGrow', 'Wave', 'Wedge', 'Wheel', 'Whip', 'Wipe', 'Magnify', 'Zoom', 'OLEObjectShow', 'OLEObjectEdit', 'OLEObjectOpen'])
      unless validator.valid?(type)
        fail ArgumentError, 'invalid value for "type", must be one of #{validator.allowable_values}.'
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] subtype Object to be assigned
    def subtype=(subtype)
      validator = EnumAttributeValidator.new('String', ['None', 'Across', 'Bottom', 'BottomLeft', 'BottomRight', 'Center', 'Clockwise', 'CounterClockwise', 'GradualAndCycleClockwise', 'GradualAndCycleCounterClockwise', 'Down', 'DownLeft', 'DownRight', 'FontAllCaps', 'FontBold', 'FontItalic', 'FontShadow', 'FontStrikethrough', 'FontUnderline', 'Gradual', 'Horizontal', 'HorizontalIn', 'HorizontalOut', 'In', 'InBottom', 'InCenter', 'InSlightly', 'Instant', 'Left', 'OrdinalMask', 'Out', 'OutBottom', 'OutCenter', 'OutSlightly', 'Right', 'Slightly', 'Top', 'TopLeft', 'TopRight', 'Up', 'UpLeft', 'UpRight', 'Vertical', 'VerticalIn', 'VerticalOut', 'Wheel1', 'Wheel2', 'Wheel3', 'Wheel4', 'Wheel8'])
      unless validator.valid?(subtype)
        fail ArgumentError, 'invalid value for "subtype", must be one of #{validator.allowable_values}.'
      end
      @subtype = subtype
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] preset_class_type Object to be assigned
    def preset_class_type=(preset_class_type)
      validator = EnumAttributeValidator.new('String', ['Entrance', 'Exit', 'Emphasis', 'Path', 'MediaCall', 'OLEActionVerbs'])
      unless validator.valid?(preset_class_type)
        fail ArgumentError, 'invalid value for "preset_class_type", must be one of #{validator.allowable_values}.'
      end
      @preset_class_type = preset_class_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] trigger_type Object to be assigned
    def trigger_type=(trigger_type)
      validator = EnumAttributeValidator.new('String', ['AfterPrevious', 'OnClick', 'WithPrevious'])
      unless validator.valid?(trigger_type)
        fail ArgumentError, 'invalid value for "trigger_type", must be one of #{validator.allowable_values}.'
      end
      @trigger_type = trigger_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] restart Object to be assigned
    def restart=(restart)
      validator = EnumAttributeValidator.new('String', ['Always', 'WhenNotActive', 'Never', 'NotDefined'])
      unless validator.valid?(restart)
        fail ArgumentError, 'invalid value for "restart", must be one of #{validator.allowable_values}.'
      end
      @restart = restart
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          subtype == o.subtype &&
          preset_class_type == o.preset_class_type &&
          shape_index == o.shape_index &&
          trigger_type == o.trigger_type &&
          accelerate == o.accelerate &&
          auto_reverse == o.auto_reverse &&
          decelerate == o.decelerate &&
          duration == o.duration &&
          repeat_count == o.repeat_count &&
          repeat_duration == o.repeat_duration &&
          restart == o.restart &&
          speed == o.speed &&
          trigger_delay_time == o.trigger_delay_time
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [type, subtype, preset_class_type, shape_index, trigger_type, accelerate, auto_reverse, decelerate, duration, repeat_count, repeat_duration, restart, speed, trigger_delay_time].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
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
