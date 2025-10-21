module NetSuite
  module Records
    class BomRevisionComponent
      include Support::Fields
      include Support::RecordRefs
      include Support::Records
      include Namespaces::TranInvt

      fields :bom_quantity, :component_yield, :description, :quantity

      record_refs :item, :units

      attr_reader :internal_id
      attr_accessor :external_id

      def initialize(attributes = {})
        @internal_id = attributes.delete(:internal_id) || attributes.delete(:@internal_id)
        @external_id = attributes.delete(:external_id) || attributes.delete(:@external_id)
        initialize_from_attributes_hash(attributes)
      end
    end
  end
end