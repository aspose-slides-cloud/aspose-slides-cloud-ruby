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
  describe 'Create' do
    it 'empty' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.delete_file(folder_name + "/" + file_name)
      AsposeSlidesCloud::SpecUtils.api.create_presentation(file_name, nil, nil, nil, folder_name)
    end

    it 'from request' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.delete_file(folder_name + "/" + file_name)
      source = File.binread("TestData/" + file_name)
      AsposeSlidesCloud::SpecUtils.api.create_presentation(file_name, source, "password", nil, folder_name)
    end

    it 'from storage' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      new_file_name = "test2.pptx"
      AsposeSlidesCloud::SpecUtils.api.delete_file(folder_name + "/" + new_file_name)
      source_path = folder_name + "/" + file_name
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, source_path)
      AsposeSlidesCloud::SpecUtils.api.create_presentation_from_source(new_file_name, source_path, "password", nil, nil, folder_name)
    end

    it 'from template' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      template_file_name = "TemplateCV.pptx"
      AsposeSlidesCloud::SpecUtils.api.delete_file(folder_name + "/" + file_name)
      template_path = folder_name + "/" + template_file_name
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + template_file_name, template_path)
      data = "<staff><person><name>John Doe</name><address><line1>10 Downing Street</line1><line2>London</line2></address><phone>+457 123456</phone><bio>Hi, I'm John and this is my CV</bio><skills><skill><title>C#</title><level>Excellent</level></skill><skill><title>C++</title><level>Good</level></skill><skill><title>Java</title><level>Average</level></skill></skills></person></staff>"
      AsposeSlidesCloud::SpecUtils.api.create_presentation_from_template(file_name, template_path, data, nil, nil, nil, nil, folder_name)
    end

    it 'from HTML' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.delete_file(folder_name + "/" + file_name)
      AsposeSlidesCloud::SpecUtils.api.import_from_html(file_name, "<html><body>New Content</body></html>", nil, folder_name)
    end

    it 'append from HTML' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      password = "password"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      slide_count = AsposeSlidesCloud::SpecUtils.api.get_slides(file_name, password, folder_name).slide_list.length
      AsposeSlidesCloud::SpecUtils.api.import_from_html(file_name, "<html><body>New Content</body></html>", password, folder_name)
      new_slide_count = AsposeSlidesCloud::SpecUtils.api.get_slides(file_name, password, folder_name).slide_list.length
      expect(new_slide_count).to eq(slide_count + 1)
    end

    it 'from PDF' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.api.delete_file(folder_name + "/" + file_name)
      source = File.binread("TestData/test.pdf")
      AsposeSlidesCloud::SpecUtils.api.import_from_pdf(file_name, source, nil, folder_name)
    end

    it 'append from PDF' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      password = "password"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      slide_count = AsposeSlidesCloud::SpecUtils.api.get_slides(file_name, password, folder_name).slide_list.length
      source = File.binread("TestData/test.pdf")
      AsposeSlidesCloud::SpecUtils.api.import_from_pdf(file_name, source, password, folder_name)
      new_slide_count = AsposeSlidesCloud::SpecUtils.api.get_slides(file_name, password, folder_name).slide_list.length
      expect(new_slide_count).to eq(slide_count + 4)
    end
  end
end
