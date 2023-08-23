require_relative 'param'

module WebfleetConnect::Params
  class DefaultParam < Param
    def initialize(key, value)
      @key = key
      @value = value
    end

    private

    def param
      @key
    end
  end
end
