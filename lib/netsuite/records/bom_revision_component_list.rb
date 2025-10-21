module NetSuite
  module Records
    class BomRevisionComponentList < Support::Sublist
      include Namespaces::TranInvt

      sublist :component, NetSuite::Records::BomRevisionComponent
    end
  end
end