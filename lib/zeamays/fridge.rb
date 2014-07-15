module Zeamays
  class Fridge
    def self.stick(path, freezed)
      File.open(path, "wb") { |f|
        f.flock(File::LOCK_EX)
        f.write(freezed)
      }
    end

    def self.take(path)
      File.open(path, "rb") { |f|
        f.flock(File::LOCK_EX)
        f.read
      }
    end
  end
end
