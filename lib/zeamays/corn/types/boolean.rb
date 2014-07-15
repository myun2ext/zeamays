module Zeamays
  class Corn
    module Types
      class Boolean
        @value = false
        attr_reader :value

        def initialize(value)
          @value = value
        end

        def packaging_template
          "C"
        end

        def packaging_value
          @value ? 1 : 0
        end
      end
    end
  end
end
