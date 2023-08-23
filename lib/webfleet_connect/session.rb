require_relative 'actions/addresses'
require_relative 'actions/drivers'
require_relative 'actions/events'
require_relative 'actions/geocoding'
require_relative 'actions/messages'
require_relative 'actions/miscellaneous'
require_relative 'actions/objects'
require_relative 'actions/orders'
require_relative 'actions/trips'
require_relative 'connection'

module WebfleetConnect
  class WebfleetConnect::Session
    include Actions::Addresses
    include Actions::Drivers
    include Actions::Events
    include Actions::Geocoding
    include Actions::Messages
    include Actions::Miscellaneous
    include Actions::Objects
    include Actions::Orders
    include Actions::Trips

    def initialize(credentials, config)
      @credentials = credentials
      @config = config
      @connection = Connection.new(self)
    end

    def json?
      @config.json?
    end

    private

    def exec(action)
      @connection.exec(url(action))
    end

    def url(action)
      "#{@config}&#{@credentials}&#{action}"
    end
  end
end
