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
  describe 'Pipeline' do
    it 'pipeline' do
      file1 = AsposeSlidesCloud::RequestInputFile.new
      file1.type = "Request"
      file1.index = 0

      file2 = AsposeSlidesCloud::RequestInputFile.new
      file2.type = "Request"
      file2.index = 1

      input = AsposeSlidesCloud::Input.new
      input.template_data = file1
      input.template = file2

      output = AsposeSlidesCloud::OutputFile.new
      output.type = "Response"

      task = AsposeSlidesCloud::Save.new
      task.format = AsposeSlidesCloud::ExportFormat::PPTX
      task.output = output
      task.type = "Save"

      pipeline = AsposeSlidesCloud::Pipeline.new
      pipeline.input = input
      pipeline.tasks = [ task ]

      files = []
      files.push(File.binread("TestData/TemplatingCVDataWithBase64.xml"))
      files.push(File.binread("TestData/TemplateCV.pptx"))

      result = AsposeSlidesCloud::SpecUtils.api.pipeline(pipeline, files)
      expect(result).to be_kind_of(String)
      expect(result).to be_truthy
    end
  end
end
