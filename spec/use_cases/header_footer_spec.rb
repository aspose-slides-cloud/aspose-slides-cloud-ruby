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

require 'spec_helper'

describe 'UseCases' do
  describe 'HeaderFooter' do
    it 'all slides' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      password = "password"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      dto = AsposeSlidesCloud::HeaderFooter.new
      dto.is_footer_visible = true
      dto.footer_text = "footer"
      dto.is_date_time_visible = false
      AsposeSlidesCloud::SpecUtils.api.set_presentation_header_footer(file_name, dto, "password", folder_name)
      result = AsposeSlidesCloud::SpecUtils.api.get_slide_header_footer(file_name, 1, "password", folder_name)
      expect(result.is_footer_visible).to be true
      expect(result.is_date_time_visible).to be false
    end

    it 'slide' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      password = "password"
      slide_index = 1
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      dto = AsposeSlidesCloud::HeaderFooter.new
      dto.is_footer_visible = true
      dto.footer_text = "footer"
      dto.is_date_time_visible = false
      result = AsposeSlidesCloud::SpecUtils.api.set_slide_header_footer(file_name, slide_index, dto, "password", folder_name)
      expect(result.is_footer_visible).to be true
      expect(result.is_date_time_visible).to be false
      result = AsposeSlidesCloud::SpecUtils.api.get_slide_header_footer(file_name, slide_index, "password", folder_name)
      expect(result.is_footer_visible).to be true
      expect(result.is_date_time_visible).to be false
    end

    it 'notes slide' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      password = "password"
      slide_index = 1
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      dto = AsposeSlidesCloud::NotesSlideHeaderFooter.new
      dto.is_header_visible = true
      dto.footer_text = "footer"
      dto.is_date_time_visible = false
      result = AsposeSlidesCloud::SpecUtils.api.set_notes_slide_header_footer(file_name, slide_index, dto, "password", folder_name)
      expect(result.is_header_visible).to be true
      expect(result.is_date_time_visible).to be false
      result = AsposeSlidesCloud::SpecUtils.api.get_notes_slide_header_footer(file_name, slide_index, "password", folder_name)
      expect(result.is_header_visible).to be true
      expect(result.is_date_time_visible).to be false
    end
  end
end
