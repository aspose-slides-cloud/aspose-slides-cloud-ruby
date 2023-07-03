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
  # Add slide task.
  class AddSlide < Task
    # File to clone a slide from.
    attr_accessor :clone_from_file

    # Position of the slide to clone.
    attr_accessor :clone_from_position

    # Position at which to insert the slide.
    attr_accessor :position

    # Alias of layout (href, index or type). If value is null a blank slide is added.
    attr_accessor :layout_alias

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      super.merge({
        :'clone_from_file' => :'CloneFromFile',
        :'clone_from_position' => :'CloneFromPosition',
        :'position' => :'Position',
        :'layout_alias' => :'LayoutAlias',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'clone_from_file' => :'InputFile',
        :'clone_from_position' => :'Integer',
        :'position' => :'Integer',
        :'layout_alias' => :'String',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'CloneFromFile')
        self.clone_from_file = attributes[:'CloneFromFile']
      end

      if attributes.has_key?(:'CloneFromPosition')
        self.clone_from_position = attributes[:'CloneFromPosition']
      end

      if attributes.has_key?(:'Position')
        self.position = attributes[:'Position']
      end

      if attributes.has_key?(:'LayoutAlias')
        self.layout_alias = attributes[:'LayoutAlias']
      end
      self.type = 'AddSlide'
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = super
      if @clone_from_position.nil?
        invalid_properties.push('invalid value for "clone_from_position", clone_from_position cannot be nil.')
      end

      if @position.nil?
        invalid_properties.push('invalid value for "position", position cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !super
      return false if @clone_from_position.nil?
      return false if @position.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          clone_from_file == o.clone_from_file &&
          clone_from_position == o.clone_from_position &&
          position == o.position &&
          layout_alias == o.layout_alias
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [type, clone_from_file, clone_from_position, position, layout_alias].hash
    end
  end
end
