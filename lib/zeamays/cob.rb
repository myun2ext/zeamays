require 'zeamays/cob/gene'
require 'zeamays/cob/growth'
require 'zeamays/cob/freezing'
require 'zeamays/cob/defreezing'

module Zeamays
  class Cob
    extend Gene
    include Growth
    include Freezing
    extend Defreezing
  end
end
