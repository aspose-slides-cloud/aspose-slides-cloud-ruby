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
  class MarkdownExportOptions < ExportOptions
    # Specifies markdown specification to convert presentation. Default is TextOnly.
    attr_accessor :export_type

    # Specifies markdown specification to convert presentation. Default is MultiMarkdown.
    attr_accessor :flavor

    # Specifies whether the generated document should have new lines of \\\\r(Macintosh), \\\\n(Unix) or \\\\r\\\\n(Windows). Default is Unix.
    attr_accessor :new_line_type

    # Specifies folder name to save images. Default is Images. 
    attr_accessor :images_save_folder_name

    # Specifies whether the generated document should include slide number. Default is false. 
    attr_accessor :show_slide_number

    # Specifies whether the generated document should include comments. Default is false. 
    attr_accessor :show_comments

    # Specifies whether the generated document should include hidden slides. Default is false. 
    attr_accessor :show_hidden_slides

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      super.merge({
        :'export_type' => :'ExportType',
        :'flavor' => :'Flavor',
        :'new_line_type' => :'NewLineType',
        :'images_save_folder_name' => :'ImagesSaveFolderName',
        :'show_slide_number' => :'ShowSlideNumber',
        :'show_comments' => :'ShowComments',
        :'show_hidden_slides' => :'ShowHiddenSlides',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'export_type' => :'String',
        :'flavor' => :'String',
        :'new_line_type' => :'String',
        :'images_save_folder_name' => :'String',
        :'show_slide_number' => :'BOOLEAN',
        :'show_comments' => :'BOOLEAN',
        :'show_hidden_slides' => :'BOOLEAN',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'ExportType')
        self.export_type = attributes[:'ExportType']
      end

      if attributes.has_key?(:'Flavor')
        self.flavor = attributes[:'Flavor']
      end

      if attributes.has_key?(:'NewLineType')
        self.new_line_type = attributes[:'NewLineType']
      end

      if attributes.has_key?(:'ImagesSaveFolderName')
        self.images_save_folder_name = attributes[:'ImagesSaveFolderName']
      end

      if attributes.has_key?(:'ShowSlideNumber')
        self.show_slide_number = attributes[:'ShowSlideNumber']
      end

      if attributes.has_key?(:'ShowComments')
        self.show_comments = attributes[:'ShowComments']
      end

      if attributes.has_key?(:'ShowHiddenSlides')
        self.show_hidden_slides = attributes[:'ShowHiddenSlides']
      end
      self.format = 'md'
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
      export_type_validator = EnumAttributeValidator.new('String', ['Sequential', 'TextOnly', 'Visual'])
      return false unless export_type_validator.valid?(@export_type)
      flavor_validator = EnumAttributeValidator.new('String', ['Github', 'Gruber', 'MultiMarkdown', 'CommonMark', 'MarkdownExtra', 'Pandoc', 'Kramdown', 'Markua', 'Maruku', 'Markdown2', 'Remarkable', 'Showdown', 'Ghost', 'GitLab', 'Haroopad', 'IaWriter', 'Redcarpet', 'ScholarlyMarkdown', 'Taiga', 'Trello', 'S9ETextFormatter', 'XWiki', 'StackOverflow', 'Default'])
      return false unless flavor_validator.valid?(@flavor)
      new_line_type_validator = EnumAttributeValidator.new('String', ['Windows', 'Unix', 'Mac'])
      return false unless new_line_type_validator.valid?(@new_line_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] export_type Object to be assigned
    def export_type=(export_type)
      validator = EnumAttributeValidator.new('String', ['Sequential', 'TextOnly', 'Visual'])
      unless validator.valid?(export_type)
        fail ArgumentError, 'invalid value for "export_type", must be one of #{validator.allowable_values}.'
      end
      @export_type = export_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] flavor Object to be assigned
    def flavor=(flavor)
      validator = EnumAttributeValidator.new('String', ['Github', 'Gruber', 'MultiMarkdown', 'CommonMark', 'MarkdownExtra', 'Pandoc', 'Kramdown', 'Markua', 'Maruku', 'Markdown2', 'Remarkable', 'Showdown', 'Ghost', 'GitLab', 'Haroopad', 'IaWriter', 'Redcarpet', 'ScholarlyMarkdown', 'Taiga', 'Trello', 'S9ETextFormatter', 'XWiki', 'StackOverflow', 'Default'])
      unless validator.valid?(flavor)
        fail ArgumentError, 'invalid value for "flavor", must be one of #{validator.allowable_values}.'
      end
      @flavor = flavor
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] new_line_type Object to be assigned
    def new_line_type=(new_line_type)
      validator = EnumAttributeValidator.new('String', ['Windows', 'Unix', 'Mac'])
      unless validator.valid?(new_line_type)
        fail ArgumentError, 'invalid value for "new_line_type", must be one of #{validator.allowable_values}.'
      end
      @new_line_type = new_line_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          default_regular_font == o.default_regular_font &&
          delete_embedded_binary_objects == o.delete_embedded_binary_objects &&
          gradient_style == o.gradient_style &&
          font_fallback_rules == o.font_fallback_rules &&
          font_subst_rules == o.font_subst_rules &&
          format == o.format &&
          export_type == o.export_type &&
          flavor == o.flavor &&
          new_line_type == o.new_line_type &&
          images_save_folder_name == o.images_save_folder_name &&
          show_slide_number == o.show_slide_number &&
          show_comments == o.show_comments &&
          show_hidden_slides == o.show_hidden_slides
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [default_regular_font, delete_embedded_binary_objects, gradient_style, font_fallback_rules, font_subst_rules, format, export_type, flavor, new_line_type, images_save_folder_name, show_slide_number, show_comments, show_hidden_slides].hash
    end
  end
end
