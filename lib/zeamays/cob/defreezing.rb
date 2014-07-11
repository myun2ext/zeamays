module Zeamays
  class Cob
    module Defreezing
      def unpack(packed_string)
        unpacked_list = []

        left_string = packed_string
        while left_string.size != 0 do
          unpacked = left_string.unpack(package_pattern + tail_pattern)
          left_string = unpacked.pop
          unpacked_list << unpacked
        end
        unpacked_list
      end

      def defreeze(freezed)
        cob = Cob.new
        unpack(freezed).each do |row|
          cob.grow!(row)
        end
        cob
      end

      private
      def tail_pattern
        'a*'
      end
    end
  end
end
