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
  # Handout layouting options
  class HandoutLayoutingOptions < SlidesLayoutOptions
    # Specified how many pages and in what sequence will be placed on the page.
    attr_accessor :handout

    # True to print the displayed slide numbers.
    attr_accessor :print_slide_numbers

    # True to display comments on slide.
    attr_accessor :print_comments

    # True to draw frames around the displayed slides.
    attr_accessor :print_frame_slide

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      super.merge({
        :'handout' => :'Handout',
        :'print_slide_numbers' => :'PrintSlideNumbers',
        :'print_comments' => :'PrintComments',
        :'print_frame_slide' => :'PrintFrameSlide',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'handout' => :'String',
        :'print_slide_numbers' => :'BOOLEAN',
        :'print_comments' => :'BOOLEAN',
        :'print_frame_slide' => :'BOOLEAN',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'Handout')
        self.handout = attributes[:'Handout']
      end

      if attributes.has_key?(:'PrintSlideNumbers')
        self.print_slide_numbers = attributes[:'PrintSlideNumbers']
      end

      if attributes.has_key?(:'PrintComments')
        self.print_comments = attributes[:'PrintComments']
      end

      if attributes.has_key?(:'PrintFrameSlide')
        self.print_frame_slide = attributes[:'PrintFrameSlide']
      end
      self.layout_type = 'Handout'
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
      handout_validator = EnumAttributeValidator.new('String', ['Handouts1', 'Handouts2', 'Handouts3', 'Handouts4Horizontal', 'Handouts4Vertical', 'Handouts6Horizontal', 'Handouts6Vertical', 'Handouts9Horizontal', 'Handouts9Vertical'])
      return false unless handout_validator.valid?(@handout)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] handout Object to be assigned
    def handout=(handout)
      validator = EnumAttributeValidator.new('String', ['Handouts1', 'Handouts2', 'Handouts3', 'Handouts4Horizontal', 'Handouts4Vertical', 'Handouts6Horizontal', 'Handouts6Vertical', 'Handouts9Horizontal', 'Handouts9Vertical'])
      unless validator.valid?(handout)
        fail ArgumentError, 'invalid value for "handout", must be one of #{validator.allowable_values}.'
      end
      @handout = handout
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          layout_type == o.layout_type &&
          handout == o.handout &&
          print_slide_numbers == o.print_slide_numbers &&
          print_comments == o.print_comments &&
          print_frame_slide == o.print_frame_slide
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [layout_type, handout, print_slide_numbers, print_comments, print_frame_slide].hash
    end
  end
end
