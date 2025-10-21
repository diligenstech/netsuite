module NetSuite
  module Records
    class RestrictToAssembliesList
      include Support::Sublist
      include Namespaces::TranInvt

      #sublist :assembly, RestrictToAssembly
    end
  end
end