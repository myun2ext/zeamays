module Zeamays
  class Fridge
    def self.stick(path, freezed)
      File.open(path, "wb") { |f|
        f.write(freezed)
      }
    end

    def self.take(path)
      #File.open(path, "rb") { |f|
      #}
      readed = File.binread(path)
    end
  end
end
