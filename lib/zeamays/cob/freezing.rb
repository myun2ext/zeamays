module Zeamays
  class Cob
    module Freezing
      def freeze
        @rows.collect { |row|
          row.pack(pattern)
        }.join("")
      end
    end
  end
end
