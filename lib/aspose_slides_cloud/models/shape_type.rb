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
  class ShapeType
    
    SHAPE = "Shape".freeze
    CHART = "Chart".freeze
    TABLE = "Table".freeze
    PICTURE_FRAME = "PictureFrame".freeze
    VIDEO_FRAME = "VideoFrame".freeze
    AUDIO_FRAME = "AudioFrame".freeze
    SMART_ART = "SmartArt".freeze
    OLE_OBJECT_FRAME = "OleObjectFrame".freeze
    GROUP_SHAPE = "GroupShape".freeze
    GRAPHICAL_OBJECT = "GraphicalObject".freeze
    CONNECTOR = "Connector".freeze
    SMART_ART_SHAPE = "SmartArtShape".freeze
    ZOOM_FRAME = "ZoomFrame".freeze
    SECTION_ZOOM_FRAME = "SectionZoomFrame".freeze
    SUMMARY_ZOOM_FRAME = "SummaryZoomFrame".freeze
    SUMMARY_ZOOM_SECTION = "SummaryZoomSection".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = ShapeType.constants.select { |c| ShapeType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #ShapeType" if constantValues.empty?
      value
    end
  end
end
