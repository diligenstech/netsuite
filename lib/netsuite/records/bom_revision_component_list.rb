module NetSuite
  module Records
    class BomRevisionComponentList < Support::Sublist
      include Namespaces::TranInvt

      sublist :bom_revision_component, NetSuite::Records::BomRevisionComponent
    end
  end
end