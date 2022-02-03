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
  class ExportFormat
    
    PDF = "Pdf".freeze
    XPS = "Xps".freeze
    TIFF = "Tiff".freeze
    PPTX = "Pptx".freeze
    ODP = "Odp".freeze
    OTP = "Otp".freeze
    PPT = "Ppt".freeze
    PPS = "Pps".freeze
    PPSX = "Ppsx".freeze
    PPTM = "Pptm".freeze
    PPSM = "Ppsm".freeze
    POT = "Pot".freeze
    POTX = "Potx".freeze
    POTM = "Potm".freeze
    HTML = "Html".freeze
    HTML5 = "Html5".freeze
    SWF = "Swf".freeze
    SVG = "Svg".freeze
    JPEG = "Jpeg".freeze
    PNG = "Png".freeze
    GIF = "Gif".freeze
    BMP = "Bmp".freeze
    FODP = "Fodp".freeze
    XAML = "Xaml".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = ExportFormat.constants.select { |c| ExportFormat::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #ExportFormat" if constantValues.empty?
      value
    end
  end
end
