require_relative 'rangefrom_string'

module WebfleetConnect::Params
  class RangetoString < RangefromString
    def initialize(value)
      @value = format(value)
    end
  end
end
