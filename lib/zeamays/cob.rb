require 'zeamays/cob/gene'
require 'zeamays/cob/growth'
require 'zeamays/cob/freezing'

module Zeamays
  class Cob
    extend Gene
    include Growth
    include Freezing
  end
end
