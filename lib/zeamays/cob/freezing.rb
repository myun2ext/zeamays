module Zeamays
  class Cob
    module Freezing
      def pack
        @rows.collect { |row|
          row.pack(self.class.package_pattern)
        }.join("")
      end

      def freeze
        pack
      end
      def freezed
        pack
      end

      module ClassMethods
        def package_pattern
          gene_sequence.map { |type|
            case type
              when :i8 then 'C'
              when :i16 then 'n'
              when :i32 then 'N'
              when :integer then 'N'
              when :string then 'Z*'
            end
          }.join("")
        end
      end

      def self.included(me)
        me.extend ClassMethods
      end
    end
  end
end
