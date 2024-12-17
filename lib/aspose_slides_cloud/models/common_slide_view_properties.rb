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
  # Slide view properties.
  class CommonSlideViewProperties < BaseObject
    # The view scaling ratio (percentage).
    attr_accessor :scale

    # True if the view content should automatically scale to best fit the current window size.
    attr_accessor :variable_scale

    # Drawing guides
    attr_accessor :drawing_guides

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'scale' => :'Scale',
        :'variable_scale' => :'VariableScale',
        :'drawing_guides' => :'DrawingGuides',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'scale' => :'Integer',
        :'variable_scale' => :'BOOLEAN',
        :'drawing_guides' => :'Array<DrawingGuide>',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'Scale')
        self.scale = attributes[:'Scale']
      end

      if attributes.has_key?(:'VariableScale')
        self.variable_scale = attributes[:'VariableScale']
      end

      if attributes.has_key?(:'DrawingGuides')
        if (value = attributes[:'DrawingGuides']).is_a?(Array)
          self.drawing_guides = value
        end
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
          scale == o.scale &&
          variable_scale == o.variable_scale &&
          drawing_guides == o.drawing_guides
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [scale, variable_scale, drawing_guides].hash
    end
  end
end
