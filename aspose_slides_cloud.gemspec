# -*- encoding: utf-8 -*-

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

$:.push File.expand_path("../lib", __FILE__)
require "aspose_slides_cloud/version"

Gem::Specification.new do |s|
  s.name        = "aspose_slides_cloud"
  s.version     = AsposeSlidesCloud::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Victor Putrov"]
  s.email       = ["victor.putrov@aspose.com"]
  s.homepage    = "https://github.com/aspose-slides-cloud/aspose-slides-cloud-ruby"
  s.summary     = "Aspose.Slides Cloud SDK"
  s.description = "SDK for Aspose.Slides Cloud"
  s.license     = "MIT"
  s.required_ruby_version = ">= 1.9"

  s.add_dependency 'faraday', '~> 1.0', '>= 1.0.0'
  s.add_dependency 'faraday-httpclient', '~> 1.0', '>= 1.0.0'
  s.add_dependency 'httpclient', '~> 2.2', '>= 2.2.0'
  s.add_dependency 'json', '~> 2.1', '>= 2.1.0'
  s.add_dependency 'warning', '~> 1.4', '>= 1.4.0'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'
  s.add_development_dependency 'rspec_junit_formatter', '~> 0.5', '>= 0.5.1'
  s.add_development_dependency 'vcr', '~> 3.0', '>= 3.0.1'
  s.add_development_dependency 'webmock', '~> 1.24', '>= 1.24.3'
  s.add_development_dependency 'autotest', '~> 4.4', '>= 4.4.6'
  s.add_development_dependency 'autotest-rails-pure', '~> 4.1', '>= 4.1.2'
  s.add_development_dependency 'autotest-growl', '~> 0.2', '>= 0.2.16'
  s.add_development_dependency 'rubyzip', '~> 2.3', '>= 2.3.0'
  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n").uniq.sort.select { |f| !f.empty? && f.start_with?("spec") }
  s.executables   = []
  s.require_paths = ["lib"]
end
