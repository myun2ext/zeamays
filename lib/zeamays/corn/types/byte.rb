module Zeamays
  class Corn
    module Types
      class Byte
        attr_reader :value
        @value = 0
        def initialize(value)
          @value = value
        end
      end
    end
  end
end
