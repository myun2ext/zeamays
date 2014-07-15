module Zeamays
  class Corn
    module Trait
      class Presence
        def presence?(value)
          !blank?(value)
        end

        def blank?
          value.nil? or value == [] or value == "" or value == {}
        end
      end
    end
  end
end
