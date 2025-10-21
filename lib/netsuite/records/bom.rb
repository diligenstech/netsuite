module NetSuite
  module Records
    class Bom
      include Support::Fields
      include Support::RecordRefs
      include Support::Records
      include Support::Actions
      include Namespaces::TranInvt

      actions :get, :add, :initialize, :delete, :update, :upsert, :upsert_list,
        :search

      fields :name, :memo, :is_inactive
      
      field :restrict_to_assemblies_list, RecordRefList

      record_refs :klass

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