module Zeamays
  class Corn
    class Fruiter
      module String
        def self.fruit_short_string(s)
          bytesize = s.bytesize
          [bytesize].pack("C") + s
        end

        def self.fruit_medium_string(s)
          bytesize = s.bytesize
          [bytesize].pack("n") + s
        end

        def self.fruit_large_string(s)
          bytesize = s.bytesize
          [bytesize].pack("N") + s
        end
      end
    end
  end
end
