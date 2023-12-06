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
  # Presentation slide.
  class Slide < ResourceBase
    # Gets or sets the width.
    attr_accessor :width

    # Gets or sets the height.
    attr_accessor :height

    # Specifies if shapes of the master slide should be shown on the slide. True by default.
    attr_accessor :show_master_shapes

    # Specifies if shapes of the master slide should be shown on the slide. True by default.
    attr_accessor :slide_show_transition

    # Gets or sets the  link to the layout slide.
    attr_accessor :layout_slide

    # Gets or sets the  link to list of top-level shapes.
    attr_accessor :shapes

    # Gets or sets the link to theme.
    attr_accessor :theme

    # Gets or sets the  link to placeholders.
    attr_accessor :placeholders

    # Gets or sets the link to images.
    attr_accessor :images

    # Gets or sets the link to comments.
    attr_accessor :comments

    # Get or sets the link to slide's background
    attr_accessor :background

    # Get or sets the link to notes slide.
    attr_accessor :notes_slide

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      super.merge({
        :'width' => :'Width',
        :'height' => :'Height',
        :'show_master_shapes' => :'ShowMasterShapes',
        :'slide_show_transition' => :'SlideShowTransition',
        :'layout_slide' => :'LayoutSlide',
        :'shapes' => :'Shapes',
        :'theme' => :'Theme',
        :'placeholders' => :'Placeholders',
        :'images' => :'Images',
        :'comments' => :'Comments',
        :'background' => :'Background',
        :'notes_slide' => :'NotesSlide',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'width' => :'Float',
        :'height' => :'Float',
        :'show_master_shapes' => :'BOOLEAN',
        :'slide_show_transition' => :'SlideShowTransition',
        :'layout_slide' => :'ResourceUri',
        :'shapes' => :'ResourceUri',
        :'theme' => :'ResourceUri',
        :'placeholders' => :'ResourceUri',
        :'images' => :'ResourceUri',
        :'comments' => :'ResourceUri',
        :'background' => :'ResourceUri',
        :'notes_slide' => :'ResourceUri',
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

      if attributes.has_key?(:'ShowMasterShapes')
        self.show_master_shapes = attributes[:'ShowMasterShapes']
      end

      if attributes.has_key?(:'SlideShowTransition')
        self.slide_show_transition = attributes[:'SlideShowTransition']
      end

      if attributes.has_key?(:'LayoutSlide')
        self.layout_slide = attributes[:'LayoutSlide']
      end

      if attributes.has_key?(:'Shapes')
        self.shapes = attributes[:'Shapes']
      end

      if attributes.has_key?(:'Theme')
        self.theme = attributes[:'Theme']
      end

      if attributes.has_key?(:'Placeholders')
        self.placeholders = attributes[:'Placeholders']
      end

      if attributes.has_key?(:'Images')
        self.images = attributes[:'Images']
      end

      if attributes.has_key?(:'Comments')
        self.comments = attributes[:'Comments']
      end

      if attributes.has_key?(:'Background')
        self.background = attributes[:'Background']
      end

      if attributes.has_key?(:'NotesSlide')
        self.notes_slide = attributes[:'NotesSlide']
      end
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

      if @show_master_shapes.nil?
        invalid_properties.push('invalid value for "show_master_shapes", show_master_shapes cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !super
      return false if @width.nil?
      return false if @height.nil?
      return false if @show_master_shapes.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          self_uri == o.self_uri &&
          alternate_links == o.alternate_links &&
          width == o.width &&
          height == o.height &&
          show_master_shapes == o.show_master_shapes &&
          slide_show_transition == o.slide_show_transition &&
          layout_slide == o.layout_slide &&
          shapes == o.shapes &&
          theme == o.theme &&
          placeholders == o.placeholders &&
          images == o.images &&
          comments == o.comments &&
          background == o.background &&
          notes_slide == o.notes_slide
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [self_uri, alternate_links, width, height, show_master_shapes, slide_show_transition, layout_slide, shapes, theme, placeholders, images, comments, background, notes_slide].hash
    end
  end
end
