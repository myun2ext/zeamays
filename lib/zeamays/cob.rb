require 'zeamays/cob/gene'
require 'zeamays/cob/base'
require 'zeamays/cob/freezing'

module Zeamays
  class Cob
    #def grow(corns)
    #end

    include Gene
    include Base
    include Freezing
  end
end
