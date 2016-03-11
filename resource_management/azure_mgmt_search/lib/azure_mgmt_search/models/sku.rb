# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.16.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Search
  module Models
    #
    # Defines the SKU of an Azure Search Service, which determines price tier
    # and capacity limits.
    #
    class Sku

      include MsRestAzure

      # @return [SkuType] Gets or sets the SKU of the Search service. Possible
      # values include: 'free', 'standard', 'standard2'
      attr_accessor :name

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.name
        output_object['name'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [Sku] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = Sku.new

        deserialized_property = object['name']
        if (!deserialized_property.nil? && !deserialized_property.empty?)
          enum_is_valid = SkuType.constants.any? { |e| SkuType.const_get(e).to_s.downcase == deserialized_property.downcase }
          warn 'Enum SkuType does not contain ' + deserialized_property.downcase + ', but was received from the server.' unless enum_is_valid
        end
        output_object.name = deserialized_property

        output_object
      end
    end
  end
end