module Zeamays
  class Corn
    class Fruiter
      module Integer16
        def self.fruit_i16(value)
          [value].pack("n")
        end
      end
    end
  end
end
