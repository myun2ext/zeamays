# For Zeamays cob scheme.

module Zeamays
  class Cob
    module Gene
      @gene = []

      def gene_sequencing(*pattern)
        @gene = pattern
      end

      def gene_sequence
        @gene
      end
    end
  end
end
