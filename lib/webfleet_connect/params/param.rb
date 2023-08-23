require_relative '../helpers/class_helper'
require_relative '../helpers/case_helper'

module WebfleetConnect
  class Params::Param
    include Helpers::ClassHelper
    include Helpers::CaseHelper

    def initialize(value)
      @value = value
    end

    def to_s
      "&#{param}=#{@value}"
    end

    private

    def param
      pascal_to_snake(class_name)
    end
  end
end
