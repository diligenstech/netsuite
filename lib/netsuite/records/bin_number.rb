module NetSuite
  module Records
    class BinNumber
      include Support::Fields
      include Support::Records
      include Support::RecordRefs
      include Namespaces::ListAcct

      record_ref :bin_number

      fields :preferred_bin, :location, :on_hand, :on_hand_avail
        
      attr_reader   :internal_id

      def initialize(attributes = {})
        @internal_id = attributes.delete(:internal_id) || attributes.delete(:@internal_id)
        initialize_from_attributes_hash(attributes)
      end
    end
  end
end
