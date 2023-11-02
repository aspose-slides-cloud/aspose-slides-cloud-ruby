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

require 'date'

module AsposeSlidesCloud
  class Operation < BaseObject
    attr_accessor :id

    attr_accessor :method

    attr_accessor :status

    attr_accessor :created

    attr_accessor :enqueued

    attr_accessor :started

    attr_accessor :failed

    attr_accessor :canceled

    attr_accessor :finished

    attr_accessor :error

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'Id',
        :'method' => :'Method',
        :'status' => :'Status',
        :'created' => :'Created',
        :'enqueued' => :'Enqueued',
        :'started' => :'Started',
        :'failed' => :'Failed',
        :'canceled' => :'Canceled',
        :'finished' => :'Finished',
        :'error' => :'Error',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'method' => :'String',
        :'status' => :'String',
        :'created' => :'DateTime',
        :'enqueued' => :'DateTime',
        :'started' => :'DateTime',
        :'failed' => :'DateTime',
        :'canceled' => :'DateTime',
        :'finished' => :'DateTime',
        :'error' => :'String',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'Id')
        self.id = attributes[:'Id']
      end

      if attributes.has_key?(:'Method')
        self.method = attributes[:'Method']
      end

      if attributes.has_key?(:'Status')
        self.status = attributes[:'Status']
      end

      if attributes.has_key?(:'Created')
        self.created = attributes[:'Created']
      end

      if attributes.has_key?(:'Enqueued')
        self.enqueued = attributes[:'Enqueued']
      end

      if attributes.has_key?(:'Started')
        self.started = attributes[:'Started']
      end

      if attributes.has_key?(:'Failed')
        self.failed = attributes[:'Failed']
      end

      if attributes.has_key?(:'Canceled')
        self.canceled = attributes[:'Canceled']
      end

      if attributes.has_key?(:'Finished')
        self.finished = attributes[:'Finished']
      end

      if attributes.has_key?(:'Error')
        self.error = attributes[:'Error']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @method.nil?
        invalid_properties.push('invalid value for "method", method cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @method.nil?
      method_validator = EnumAttributeValidator.new('String', ['Convert', 'DownloadPresentation'])
      return false unless method_validator.valid?(@method)
      return false if @status.nil?
      status_validator = EnumAttributeValidator.new('String', ['Created', 'Enqueued', 'Started', 'Failed', 'Canceled', 'Finished'])
      return false unless status_validator.valid?(@status)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] method Object to be assigned
    def method=(method)
      validator = EnumAttributeValidator.new('String', ['Convert', 'DownloadPresentation'])
      unless validator.valid?(method)
        fail ArgumentError, 'invalid value for "method", must be one of #{validator.allowable_values}.'
      end
      @method = method
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ['Created', 'Enqueued', 'Started', 'Failed', 'Canceled', 'Finished'])
      unless validator.valid?(status)
        fail ArgumentError, 'invalid value for "status", must be one of #{validator.allowable_values}.'
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          method == o.method &&
          status == o.status &&
          created == o.created &&
          enqueued == o.enqueued &&
          started == o.started &&
          failed == o.failed &&
          canceled == o.canceled &&
          finished == o.finished &&
          error == o.error
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, method, status, created, enqueued, started, failed, canceled, finished, error].hash
    end
  end
end
