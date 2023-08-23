require_relative 'params'
require_relative 'default_param'
require_relative 'rangefrom_string'
require_relative 'rangeto_string'
require_relative 'range_pattern'

module WebfleetConnect::Params
  module ParamsFactory
    def build_params(args)
      args.map { |k, v| build(k, v) }
    end

    private

    def build(param, value)
      return RangePattern.new(value)    if param == :range_pattern
      return RangefromString.new(value) if param == :rangefrom_string
      return RangetoString.new(value)   if param == :rangeto_string
      DefaultParam.new(param, value)
    end
  end
end
