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
  # Represents document DTO.
  class Document < ResourceBase
    # Link to Document properties.
    attr_accessor :document_properties

    # Link to Document properties.
    attr_accessor :view_properties

    # Link to slides collection.
    attr_accessor :slides

    # Link to images collection.
    attr_accessor :images

    # Link to layout slides collection.
    attr_accessor :layout_slides

    # Link to master slides collection.
    attr_accessor :master_slides

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      super.merge({
        :'document_properties' => :'DocumentProperties',
        :'view_properties' => :'ViewProperties',
        :'slides' => :'Slides',
        :'images' => :'Images',
        :'layout_slides' => :'LayoutSlides',
        :'master_slides' => :'MasterSlides',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'document_properties' => :'ResourceUri',
        :'view_properties' => :'ResourceUri',
        :'slides' => :'ResourceUri',
        :'images' => :'ResourceUri',
        :'layout_slides' => :'ResourceUri',
        :'master_slides' => :'ResourceUri',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'DocumentProperties')
        self.document_properties = attributes[:'DocumentProperties']
      end

      if attributes.has_key?(:'ViewProperties')
        self.view_properties = attributes[:'ViewProperties']
      end

      if attributes.has_key?(:'Slides')
        self.slides = attributes[:'Slides']
      end

      if attributes.has_key?(:'Images')
        self.images = attributes[:'Images']
      end

      if attributes.has_key?(:'LayoutSlides')
        self.layout_slides = attributes[:'LayoutSlides']
      end

      if attributes.has_key?(:'MasterSlides')
        self.master_slides = attributes[:'MasterSlides']
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
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          self_uri == o.self_uri &&
          alternate_links == o.alternate_links &&
          document_properties == o.document_properties &&
          view_properties == o.view_properties &&
          slides == o.slides &&
          images == o.images &&
          layout_slides == o.layout_slides &&
          master_slides == o.master_slides
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [self_uri, alternate_links, document_properties, view_properties, slides, images, layout_slides, master_slides].hash
    end
  end
end
