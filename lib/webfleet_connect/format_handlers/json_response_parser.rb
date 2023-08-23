require 'json'

module WebfleetConnect::FormatHandlers
  class JsonResponseParser
    def to_hash(message)
      JSON.parse(message, symbolize_names: true)
    end
  end
end
