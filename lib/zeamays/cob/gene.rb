# For Zeamays cob scheme.

module Zeamays
  class Cob
    module Gene
      @gene = nil
      def sequencing(*pattern)
        @gene = pattern
      end
    end
  end
end
