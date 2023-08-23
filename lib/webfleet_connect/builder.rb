require_relative 'credentials'
require_relative 'default_config'
require_relative 'session'

module WebfleetConnect
  class Builder
    def self.create(args)
      credentials = Credentials.new(args)
      config = DefaultConfig.new(args)
      Session.new(credentials, config)
    end
  end
end
