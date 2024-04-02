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
  # Provides options that control how a presentation is saved in Html5 format.
  class Html5ExportOptions < ExportOptions
    # Gets or sets transitions animation option.
    attr_accessor :animate_transitions

    # Gets or sets shapes animation option.
    attr_accessor :animate_shapes

    # Gets or sets embed images option.
    attr_accessor :embed_images

    # Slides layouting options
    attr_accessor :notes_comments_layouting

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      super.merge({
        :'animate_transitions' => :'AnimateTransitions',
        :'animate_shapes' => :'AnimateShapes',
        :'embed_images' => :'EmbedImages',
        :'notes_comments_layouting' => :'NotesCommentsLayouting',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'animate_transitions' => :'BOOLEAN',
        :'animate_shapes' => :'BOOLEAN',
        :'embed_images' => :'BOOLEAN',
        :'notes_comments_layouting' => :'NotesCommentsLayoutingOptions',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'AnimateTransitions')
        self.animate_transitions = attributes[:'AnimateTransitions']
      end

      if attributes.has_key?(:'AnimateShapes')
        self.animate_shapes = attributes[:'AnimateShapes']
      end

      if attributes.has_key?(:'EmbedImages')
        self.embed_images = attributes[:'EmbedImages']
      end

      if attributes.has_key?(:'NotesCommentsLayouting')
        self.notes_comments_layouting = attributes[:'NotesCommentsLayouting']
      end
      self.format = 'html5'
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
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          default_regular_font == o.default_regular_font &&
          font_fallback_rules == o.font_fallback_rules &&
          font_subst_rules == o.font_subst_rules &&
          format == o.format &&
          animate_transitions == o.animate_transitions &&
          animate_shapes == o.animate_shapes &&
          embed_images == o.embed_images &&
          notes_comments_layouting == o.notes_comments_layouting
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [default_regular_font, font_fallback_rules, font_subst_rules, format, animate_transitions, animate_shapes, embed_images, notes_comments_layouting].hash
    end
  end
end
