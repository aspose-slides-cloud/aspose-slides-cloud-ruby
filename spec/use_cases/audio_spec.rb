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
  describe 'Audio' do
    it 'caption tracks' do
      folder_name = "TempSlidesSDK"
      file_name = "test.pptx"
      password = "password"
      slide_index = 3
      shape_index = 3
      track1_label = "track1"
      track2_label = "track2"
      track1_data = "WEBVTT\n\n00:00:00.000--> 00:00:10.000\nCaption 1 text."
      track2_data = "WEBVTT\n\n00:00:00.000--> 00:00:10.000\nCaption 2 text."

      AsposeSlidesCloud::SpecUtils.testSlidesApi.copy_file("TempTests/" + file_name, folder_name + "/" + file_name)

      dto = AsposeSlidesCloud::AudioFrame.new
      dto.base64_data = "bXAzc2FtcGxl"
      AsposeSlidesCloud::SpecUtils.testSlidesApi.create_shape(file_name, slide_index, dto, nil, nil, nil, password, folder_name)

      captions = AsposeSlidesCloud::SpecUtils.testSlidesApi.get_caption_tracks(file_name, slide_index, shape_index, nil, password, folder_name)
      expect(captions.items.length).to eq(0)

      AsposeSlidesCloud::SpecUtils.testSlidesApi.create_caption_track(file_name, slide_index, shape_index, track1_label, track1_data, password, folder_name)
      AsposeSlidesCloud::SpecUtils.testSlidesApi.create_caption_track(file_name, slide_index, shape_index, track2_label, track2_data, password, folder_name)
      captions = AsposeSlidesCloud::SpecUtils.testSlidesApi.get_caption_tracks(file_name, slide_index, shape_index, true, password, folder_name)
      expect(captions.items.length).to eq(2)
      expect(captions.items[0].label).to eq(track1_label)
      expect(captions.items[0].data_as_string).to eq(track1_data)
      expect(captions.items[1].label).to eq(track2_label)
      expect(captions.items[1].data_as_string).to eq(track2_data)

      AsposeSlidesCloud::SpecUtils.testSlidesApi.delete_caption_track(file_name, slide_index, shape_index, 1, password, folder_name)
      captions = AsposeSlidesCloud::SpecUtils.testSlidesApi.get_caption_tracks(file_name, slide_index, shape_index, false, password, folder_name)
      expect(captions.items.length).to eq(1)
      expect(captions.items[0].label).to eq(track2_label)
      expect(captions.items[0].data_as_string).to eq(nil)

      AsposeSlidesCloud::SpecUtils.testSlidesApi.delete_caption_tracks(file_name, slide_index, shape_index, password, folder_name)
      captions = AsposeSlidesCloud::SpecUtils.testSlidesApi.get_caption_tracks(file_name, slide_index, shape_index, true, password, folder_name)
      expect(captions.items.length).to eq(0)
    end
  end
end
