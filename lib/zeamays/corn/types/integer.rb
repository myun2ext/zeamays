module Zeamays
  class Corn
    module Types
      class Integer
        @value = 0
        attr_reader :value

        def initialize(value)
          @value = value
        end

        def packaging_template
          "N"
        end
      end
    end
  end
end
