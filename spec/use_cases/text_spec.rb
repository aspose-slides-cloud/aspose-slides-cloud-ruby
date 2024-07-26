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
      AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      result = AsposeSlidesCloud::SpecUtils.testSlidesApi.get_presentation_text_items(file_name, nil, password, folder_name)
      result_with_empty = AsposeSlidesCloud::SpecUtils.testSlidesApi.get_presentation_text_items(file_name, true, password, folder_name)
      slide_result = AsposeSlidesCloud::SpecUtils.testSlidesApi.get_slide_text_items(file_name, slide_index, nil, password, folder_name)
      slide_result_with_empty = AsposeSlidesCloud::SpecUtils.testSlidesApi.get_slide_text_items(file_name, slide_index, true, password, folder_name)
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
      AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      result = AsposeSlidesCloud::SpecUtils.testSlidesApi.replace_presentation_text(file_name, old_value, new_value, nil, nil, password, folder_name)
      AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      result_with_empty = AsposeSlidesCloud::SpecUtils.testSlidesApi.replace_presentation_text(file_name, old_value, new_value, true, nil, password, folder_name)
      AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      result_whole_words = AsposeSlidesCloud::SpecUtils.testSlidesApi.replace_presentation_text(file_name, old_value, new_value, true, true, password, folder_name)
      AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      slide_result = AsposeSlidesCloud::SpecUtils.testSlidesApi.replace_slide_text(file_name, slide_index, old_value, new_value, nil, password, folder_name)
      AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      slide_result_with_empty = AsposeSlidesCloud::SpecUtils.testSlidesApi.replace_slide_text(file_name, slide_index, old_value, new_value, true, password, folder_name)
      expect(result_with_empty.matches).to be > result.matches
      expect(result_with_empty.matches).to be > result_whole_words.matches
      expect(result.matches).to be > slide_result.matches
      expect(slide_result_with_empty.matches).to be > slide_result.matches
    end

    it 'replace request' do
      password = "password"
      slide_index = 1
      old_value = "text"
      new_value = "new_text"
      source = File.binread("TestData/test.pptx")
      AsposeSlidesCloud::SpecUtils.testSlidesApi.replace_presentation_text_online(source, old_value, new_value, nil, nil, password)
      AsposeSlidesCloud::SpecUtils.testSlidesApi.replace_presentation_text_online(source, old_value, new_value, true, nil, password)
      AsposeSlidesCloud::SpecUtils.testSlidesApi.replace_slide_text_online(source, slide_index, old_value, new_value, nil, password)
      AsposeSlidesCloud::SpecUtils.testSlidesApi.replace_slide_text_online(source, slide_index, old_value, new_value, true, password)
    end

    it 'replace text formatting' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      password = "password"
      slide_index = 1
      shape_index = 1
      paragraph_index = 1
      portion_index = 1
      old_text = "banana"
      new_text = "orange"
      color = "#FFFFA500"

      portion = AsposeSlidesCloud::Portion.new
      portion.text = old_text

      portion_format = AsposeSlidesCloud::PortionFormat.new
      portion_format.font_color = color

      AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      AsposeSlidesCloud::SpecUtils.testSlidesApi.create_portion(file_name, slide_index, shape_index, paragraph_index, portion, portion_index, password, folder_name)
      AsposeSlidesCloud::SpecUtils.testSlidesApi.replace_text_formatting(file_name, old_text, new_text, portion_format, nil, password, folder_name)
      updated_portion = AsposeSlidesCloud::SpecUtils.testSlidesApi.get_portion(file_name, slide_index, shape_index, paragraph_index, portion_index, password, folder_name)
      expect(updated_portion.text).to eq(new_text)
      expect(updated_portion.font_color).to eq(color)
    end

    it 'replace text formatting online' do
      password = "password"
      source = File.binread("TestData/test.pptx")
      portion_format = AsposeSlidesCloud::PortionFormat.new
      portion_format.font_color = "#FFFFA500"
      AsposeSlidesCloud::SpecUtils.testSlidesApi.replace_text_formatting_online(source, "banana", "orange", portion_format, nil, password)
    end

    it "highlight shape text" do
        folder_name = "TempSlidesSDK"
        file_name = "test.pptx"
        password = "password"
        slide_index = 6
        shape_index = 1
        paragraph_index = 1
        highlight_color = "#FFF5FF8A"
        text_to_highlight = "highlight"
        AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
        AsposeSlidesCloud::SpecUtils.testSlidesApi.highlight_shape_text(file_name, slide_index, shape_index, text_to_highlight, highlight_color,
          nil, false, password, folder_name)
        para = AsposeSlidesCloud::SpecUtils.testSlidesApi.get_paragraph(file_name, slide_index, shape_index, paragraph_index, password, folder_name)
        expect(para.portion_list[0].text).not_to eq(text_to_highlight)
        expect(para.portion_list[0].highlight_color).not_to eq(highlight_color)
        expect(para.portion_list[1].text).to eq(text_to_highlight)
        expect(para.portion_list[1].highlight_color).to eq(highlight_color)
    end

    it "highlight shape regex" do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      password = "password"
      slide_index = 6
      shape_index = 1
      paragraph_index = 1
      text_to_highlight = "highlight"
      highlight_color = "#FFF5FF8A"
      regex =  "h.ghl[abci]ght"
      AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      AsposeSlidesCloud::SpecUtils.testSlidesApi.highlight_shape_regex(file_name, slide_index, shape_index, regex, highlight_color,
        nil, false, password, folder_name)
      para = AsposeSlidesCloud::SpecUtils.testSlidesApi.get_paragraph(file_name, slide_index, shape_index, paragraph_index, password, folder_name)
      expect(para.portion_list[0].text).not_to eq(text_to_highlight)
      expect(para.portion_list[0].highlight_color).not_to eq(highlight_color)
      expect(para.portion_list[1].text).to eq(text_to_highlight)
      expect(para.portion_list[1].highlight_color).to eq(highlight_color)
  end
  end
end
