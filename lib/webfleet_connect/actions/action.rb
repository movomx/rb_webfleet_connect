require_relative '../params/params_factory'

class WebfleetConnect::Actions::Action
  include WebfleetConnect::Params::ParamsFactory

  def initialize(name, args)
    @name = name
    @params = build_params(args)
  end

  def to_s
    "action=#{name}#{params}"
  end

  private

  def name
    @name
  end

  def params
    @params.map(&:to_s).join
  end
end
