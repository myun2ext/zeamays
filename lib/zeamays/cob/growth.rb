module Zeamays
  class Cob
    module Growth
      @rows = []

      def initialize(rows = [])
        @rows = rows
      end

      def grow!(*row)
        if row.is_a? Array and row.length == 1
          row = *row
        end
        @rows << row
      end

      def grow(*row)
        grow!(*row)
      end
    end
  end
end
