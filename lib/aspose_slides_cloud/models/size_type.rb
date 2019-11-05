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
  class SizeType
    
    ON_SCREEN = "OnScreen".freeze
    LETTER_PAPER = "LetterPaper".freeze
    A4_PAPER = "A4Paper".freeze
    SLIDE35MM = "Slide35mm".freeze
    OVERHEAD = "Overhead".freeze
    BANNER = "Banner".freeze
    CUSTOM = "Custom".freeze
    LEDGER = "Ledger".freeze
    A3_PAPER = "A3Paper".freeze
    B4_ISO_PAPER = "B4IsoPaper".freeze
    B5_ISO_PAPER = "B5IsoPaper".freeze
    B4_JIS_PAPER = "B4JisPaper".freeze
    B5_JIS_PAPER = "B5JisPaper".freeze
    HAGAKI_CARD = "HagakiCard".freeze
    ON_SCREEN16X9 = "OnScreen16x9".freeze
    ON_SCREEN16X10 = "OnScreen16x10".freeze
    WIDESCREEN = "Widescreen".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = SizeType.constants.select { |c| SizeType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #SizeType" if constantValues.empty?
      value
    end
  end
end
