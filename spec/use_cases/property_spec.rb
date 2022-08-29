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
  describe 'Properties' do
    it 'builtin' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      password = "password"
      property_name = "Author"
      updated_property_value = "New Value"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      result = AsposeSlidesCloud::SpecUtils.api.get_document_property(file_name, property_name, password, folder_name)
      expect(result.name).to eq(property_name)
      expect(result.built_in).to be true
      property = AsposeSlidesCloud::DocumentProperty.new
      property.value = updated_property_value
      result = AsposeSlidesCloud::SpecUtils.api.set_document_property(file_name, property_name, property, password, folder_name)
      expect(result.name).to eq(property_name)
      expect(result.value).to eq(updated_property_value)
      expect(result.built_in).to be true
      AsposeSlidesCloud::SpecUtils.api.delete_document_property(file_name, property_name, password, folder_name)
      result = AsposeSlidesCloud::SpecUtils.api.get_document_property(file_name, property_name, password, folder_name)
      #built-in property is not actually deleted
      expect(result.name).to eq(property_name)
      expect(result.value).not_to eq(updated_property_value)
      expect(result.built_in).to be true
    end

    it 'custom' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      password = "password"
      property_name = "CustomProperty2"
      updated_property_value = "New Value"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      property = AsposeSlidesCloud::DocumentProperty.new
      property.value = updated_property_value
      result = AsposeSlidesCloud::SpecUtils.api.set_document_property(file_name, property_name, property, password, folder_name)
      expect(result.name).to eq(property_name)
      expect(result.value).to eq(updated_property_value)
      expect(result.built_in).not_to be true
      AsposeSlidesCloud::SpecUtils.api.delete_document_property(file_name, property_name, password, folder_name)
      begin
        AsposeSlidesCloud::SpecUtils.api.get_document_property(file_name, property_name, password, folder_name)
        fail "The property must have been deleted"
      rescue AsposeSlidesCloud::ApiError => e
        expect(e.code).to eq(404)
      end
    end

    it 'bulk update' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      password = "password"
      property_name = "Author"
      custom_property_name = "CustomProperty2"
      updated_property_value = "New Value"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      result = AsposeSlidesCloud::SpecUtils.api.get_document_properties(file_name, password, folder_name)
      count = result.list.length
      property1 = AsposeSlidesCloud::DocumentProperty.new
      property1.name = property_name
      property1.value = updated_property_value
      property2 = AsposeSlidesCloud::DocumentProperty.new
      property2.name = custom_property_name
      property2.value = updated_property_value
      properties = AsposeSlidesCloud::DocumentProperties.new
      properties.list = [ property1, property2 ]
      result = AsposeSlidesCloud::SpecUtils.api.set_document_properties(file_name, properties, password, folder_name)
      expect(result.list.length).to eq(count + 1)
      result = AsposeSlidesCloud::SpecUtils.api.delete_document_properties(file_name, password, folder_name)
      expect(result.list.length).to eq(count - 1)
    end

    it 'slide properties' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      password = "password"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      get_result = AsposeSlidesCloud::SpecUtils.api.get_slide_properties(file_name, password, folder_name)
      dto = AsposeSlidesCloud::SlideProperties.new
      dto.first_slide_number = get_result.first_slide_number + 2
      put_result = AsposeSlidesCloud::SpecUtils.api.set_slide_properties(file_name, dto, password, folder_name)
      expect(put_result.orientation).to eq(get_result.orientation)
      expect(put_result.first_slide_number).not_to eq(get_result.first_slide_number)
    end

    it 'slide size preset' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      password = "password"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      dto = AsposeSlidesCloud::SlideProperties.new
      dto.size_type = 'B4IsoPaper'
      result = AsposeSlidesCloud::SpecUtils.api.set_slide_properties(file_name, dto, password, folder_name)
      expect(result.size_type).to eq('B4IsoPaper')
      expect(result.width).to eq(852)
      expect(result.height).to eq(639)
    end

    it 'slide size custom' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      password = "password"
      width = 800
      height = 500
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      dto = AsposeSlidesCloud::SlideProperties.new
      dto.width = width
      dto.height = height
      result = AsposeSlidesCloud::SpecUtils.api.set_slide_properties(file_name, dto, password, folder_name)
      expect(result.size_type).to eq('Custom')
      expect(result.width).to eq(width)
      expect(result.height).to eq(height)
    end

    it 'protection' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      password = "password"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      get_result = AsposeSlidesCloud::SpecUtils.api.get_protection_properties(file_name, password, folder_name)
      dto = AsposeSlidesCloud::ProtectionProperties.new
      dto.read_only_recommended = !get_result.read_only_recommended
      put_result = AsposeSlidesCloud::SpecUtils.api.set_protection(file_name, dto, password, folder_name)
      expect(put_result.encrypt_document_properties).to eq(get_result.encrypt_document_properties)
      expect(put_result.read_only_recommended).not_to eq(get_result.read_only_recommended)
    end

    it 'protection delete' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      password = "password"
      AsposeSlidesCloud::SpecUtils.api.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)
      result = AsposeSlidesCloud::SpecUtils.api.delete_protection(file_name, password, folder_name)
      expect(result.is_encrypted).not_to be true
      expect(result.read_only_recommended).not_to be true
      expect(result.read_password).not_to be true
    end

    it 'protection online' do
      dto = AsposeSlidesCloud::ProtectionProperties.new
      dto.read_password = "newPassword"
      source = File.binread("TestData/test.pptx")
      result = AsposeSlidesCloud::SpecUtils.api.set_protection_online(source, dto, "password")
      expect(result.size).to be > 0
    end

    it 'protection unprotect online' do
      source = File.binread("TestData/test.pptx")
      result = AsposeSlidesCloud::SpecUtils.api.delete_protection_online(source, "password")
      expect(result.size).not_to eq(source.size)
    end
  end
end
