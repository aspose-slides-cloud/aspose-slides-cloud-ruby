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
  describe 'Sections' do
    it 'get' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      password = "password"
      AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      result = AsposeSlidesCloud::SpecUtils.testSlidesApi.get_sections(file_name, "password", folder_name)
      expect(result.section_list.length).to eq(3)
    end

    it 'replace' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      dto = AsposeSlidesCloud::Sections.new
      section1 = AsposeSlidesCloud::Section.new
      section1.name = "Section1"
      section1.first_slide_index = 1
      section2 = AsposeSlidesCloud::Section.new
      section2.name = "Section2"
      section2.first_slide_index = 3
      dto.section_list = [ section1, section2 ]
      result = AsposeSlidesCloud::SpecUtils.testSlidesApi.set_sections(file_name, dto, "password", folder_name)
      expect(result.section_list.length).to eq(dto.section_list.length)
      expect(result.section_list[0].slide_list.length).to eq(section2.first_slide_index - section1.first_slide_index)
    end

    it 'post' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      result = AsposeSlidesCloud::SpecUtils.testSlidesApi.create_section(file_name, "NewSection", 5, "password", folder_name)
      expect(result.section_list.length).to eq(4)
    end

    it 'put' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      section_index = 2
      section_name = "UpdatedSection"
      result = AsposeSlidesCloud::SpecUtils.testSlidesApi.update_section(file_name, section_index, section_name, "password", folder_name)
      expect(result.section_list.length).to eq(3)
      expect(result.section_list[section_index - 1].name).to eq(section_name)
    end

    it 'move' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      result = AsposeSlidesCloud::SpecUtils.testSlidesApi.move_section(file_name, 1, 2, "password", folder_name)
      expect(result.section_list.length).to eq(3)
    end

    it 'clear' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      result = AsposeSlidesCloud::SpecUtils.testSlidesApi.delete_sections(file_name, nil, nil, "password", folder_name)
      expect(result.section_list.length).to eq(0)
    end

    it 'delete many' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      result = AsposeSlidesCloud::SpecUtils.testSlidesApi.delete_sections(file_name, [ 2, 3 ], nil, "password", folder_name)
      expect(result.section_list.length).to eq(1)
    end

    it 'delete' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      result = AsposeSlidesCloud::SpecUtils.testSlidesApi.delete_section(file_name, 2, nil, "password", folder_name)
      expect(result.section_list.length).to eq(2)
    end
  end
end
