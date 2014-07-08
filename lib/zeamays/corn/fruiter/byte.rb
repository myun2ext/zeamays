module Zeamays
  class Corn
    class Fruiter
      module Byte
        def self.fruit_byte(u8)
          [u8].pack("C")
        end
      end
    end
  end
end
