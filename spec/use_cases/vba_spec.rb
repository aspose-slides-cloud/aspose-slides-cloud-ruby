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
    describe 'VBA' do
      it 'create VBA module' do
        folder_name = "TempSlidesSDK"
        file_name = "test.pptx"
        AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

        dto = AsposeSlidesCloud::VbaModule.new
        dto.name = "Module1"
        dto.source_code = "Sub Test() MsgBox ""Test"" End Sub"
        
        reference0 = AsposeSlidesCloud::VbaReference.new
        reference0.name = "stdole"
        reference0.lib_id = "*\\G{00020430-0000-0000-C000-000000000046}#2.0#0#C:\\Windows\\system32\\stdole2.tlb#OLE Automation"
        reference1 = AsposeSlidesCloud::VbaReference.new
        reference1.name = "Office"
        reference1.lib_id = "*\\G{2DF8D04C-5BFA-101B-BDE5-00AA0044DE52}#2.0#0#C:\\Program Files\\Common Files\\Microsoft Shared\\OFFICE14\\MSO.DLL#Microsoft Office 14.0 Object Library"
        dto.references = [reference0, reference1]

        response = AsposeSlidesCloud::SpecUtils.testSlidesApi.create_vba_module(file_name, dto, "password", folder_name)
        puts "'#{response.name}' has been created \n #{response.self_uri.href}"
      end

      it 'delete VBA module' do
        folder_name = "TempSlidesSDK"
        file_name = "macros.pptm"
        AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

        module_index = 1

        response = AsposeSlidesCloud::SpecUtils.testSlidesApi.delete_vba_module(file_name, module_index, nil, folder_name)
        puts "VBA project contains: #{response.modules.length} module(s), and #{response.references.length} references"
      end

      it 'get VBA module' do
        folder_name = "TempSlidesSDK"
        file_name = "macros.pptm"
        AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

        module_index = 1

        response = AsposeSlidesCloud::SpecUtils.testSlidesApi.get_vba_module(file_name, module_index, nil, folder_name)
        puts "#{response.name} \n#{response.source_code}"
      end

      it 'delete VBA project info' do
        folder_name = "TempSlidesSDK"
        file_name = "macros.pptm"
        AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

        module_index = 1

        response = AsposeSlidesCloud::SpecUtils.testSlidesApi.get_vba_project(file_name, nil, folder_name)
        puts "VBA project contains: #{response.modules.length} module(s), and #{response.references.length} references"
      end

      it 'update VBA module' do
        folder_name = "TempSlidesSDK"
        file_name = "macros.pptm"
        AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

        dto = AsposeSlidesCloud::VbaModule.new
        dto.source_code = "Sub Test() MsgBox ""Test"" End Sub"    
        module_index = 1

        response = AsposeSlidesCloud::SpecUtils.testSlidesApi.update_vba_module(file_name, module_index, dto, "password", folder_name)
        puts "'#{response.name}' has been update \n #{response.self_uri.href}"
      end
    end
end