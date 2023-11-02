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
  describe 'Math' do
    it 'get' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

      portion = AsposeSlidesCloud::SpecUtils.testSlidesApi.get_portion(file_name, 2, 3, 1, 1, "password", folder_name)
      expect(portion.math_paragraph).to be_truthy
      expect(portion.math_paragraph.math_block_list).to be_truthy
      expect(portion.math_paragraph.math_block_list.length).to eq(1)
      expect(portion.math_paragraph.math_block_list[0].math_element_list).to be_truthy
      expect(portion.math_paragraph.math_block_list[0].math_element_list.length).to eq(3)
      expect(portion.math_paragraph.math_block_list[0].math_element_list[2]).to be_kind_of(AsposeSlidesCloud::FractionElement)
    end

    it 'get null' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

      portion = AsposeSlidesCloud::SpecUtils.testSlidesApi.get_portion(file_name, 2, 1, 1, 1, "password", folder_name)
      expect(portion.math_paragraph).not_to be_truthy
    end

    it 'create' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

      dto = AsposeSlidesCloud::Portion.new
      math_paragraph = AsposeSlidesCloud::MathParagraph.new
      math_block = AsposeSlidesCloud::BlockElement.new
      function_element = AsposeSlidesCloud::FunctionElement.new
      limit_element = AsposeSlidesCloud::LimitElement.new
      text1 = AsposeSlidesCloud::TextElement.new
      text1.value = "lim"
      limit_element.base = text1
      text2 = AsposeSlidesCloud::TextElement.new
      text2.value = "x->0"
      limit_element.limit = text2
      function_element.name = limit_element
      fraction_element = AsposeSlidesCloud::FractionElement.new
      sinus_element = AsposeSlidesCloud::FunctionElement.new
      text3 = AsposeSlidesCloud::TextElement.new
      text3.value = "sin"
      sinus_element.name = text3
      text4 = AsposeSlidesCloud::TextElement.new
      text4.value = "x"
      sinus_element.name = text4
      fraction_element.numerator = sinus_element
      text5 = AsposeSlidesCloud::TextElement.new
      text5.value = "x"
      fraction_element.denominator = text5
      function_element.base = fraction_element
      math_block.math_element_list = [ function_element ]
      math_paragraph.math_block_list = [ math_block ]
      dto.math_paragraph = math_paragraph
      portion = AsposeSlidesCloud::SpecUtils.testSlidesApi.create_portion(file_name, 1, 1, 1, dto, nil, "password", folder_name)
      expect(portion.math_paragraph).to be_truthy
      expect(portion.math_paragraph.math_block_list).to be_truthy
      expect(portion.math_paragraph.math_block_list.length).to eq(1)
      expect(portion.math_paragraph.math_block_list[0].math_element_list).to be_truthy
      expect(portion.math_paragraph.math_block_list[0].math_element_list.length).to eq(1)
      expect(portion.math_paragraph.math_block_list[0].math_element_list[0]).to be_kind_of(AsposeSlidesCloud::FunctionElement)
    end

    it 'update' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

      dto = AsposeSlidesCloud::Portion.new
      math_paragraph = AsposeSlidesCloud::MathParagraph.new
      math_block = AsposeSlidesCloud::BlockElement.new
      function_element = AsposeSlidesCloud::FunctionElement.new
      limit_element = AsposeSlidesCloud::LimitElement.new
      text1 = AsposeSlidesCloud::TextElement.new
      text1.value = "lim"
      limit_element.base = text1
      text2 = AsposeSlidesCloud::TextElement.new
      text2.value = "x->0"
      limit_element.limit = text2
      function_element.name = limit_element
      fraction_element = AsposeSlidesCloud::FractionElement.new
      sinus_element = AsposeSlidesCloud::FunctionElement.new
      text3 = AsposeSlidesCloud::TextElement.new
      text3.value = "sin"
      sinus_element.name = text3
      text4 = AsposeSlidesCloud::TextElement.new
      text4.value = "x"
      sinus_element.name = text4
      fraction_element.numerator = sinus_element
      text5 = AsposeSlidesCloud::TextElement.new
      text5.value = "x"
      fraction_element.denominator = text5
      function_element.base = fraction_element
      math_block.math_element_list = [ function_element ]
      math_paragraph.math_block_list = [ math_block ]
      dto.math_paragraph = math_paragraph
      portion = AsposeSlidesCloud::SpecUtils.testSlidesApi.update_portion(file_name, 2, 3, 1, 1, dto, "password", folder_name)
      expect(portion.math_paragraph).to be_truthy
      expect(portion.math_paragraph.math_block_list).to be_truthy
      expect(portion.math_paragraph.math_block_list.length).to eq(1)
      expect(portion.math_paragraph.math_block_list[0].math_element_list).to be_truthy
      expect(portion.math_paragraph.math_block_list[0].math_element_list.length).to eq(1)
      expect(portion.math_paragraph.math_block_list[0].math_element_list[0]).to be_kind_of(AsposeSlidesCloud::FunctionElement)
    end

    it 'download' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      mathMl = AsposeSlidesCloud::SpecUtils.testSlidesApi.download_portion_as_math_ml(file_name, 2, 3, 1, 1, "password", folder_name)
      expect(mathMl).to be_truthy
    end

    it 'download null' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      begin
        AsposeSlidesCloud::SpecUtils.testSlidesApi.download_portion_as_math_ml(file_name, 2, 1, 1, 1, "password", folder_name)
        fail "Must have failed because conversion to MathML works only for math portions"
      rescue AsposeSlidesCloud::ApiError => e
        expect(e.code).to eq(400)
      end
    end

    it 'save' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      out_path = folder_name + "/mathml.xml"
      AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      mathMl = AsposeSlidesCloud::SpecUtils.testSlidesApi.save_portion_as_math_ml(file_name, 2, 3, 1, 1, out_path, "password", folder_name)
      expect(AsposeSlidesCloud::SpecUtils.testSlidesApi.object_exists(out_path).exists).to be true
    end
  end
end
