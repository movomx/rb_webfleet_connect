require_relative 'param'
require_relative '../helpers/date_format_helper'

module WebfleetConnect::Params
  class RangefromString < Param
    include WebfleetConnect::Helpers::DateFormatHelper

    def initialize(value)
      @value = format(value)
    end

    private

    def format(value)
      return value if string?(value)
      to_en(value)
    end

    def string?(value)
      value.class == String
    end
  end
end
