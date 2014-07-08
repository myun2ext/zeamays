module Zeamays
  class Cob
    module Base
      @rows = []

      def initialize(rows = [])
        @rows = rows
      end

      def grow(row)
        @rows << row
      end
    end
  end
end
