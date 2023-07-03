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
  # ThreeDFormat
  class ThreeDFormat < BaseObject
    # Type of a bottom 3D bevel.             
    attr_accessor :bevel_bottom

    # Type of a top 3D bevel.             
    attr_accessor :bevel_top

    # Camera
    attr_accessor :camera

    # Contour color
    attr_accessor :contour_color

    # Contour width
    attr_accessor :contour_width

    # Depth
    attr_accessor :depth

    # Extrusion color
    attr_accessor :extrusion_color

    # Extrusion height
    attr_accessor :extrusion_height

    # Light rig
    attr_accessor :light_rig

    # Material
    attr_accessor :material

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'bevel_bottom' => :'BevelBottom',
        :'bevel_top' => :'BevelTop',
        :'camera' => :'Camera',
        :'contour_color' => :'ContourColor',
        :'contour_width' => :'ContourWidth',
        :'depth' => :'Depth',
        :'extrusion_color' => :'ExtrusionColor',
        :'extrusion_height' => :'ExtrusionHeight',
        :'light_rig' => :'LightRig',
        :'material' => :'Material',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'bevel_bottom' => :'ShapeBevel',
        :'bevel_top' => :'ShapeBevel',
        :'camera' => :'Camera',
        :'contour_color' => :'String',
        :'contour_width' => :'Float',
        :'depth' => :'Float',
        :'extrusion_color' => :'String',
        :'extrusion_height' => :'Float',
        :'light_rig' => :'LightRig',
        :'material' => :'String',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'BevelBottom')
        self.bevel_bottom = attributes[:'BevelBottom']
      end

      if attributes.has_key?(:'BevelTop')
        self.bevel_top = attributes[:'BevelTop']
      end

      if attributes.has_key?(:'Camera')
        self.camera = attributes[:'Camera']
      end

      if attributes.has_key?(:'ContourColor')
        self.contour_color = attributes[:'ContourColor']
      end

      if attributes.has_key?(:'ContourWidth')
        self.contour_width = attributes[:'ContourWidth']
      end

      if attributes.has_key?(:'Depth')
        self.depth = attributes[:'Depth']
      end

      if attributes.has_key?(:'ExtrusionColor')
        self.extrusion_color = attributes[:'ExtrusionColor']
      end

      if attributes.has_key?(:'ExtrusionHeight')
        self.extrusion_height = attributes[:'ExtrusionHeight']
      end

      if attributes.has_key?(:'LightRig')
        self.light_rig = attributes[:'LightRig']
      end

      if attributes.has_key?(:'Material')
        self.material = attributes[:'Material']
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
      material_validator = EnumAttributeValidator.new('String', ['Clear', 'DkEdge', 'Flat', 'LegacyMatte', 'LegacyMetal', 'LegacyPlastic', 'LegacyWireframe', 'Matte', 'Metal', 'Plastic', 'Powder', 'SoftEdge', 'Softmetal', 'TranslucentPowder', 'WarmMatte', 'NotDefined'])
      return false unless material_validator.valid?(@material)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] material Object to be assigned
    def material=(material)
      validator = EnumAttributeValidator.new('String', ['Clear', 'DkEdge', 'Flat', 'LegacyMatte', 'LegacyMetal', 'LegacyPlastic', 'LegacyWireframe', 'Matte', 'Metal', 'Plastic', 'Powder', 'SoftEdge', 'Softmetal', 'TranslucentPowder', 'WarmMatte', 'NotDefined'])
      unless validator.valid?(material)
        fail ArgumentError, 'invalid value for "material", must be one of #{validator.allowable_values}.'
      end
      @material = material
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          bevel_bottom == o.bevel_bottom &&
          bevel_top == o.bevel_top &&
          camera == o.camera &&
          contour_color == o.contour_color &&
          contour_width == o.contour_width &&
          depth == o.depth &&
          extrusion_color == o.extrusion_color &&
          extrusion_height == o.extrusion_height &&
          light_rig == o.light_rig &&
          material == o.material
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [bevel_bottom, bevel_top, camera, contour_color, contour_width, depth, extrusion_color, extrusion_height, light_rig, material].hash
    end
  end
end
