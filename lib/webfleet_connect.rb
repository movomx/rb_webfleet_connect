# frozen_string_literal: true

require_relative 'webfleet_connect/version'
require_relative 'webfleet_connect/builder'

module WebfleetConnect
  def self.create(args = {})
    Builder.create(args)
  end
end
