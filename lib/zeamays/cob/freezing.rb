module Zeamays
  class Cob
    module Freezing
      def pack
        @rows.collect { |row|
          row.pack(package_pattern)
        }.join("")
      end

      private
      def package_pattern
        @gene.map { |type|
          case type
            when :i8 then 'C'
            when :i16 then 'n'
            when :i32 then 'N'
            when :integer then 'N'
            when :string then 'A*'
          end
        }.join("")
      end
    end
  end
end
