module Zeamays
  class Corn
    module Types
      class Byte
        @value = 0
        attr_reader :value

        def initialize(value)
          @value = value
        end

        def packaging_template
          "C"
        end
      end
    end
  end
end
