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
  # Arc segment of the geometry path
  class ArcToPathSegment < PathSegment
    # Width of the rectangle
    attr_accessor :width

    # Height of the rectangle
    attr_accessor :height

    # Start angle
    attr_accessor :start_angle

    # Sweep angle
    attr_accessor :sweep_angle

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      super.merge({
        :'width' => :'Width',
        :'height' => :'Height',
        :'start_angle' => :'StartAngle',
        :'sweep_angle' => :'SweepAngle',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'width' => :'Float',
        :'height' => :'Float',
        :'start_angle' => :'Float',
        :'sweep_angle' => :'Float',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'Width')
        self.width = attributes[:'Width']
      end

      if attributes.has_key?(:'Height')
        self.height = attributes[:'Height']
      end

      if attributes.has_key?(:'StartAngle')
        self.start_angle = attributes[:'StartAngle']
      end

      if attributes.has_key?(:'SweepAngle')
        self.sweep_angle = attributes[:'SweepAngle']
      end
      self.type = 'ArcTo'
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = super
      if @width.nil?
        invalid_properties.push('invalid value for "width", width cannot be nil.')
      end

      if @height.nil?
        invalid_properties.push('invalid value for "height", height cannot be nil.')
      end

      if @start_angle.nil?
        invalid_properties.push('invalid value for "start_angle", start_angle cannot be nil.')
      end

      if @sweep_angle.nil?
        invalid_properties.push('invalid value for "sweep_angle", sweep_angle cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !super
      return false if @width.nil?
      return false if @height.nil?
      return false if @start_angle.nil?
      return false if @sweep_angle.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          width == o.width &&
          height == o.height &&
          start_angle == o.start_angle &&
          sweep_angle == o.sweep_angle
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [type, width, height, start_angle, sweep_angle].hash
    end
  end
end
