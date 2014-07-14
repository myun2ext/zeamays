module Zeamays
  class Corn
    module Types
      class Short
        @value = 0
        attr_reader :value

        def initialize(value)
          @value = value
        end

        def packaging_template
          "n"
        end
      end
    end
  end
end
