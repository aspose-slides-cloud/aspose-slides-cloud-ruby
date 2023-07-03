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
  # Camera
  class Camera < BaseObject
    # Camera type
    attr_accessor :camera_type

    # Camera FOV
    attr_accessor :field_of_view_angle

    # Camera zoom
    attr_accessor :zoom

    # XRotation
    attr_accessor :x_rotation

    # YRotation
    attr_accessor :y_rotation

    # ZRotation
    attr_accessor :z_rotation

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'camera_type' => :'CameraType',
        :'field_of_view_angle' => :'FieldOfViewAngle',
        :'zoom' => :'Zoom',
        :'x_rotation' => :'XRotation',
        :'y_rotation' => :'YRotation',
        :'z_rotation' => :'ZRotation',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'camera_type' => :'String',
        :'field_of_view_angle' => :'Float',
        :'zoom' => :'Float',
        :'x_rotation' => :'Float',
        :'y_rotation' => :'Float',
        :'z_rotation' => :'Float',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'CameraType')
        self.camera_type = attributes[:'CameraType']
      end

      if attributes.has_key?(:'FieldOfViewAngle')
        self.field_of_view_angle = attributes[:'FieldOfViewAngle']
      end

      if attributes.has_key?(:'Zoom')
        self.zoom = attributes[:'Zoom']
      end

      if attributes.has_key?(:'XRotation')
        self.x_rotation = attributes[:'XRotation']
      end

      if attributes.has_key?(:'YRotation')
        self.y_rotation = attributes[:'YRotation']
      end

      if attributes.has_key?(:'ZRotation')
        self.z_rotation = attributes[:'ZRotation']
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
      camera_type_validator = EnumAttributeValidator.new('String', ['IsometricBottomDown', 'IsometricBottomUp', 'IsometricLeftDown', 'IsometricLeftUp', 'IsometricOffAxis1Left', 'IsometricOffAxis1Right', 'IsometricOffAxis1Top', 'IsometricOffAxis2Left', 'IsometricOffAxis2Right', 'IsometricOffAxis2Top', 'IsometricOffAxis3Bottom', 'IsometricOffAxis3Left', 'IsometricOffAxis3Right', 'IsometricOffAxis4Bottom', 'IsometricOffAxis4Left', 'IsometricOffAxis4Right', 'IsometricRightDown', 'IsometricRightUp', 'IsometricTopDown', 'IsometricTopUp', 'LegacyObliqueBottom', 'LegacyObliqueBottomLeft', 'LegacyObliqueBottomRight', 'LegacyObliqueFront', 'LegacyObliqueLeft', 'LegacyObliqueRight', 'LegacyObliqueTop', 'LegacyObliqueTopLeft', 'LegacyObliqueTopRight', 'LegacyPerspectiveBottom', 'LegacyPerspectiveBottomLeft', 'LegacyPerspectiveBottomRight', 'LegacyPerspectiveFront', 'LegacyPerspectiveLeft', 'LegacyPerspectiveRight', 'LegacyPerspectiveTop', 'LegacyPerspectiveTopLeft', 'LegacyPerspectiveTopRight', 'ObliqueBottom', 'ObliqueBottomLeft', 'ObliqueBottomRight', 'ObliqueLeft', 'ObliqueRight', 'ObliqueTop', 'ObliqueTopLeft', 'ObliqueTopRight', 'OrthographicFront', 'PerspectiveAbove', 'PerspectiveAboveLeftFacing', 'PerspectiveAboveRightFacing', 'PerspectiveBelow', 'PerspectiveContrastingLeftFacing', 'PerspectiveContrastingRightFacing', 'PerspectiveFront', 'PerspectiveHeroicExtremeLeftFacing', 'PerspectiveHeroicExtremeRightFacing', 'PerspectiveHeroicLeftFacing', 'PerspectiveHeroicRightFacing', 'PerspectiveLeft', 'PerspectiveRelaxed', 'PerspectiveRelaxedModerately', 'PerspectiveRight', 'NotDefined'])
      return false unless camera_type_validator.valid?(@camera_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] camera_type Object to be assigned
    def camera_type=(camera_type)
      validator = EnumAttributeValidator.new('String', ['IsometricBottomDown', 'IsometricBottomUp', 'IsometricLeftDown', 'IsometricLeftUp', 'IsometricOffAxis1Left', 'IsometricOffAxis1Right', 'IsometricOffAxis1Top', 'IsometricOffAxis2Left', 'IsometricOffAxis2Right', 'IsometricOffAxis2Top', 'IsometricOffAxis3Bottom', 'IsometricOffAxis3Left', 'IsometricOffAxis3Right', 'IsometricOffAxis4Bottom', 'IsometricOffAxis4Left', 'IsometricOffAxis4Right', 'IsometricRightDown', 'IsometricRightUp', 'IsometricTopDown', 'IsometricTopUp', 'LegacyObliqueBottom', 'LegacyObliqueBottomLeft', 'LegacyObliqueBottomRight', 'LegacyObliqueFront', 'LegacyObliqueLeft', 'LegacyObliqueRight', 'LegacyObliqueTop', 'LegacyObliqueTopLeft', 'LegacyObliqueTopRight', 'LegacyPerspectiveBottom', 'LegacyPerspectiveBottomLeft', 'LegacyPerspectiveBottomRight', 'LegacyPerspectiveFront', 'LegacyPerspectiveLeft', 'LegacyPerspectiveRight', 'LegacyPerspectiveTop', 'LegacyPerspectiveTopLeft', 'LegacyPerspectiveTopRight', 'ObliqueBottom', 'ObliqueBottomLeft', 'ObliqueBottomRight', 'ObliqueLeft', 'ObliqueRight', 'ObliqueTop', 'ObliqueTopLeft', 'ObliqueTopRight', 'OrthographicFront', 'PerspectiveAbove', 'PerspectiveAboveLeftFacing', 'PerspectiveAboveRightFacing', 'PerspectiveBelow', 'PerspectiveContrastingLeftFacing', 'PerspectiveContrastingRightFacing', 'PerspectiveFront', 'PerspectiveHeroicExtremeLeftFacing', 'PerspectiveHeroicExtremeRightFacing', 'PerspectiveHeroicLeftFacing', 'PerspectiveHeroicRightFacing', 'PerspectiveLeft', 'PerspectiveRelaxed', 'PerspectiveRelaxedModerately', 'PerspectiveRight', 'NotDefined'])
      unless validator.valid?(camera_type)
        fail ArgumentError, 'invalid value for "camera_type", must be one of #{validator.allowable_values}.'
      end
      @camera_type = camera_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          camera_type == o.camera_type &&
          field_of_view_angle == o.field_of_view_angle &&
          zoom == o.zoom &&
          x_rotation == o.x_rotation &&
          y_rotation == o.y_rotation &&
          z_rotation == o.z_rotation
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [camera_type, field_of_view_angle, zoom, x_rotation, y_rotation, z_rotation].hash
    end
  end
end
