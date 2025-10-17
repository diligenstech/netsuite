module NetSuite
  module Records
    class WorkOrderCompletion
      include Support::Fields
      include Support::RecordRefs
      include Support::Records
      include Support::Actions
      include Namespaces::TranInvt

      actions :get, :add, :initialize, :delete, :update, :upsert, :upsert_list,
        :search

      fields :klass, :completed_quantity, :completed_date, :completed_by, :memo, :tran_date, :tran_id

      field :custom_field_list, CustomFieldList

      record_refs :custom_form, :entity, :job, :location, :manufacturing_routing,
        :revision, :subsidiary, :units, :work_order

      attr_reader   :internal_id
      attr_accessor :external_id

      def initialize(attributes = {})
        @internal_id = attributes.delete(:internal_id) || attributes.delete(:@internal_id)
        @external_id = attributes.delete(:external_id) || attributes.delete(:@external_id)
        initialize_from_attributes_hash(attributes)
      end

      def self.search_class_name
        "WorkOrderCompletion"
      end

      def self.search_class_namespace
        'tranInvt'
      end
    end
  end
end
