module Zeamays
  class Corn
    module Trait
      class Regexp
        @regex = nil
        def initialize(regex)
          @regex = regex
        end

        def valid?(value)
          @regex =~ value
        end
      end
    end
  end
end
