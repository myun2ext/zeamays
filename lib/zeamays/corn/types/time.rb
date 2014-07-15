module Zeamays
  class Corn
    module Types
      class Time
        @value = Time.now
        attr_reader :value

        def initialize(value)
          @value = value
        end

        def packaging_template
          "C"
        end

        def packaging_value
          Time.now.to_i
        end
      end
    end
  end
end
