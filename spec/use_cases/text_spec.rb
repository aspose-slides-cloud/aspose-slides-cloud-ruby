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
  describe 'Text' do
    it 'get' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      password = "password"
      slide_index = 1
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      result = AsposeSlidesCloud::SpecUtils.api.get_presentation_text_items(file_name, nil, password, folder_name)
      result_with_empty = AsposeSlidesCloud::SpecUtils.api.get_presentation_text_items(file_name, true, password, folder_name)
      slide_result = AsposeSlidesCloud::SpecUtils.api.get_slide_text_items(file_name, slide_index, nil, password, folder_name)
      slide_result_with_empty = AsposeSlidesCloud::SpecUtils.api.get_slide_text_items(file_name, slide_index, true, password, folder_name)
      expect(result_with_empty.items.length).to be > result.items.length
      expect(result.items.length).to be > slide_result.items.length
      expect(slide_result_with_empty.items.length).to be > slide_result.items.length
    end

    it 'replace storage' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      password = "password"
      slide_index = 1
      old_value = "text"
      new_value = "new_text"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      result = AsposeSlidesCloud::SpecUtils.api.replace_presentation_text(file_name, old_value, new_value, nil, password, folder_name)
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      result_with_empty = AsposeSlidesCloud::SpecUtils.api.replace_presentation_text(file_name, old_value, new_value, true, password, folder_name)
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      slide_result = AsposeSlidesCloud::SpecUtils.api.replace_slide_text(file_name, slide_index, old_value, new_value, nil, password, folder_name)
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      slide_result_with_empty = AsposeSlidesCloud::SpecUtils.api.replace_slide_text(file_name, slide_index, old_value, new_value, true, password, folder_name)
      expect(result_with_empty.matches).to be > result.matches
      expect(result.matches).to be > slide_result.matches
      expect(slide_result_with_empty.matches).to be > slide_result.matches
    end

    it 'replace request' do
      password = "password"
      slide_index = 1
      old_value = "text"
      new_value = "new_text"
      source = File.binread("TestData/test.pptx")
      AsposeSlidesCloud::SpecUtils.api.replace_presentation_text_online(source, old_value, new_value, nil, password)
      AsposeSlidesCloud::SpecUtils.api.replace_presentation_text_online(source, old_value, new_value, true, password)
      AsposeSlidesCloud::SpecUtils.api.replace_slide_text_online(source, slide_index, old_value, new_value, nil, password)
      AsposeSlidesCloud::SpecUtils.api.replace_slide_text_online(source, slide_index, old_value, new_value, true, password)
    end
  end
end
