module Zeamays
  class Cob
    module Growth
      @rows = []

      def initialize(rows = [])
        @rows = rows
      end

      def grow!(*row)
        @rows << row
      end
      def grow(*row)
        grow!(row)
      end
    end
  end
end
