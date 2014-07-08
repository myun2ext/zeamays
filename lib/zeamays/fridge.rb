module Zeamays
  class Fridge
    def self.stick(cob, path)
      File.open(path, "wb") { |file|
        f.write cob.freeze
      }
    end
  end
end
