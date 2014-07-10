# For Zeamays cob scheme.

module Zeamays
  class Cob
    module Gene
      @gene = nil
      def gene_sequencing(*pattern)
        @gene = pattern
      end
    end
  end
end
