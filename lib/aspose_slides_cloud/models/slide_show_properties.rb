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
  # Slide show properties.
  class SlideShowProperties < ResourceBase
    # Loop slide show.
    attr_accessor :loop

    # Start slide in the slide show.
    attr_accessor :start_slide

    # End slides in the slide show.
    attr_accessor :end_slide

    # Pen color.
    attr_accessor :pen_color

    # Show animation.
    attr_accessor :show_animation

    # Show narrration.
    attr_accessor :show_narration

    # Use timings.
    attr_accessor :use_timings

    # Slide show type.
    attr_accessor :slide_show_type

    # Show scroll bar. Applied with BrowsedByIndividual slide show type.
    attr_accessor :show_scrollbar

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      super.merge({
        :'loop' => :'Loop',
        :'start_slide' => :'StartSlide',
        :'end_slide' => :'EndSlide',
        :'pen_color' => :'PenColor',
        :'show_animation' => :'ShowAnimation',
        :'show_narration' => :'ShowNarration',
        :'use_timings' => :'UseTimings',
        :'slide_show_type' => :'SlideShowType',
        :'show_scrollbar' => :'ShowScrollbar',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'loop' => :'BOOLEAN',
        :'start_slide' => :'Integer',
        :'end_slide' => :'Integer',
        :'pen_color' => :'String',
        :'show_animation' => :'BOOLEAN',
        :'show_narration' => :'BOOLEAN',
        :'use_timings' => :'BOOLEAN',
        :'slide_show_type' => :'String',
        :'show_scrollbar' => :'BOOLEAN',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'Loop')
        self.loop = attributes[:'Loop']
      end

      if attributes.has_key?(:'StartSlide')
        self.start_slide = attributes[:'StartSlide']
      end

      if attributes.has_key?(:'EndSlide')
        self.end_slide = attributes[:'EndSlide']
      end

      if attributes.has_key?(:'PenColor')
        self.pen_color = attributes[:'PenColor']
      end

      if attributes.has_key?(:'ShowAnimation')
        self.show_animation = attributes[:'ShowAnimation']
      end

      if attributes.has_key?(:'ShowNarration')
        self.show_narration = attributes[:'ShowNarration']
      end

      if attributes.has_key?(:'UseTimings')
        self.use_timings = attributes[:'UseTimings']
      end

      if attributes.has_key?(:'SlideShowType')
        self.slide_show_type = attributes[:'SlideShowType']
      end

      if attributes.has_key?(:'ShowScrollbar')
        self.show_scrollbar = attributes[:'ShowScrollbar']
      end
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
      slide_show_type_validator = EnumAttributeValidator.new('String', ['BrowsedAtKiosk', 'BrowsedByIndividual', 'PresentedBySpeaker'])
      return false unless slide_show_type_validator.valid?(@slide_show_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] slide_show_type Object to be assigned
    def slide_show_type=(slide_show_type)
      validator = EnumAttributeValidator.new('String', ['BrowsedAtKiosk', 'BrowsedByIndividual', 'PresentedBySpeaker'])
      unless validator.valid?(slide_show_type)
        fail ArgumentError, 'invalid value for "slide_show_type", must be one of #{validator.allowable_values}.'
      end
      @slide_show_type = slide_show_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          self_uri == o.self_uri &&
          alternate_links == o.alternate_links &&
          loop == o.loop &&
          start_slide == o.start_slide &&
          end_slide == o.end_slide &&
          pen_color == o.pen_color &&
          show_animation == o.show_animation &&
          show_narration == o.show_narration &&
          use_timings == o.use_timings &&
          slide_show_type == o.slide_show_type &&
          show_scrollbar == o.show_scrollbar
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [self_uri, alternate_links, loop, start_slide, end_slide, pen_color, show_animation, show_narration, use_timings, slide_show_type, show_scrollbar].hash
    end
  end
end
