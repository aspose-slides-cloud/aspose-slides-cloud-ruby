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
  # Slides document properties.
  class ViewProperties < ResourceBase
    # Last used view mode.
    attr_accessor :last_view

    # Horizontal bar state.
    attr_accessor :horizontal_bar_state

    # Vertical bar state.
    attr_accessor :vertical_bar_state

    # True to prefer single view.
    attr_accessor :prefer_single_view

    # The sizing of the side content region of the normal view, when the region is of a variable restored size.
    attr_accessor :restored_left

    # The sizing of the top slide region of the normal view, when the region is of a variable restored size.
    attr_accessor :restored_top

    # Slide view mode properties.
    attr_accessor :slide_view_properties

    # Notes view mode properties.
    attr_accessor :notes_view_properties

    # True if the comments should be shown.
    attr_accessor :show_comments

    # The grid spacing that should be used for the grid underlying the presentation document, in points.
    attr_accessor :grid_spacing

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      super.merge({
        :'last_view' => :'LastView',
        :'horizontal_bar_state' => :'HorizontalBarState',
        :'vertical_bar_state' => :'VerticalBarState',
        :'prefer_single_view' => :'PreferSingleView',
        :'restored_left' => :'RestoredLeft',
        :'restored_top' => :'RestoredTop',
        :'slide_view_properties' => :'SlideViewProperties',
        :'notes_view_properties' => :'NotesViewProperties',
        :'show_comments' => :'ShowComments',
        :'grid_spacing' => :'GridSpacing',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'last_view' => :'String',
        :'horizontal_bar_state' => :'String',
        :'vertical_bar_state' => :'String',
        :'prefer_single_view' => :'BOOLEAN',
        :'restored_left' => :'NormalViewRestoredProperties',
        :'restored_top' => :'NormalViewRestoredProperties',
        :'slide_view_properties' => :'CommonSlideViewProperties',
        :'notes_view_properties' => :'CommonSlideViewProperties',
        :'show_comments' => :'String',
        :'grid_spacing' => :'Float',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'LastView')
        self.last_view = attributes[:'LastView']
      end

      if attributes.has_key?(:'HorizontalBarState')
        self.horizontal_bar_state = attributes[:'HorizontalBarState']
      end

      if attributes.has_key?(:'VerticalBarState')
        self.vertical_bar_state = attributes[:'VerticalBarState']
      end

      if attributes.has_key?(:'PreferSingleView')
        self.prefer_single_view = attributes[:'PreferSingleView']
      end

      if attributes.has_key?(:'RestoredLeft')
        self.restored_left = attributes[:'RestoredLeft']
      end

      if attributes.has_key?(:'RestoredTop')
        self.restored_top = attributes[:'RestoredTop']
      end

      if attributes.has_key?(:'SlideViewProperties')
        self.slide_view_properties = attributes[:'SlideViewProperties']
      end

      if attributes.has_key?(:'NotesViewProperties')
        self.notes_view_properties = attributes[:'NotesViewProperties']
      end

      if attributes.has_key?(:'ShowComments')
        self.show_comments = attributes[:'ShowComments']
      end

      if attributes.has_key?(:'GridSpacing')
        self.grid_spacing = attributes[:'GridSpacing']
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
      last_view_validator = EnumAttributeValidator.new('String', ['NotDefined', 'SlideView', 'SlideMasterView', 'NotesView', 'HandoutView', 'NotesMasterView', 'OutlineView', 'SlideSorterView', 'SlideThumbnailView'])
      return false unless last_view_validator.valid?(@last_view)
      horizontal_bar_state_validator = EnumAttributeValidator.new('String', ['Minimized', 'Restored', 'Maximized'])
      return false unless horizontal_bar_state_validator.valid?(@horizontal_bar_state)
      vertical_bar_state_validator = EnumAttributeValidator.new('String', ['Minimized', 'Restored', 'Maximized'])
      return false unless vertical_bar_state_validator.valid?(@vertical_bar_state)
      show_comments_validator = EnumAttributeValidator.new('String', ['False', 'True', 'NotDefined'])
      return false unless show_comments_validator.valid?(@show_comments)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] last_view Object to be assigned
    def last_view=(last_view)
      validator = EnumAttributeValidator.new('String', ['NotDefined', 'SlideView', 'SlideMasterView', 'NotesView', 'HandoutView', 'NotesMasterView', 'OutlineView', 'SlideSorterView', 'SlideThumbnailView'])
      unless validator.valid?(last_view)
        fail ArgumentError, 'invalid value for "last_view", must be one of #{validator.allowable_values}.'
      end
      @last_view = last_view
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] horizontal_bar_state Object to be assigned
    def horizontal_bar_state=(horizontal_bar_state)
      validator = EnumAttributeValidator.new('String', ['Minimized', 'Restored', 'Maximized'])
      unless validator.valid?(horizontal_bar_state)
        fail ArgumentError, 'invalid value for "horizontal_bar_state", must be one of #{validator.allowable_values}.'
      end
      @horizontal_bar_state = horizontal_bar_state
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] vertical_bar_state Object to be assigned
    def vertical_bar_state=(vertical_bar_state)
      validator = EnumAttributeValidator.new('String', ['Minimized', 'Restored', 'Maximized'])
      unless validator.valid?(vertical_bar_state)
        fail ArgumentError, 'invalid value for "vertical_bar_state", must be one of #{validator.allowable_values}.'
      end
      @vertical_bar_state = vertical_bar_state
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] show_comments Object to be assigned
    def show_comments=(show_comments)
      validator = EnumAttributeValidator.new('String', ['False', 'True', 'NotDefined'])
      unless validator.valid?(show_comments)
        fail ArgumentError, 'invalid value for "show_comments", must be one of #{validator.allowable_values}.'
      end
      @show_comments = show_comments
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          self_uri == o.self_uri &&
          alternate_links == o.alternate_links &&
          last_view == o.last_view &&
          horizontal_bar_state == o.horizontal_bar_state &&
          vertical_bar_state == o.vertical_bar_state &&
          prefer_single_view == o.prefer_single_view &&
          restored_left == o.restored_left &&
          restored_top == o.restored_top &&
          slide_view_properties == o.slide_view_properties &&
          notes_view_properties == o.notes_view_properties &&
          show_comments == o.show_comments &&
          grid_spacing == o.grid_spacing
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [self_uri, alternate_links, last_view, horizontal_bar_state, vertical_bar_state, prefer_single_view, restored_left, restored_top, slide_view_properties, notes_view_properties, show_comments, grid_spacing].hash
    end
  end
end
