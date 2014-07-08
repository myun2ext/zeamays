module Zeamays
  class Corn
    class Fruiter
      module Integer32
        def self.fruit_i32(value)
          [value].pack("N")
        end
      end
    end
  end
end
