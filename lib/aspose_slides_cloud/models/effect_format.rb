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
  # Effect format
  class EffectFormat < BaseObject
    # blur effect
    attr_accessor :blur

    # glow effect
    attr_accessor :glow

    # inner shadow effect
    attr_accessor :inner_shadow

    # outer shadow effect
    attr_accessor :outer_shadow

    # preset shadow effect
    attr_accessor :preset_shadow

    # soft edge effect
    attr_accessor :soft_edge

    # reflection effect
    attr_accessor :reflection

    # fill overlay effect
    attr_accessor :fill_overlay

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'blur' => :'Blur',
        :'glow' => :'Glow',
        :'inner_shadow' => :'InnerShadow',
        :'outer_shadow' => :'OuterShadow',
        :'preset_shadow' => :'PresetShadow',
        :'soft_edge' => :'SoftEdge',
        :'reflection' => :'Reflection',
        :'fill_overlay' => :'FillOverlay',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'blur' => :'BlurEffect',
        :'glow' => :'GlowEffect',
        :'inner_shadow' => :'InnerShadowEffect',
        :'outer_shadow' => :'OuterShadowEffect',
        :'preset_shadow' => :'PresetShadowEffect',
        :'soft_edge' => :'SoftEdgeEffect',
        :'reflection' => :'ReflectionEffect',
        :'fill_overlay' => :'FillOverlayEffect',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'Blur')
        self.blur = attributes[:'Blur']
      end

      if attributes.has_key?(:'Glow')
        self.glow = attributes[:'Glow']
      end

      if attributes.has_key?(:'InnerShadow')
        self.inner_shadow = attributes[:'InnerShadow']
      end

      if attributes.has_key?(:'OuterShadow')
        self.outer_shadow = attributes[:'OuterShadow']
      end

      if attributes.has_key?(:'PresetShadow')
        self.preset_shadow = attributes[:'PresetShadow']
      end

      if attributes.has_key?(:'SoftEdge')
        self.soft_edge = attributes[:'SoftEdge']
      end

      if attributes.has_key?(:'Reflection')
        self.reflection = attributes[:'Reflection']
      end

      if attributes.has_key?(:'FillOverlay')
        self.fill_overlay = attributes[:'FillOverlay']
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
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          blur == o.blur &&
          glow == o.glow &&
          inner_shadow == o.inner_shadow &&
          outer_shadow == o.outer_shadow &&
          preset_shadow == o.preset_shadow &&
          soft_edge == o.soft_edge &&
          reflection == o.reflection &&
          fill_overlay == o.fill_overlay
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [blur, glow, inner_shadow, outer_shadow, preset_shadow, soft_edge, reflection, fill_overlay].hash
    end
  end
end
