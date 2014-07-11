module Zeamays
  class Cob
    module Defreezing
      def unpack(str)
        str.unpack(package_pattern)
      end
    end
  end
end
