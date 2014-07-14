module Zeamays
  class Corn
    module Types
      class String
        @value = 0
        attr_reader :value

        def initialize(value)
          @value = value
        end

        def packaging_template
          "Z*"
        end
      end
    end
  end
end
