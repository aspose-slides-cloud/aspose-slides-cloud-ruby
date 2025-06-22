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
  # Provides options that control how a presentation is saved in SWF format.
  class SwfExportOptions < ExportOptions
    # Specifies whether the generated document should include hidden slides or not. Default is false. 
    attr_accessor :show_hidden_slides

    # Specifies whether the generated SWF document should be compressed or not. Default is true. 
    attr_accessor :compressed

    # Specifies whether the generated SWF document should include the integrated document viewer or not. Default is true. 
    attr_accessor :viewer_included

    # Specifies whether border around pages should be shown. Default is true. 
    attr_accessor :show_page_border

    # Show/hide fullscreen button. Can be overridden in flashvars. Default is true. 
    attr_accessor :show_full_screen

    # Show/hide page stepper. Can be overridden in flashvars. Default is true. 
    attr_accessor :show_page_stepper

    # Show/hide search section. Can be overridden in flashvars. Default is true. 
    attr_accessor :show_search

    # Show/hide whole top pane. Can be overridden in flashvars. Default is true. 
    attr_accessor :show_top_pane

    # Show/hide bottom pane. Can be overridden in flashvars. Default is true. 
    attr_accessor :show_bottom_pane

    # Show/hide left pane. Can be overridden in flashvars. Default is true. 
    attr_accessor :show_left_pane

    # Start with opened left pane. Can be overridden in flashvars. Default is false. 
    attr_accessor :start_open_left_pane

    # Enable/disable context menu. Default is true. 
    attr_accessor :enable_context_menu

    # Image that will be displayed as logo in the top right corner of the viewer. The image data is a base 64 string. Image should be 32x64 pixels PNG image, otherwise logo can be displayed improperly. 
    attr_accessor :logo_image

    # Gets or sets the full hyperlink address for a logo. Has an effect only if a LogoImage is specified. 
    attr_accessor :logo_link

    # Specifies the quality of JPEG images. Default is 95.
    attr_accessor :jpeg_quality

    # Slides layouting options
    attr_accessor :slides_layout_options

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      super.merge({
        :'show_hidden_slides' => :'ShowHiddenSlides',
        :'compressed' => :'Compressed',
        :'viewer_included' => :'ViewerIncluded',
        :'show_page_border' => :'ShowPageBorder',
        :'show_full_screen' => :'ShowFullScreen',
        :'show_page_stepper' => :'ShowPageStepper',
        :'show_search' => :'ShowSearch',
        :'show_top_pane' => :'ShowTopPane',
        :'show_bottom_pane' => :'ShowBottomPane',
        :'show_left_pane' => :'ShowLeftPane',
        :'start_open_left_pane' => :'StartOpenLeftPane',
        :'enable_context_menu' => :'EnableContextMenu',
        :'logo_image' => :'LogoImage',
        :'logo_link' => :'LogoLink',
        :'jpeg_quality' => :'JpegQuality',
        :'slides_layout_options' => :'SlidesLayoutOptions',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'show_hidden_slides' => :'BOOLEAN',
        :'compressed' => :'BOOLEAN',
        :'viewer_included' => :'BOOLEAN',
        :'show_page_border' => :'BOOLEAN',
        :'show_full_screen' => :'BOOLEAN',
        :'show_page_stepper' => :'BOOLEAN',
        :'show_search' => :'BOOLEAN',
        :'show_top_pane' => :'BOOLEAN',
        :'show_bottom_pane' => :'BOOLEAN',
        :'show_left_pane' => :'BOOLEAN',
        :'start_open_left_pane' => :'BOOLEAN',
        :'enable_context_menu' => :'BOOLEAN',
        :'logo_image' => :'String',
        :'logo_link' => :'String',
        :'jpeg_quality' => :'Integer',
        :'slides_layout_options' => :'SlidesLayoutOptions',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'ShowHiddenSlides')
        self.show_hidden_slides = attributes[:'ShowHiddenSlides']
      end

      if attributes.has_key?(:'Compressed')
        self.compressed = attributes[:'Compressed']
      end

      if attributes.has_key?(:'ViewerIncluded')
        self.viewer_included = attributes[:'ViewerIncluded']
      end

      if attributes.has_key?(:'ShowPageBorder')
        self.show_page_border = attributes[:'ShowPageBorder']
      end

      if attributes.has_key?(:'ShowFullScreen')
        self.show_full_screen = attributes[:'ShowFullScreen']
      end

      if attributes.has_key?(:'ShowPageStepper')
        self.show_page_stepper = attributes[:'ShowPageStepper']
      end

      if attributes.has_key?(:'ShowSearch')
        self.show_search = attributes[:'ShowSearch']
      end

      if attributes.has_key?(:'ShowTopPane')
        self.show_top_pane = attributes[:'ShowTopPane']
      end

      if attributes.has_key?(:'ShowBottomPane')
        self.show_bottom_pane = attributes[:'ShowBottomPane']
      end

      if attributes.has_key?(:'ShowLeftPane')
        self.show_left_pane = attributes[:'ShowLeftPane']
      end

      if attributes.has_key?(:'StartOpenLeftPane')
        self.start_open_left_pane = attributes[:'StartOpenLeftPane']
      end

      if attributes.has_key?(:'EnableContextMenu')
        self.enable_context_menu = attributes[:'EnableContextMenu']
      end

      if attributes.has_key?(:'LogoImage')
        self.logo_image = attributes[:'LogoImage']
      end

      if attributes.has_key?(:'LogoLink')
        self.logo_link = attributes[:'LogoLink']
      end

      if attributes.has_key?(:'JpegQuality')
        self.jpeg_quality = attributes[:'JpegQuality']
      end

      if attributes.has_key?(:'SlidesLayoutOptions')
        self.slides_layout_options = attributes[:'SlidesLayoutOptions']
      end
      self.format = 'swf'
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
          delete_embedded_binary_objects == o.delete_embedded_binary_objects &&
          gradient_style == o.gradient_style &&
          font_fallback_rules == o.font_fallback_rules &&
          font_subst_rules == o.font_subst_rules &&
          skip_java_script_links == o.skip_java_script_links &&
          format == o.format &&
          show_hidden_slides == o.show_hidden_slides &&
          compressed == o.compressed &&
          viewer_included == o.viewer_included &&
          show_page_border == o.show_page_border &&
          show_full_screen == o.show_full_screen &&
          show_page_stepper == o.show_page_stepper &&
          show_search == o.show_search &&
          show_top_pane == o.show_top_pane &&
          show_bottom_pane == o.show_bottom_pane &&
          show_left_pane == o.show_left_pane &&
          start_open_left_pane == o.start_open_left_pane &&
          enable_context_menu == o.enable_context_menu &&
          logo_image == o.logo_image &&
          logo_link == o.logo_link &&
          jpeg_quality == o.jpeg_quality &&
          slides_layout_options == o.slides_layout_options
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [default_regular_font, delete_embedded_binary_objects, gradient_style, font_fallback_rules, font_subst_rules, skip_java_script_links, format, show_hidden_slides, compressed, viewer_included, show_page_border, show_full_screen, show_page_stepper, show_search, show_top_pane, show_bottom_pane, show_left_pane, start_open_left_pane, enable_context_menu, logo_image, logo_link, jpeg_quality, slides_layout_options].hash
    end
  end
end
