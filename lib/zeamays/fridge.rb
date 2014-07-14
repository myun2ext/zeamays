require 'zeamays/cob'

module Zeamays
  class Fridge
    def self.stick(cob, path)
      File.open(path, "wb") { |f|
        f.write(cob.freeze)
      }
    end

    def self.take(path)
      #File.open(path, "rb") { |f|
      #}
      readed = File.binread(path)
    end
  end
end
