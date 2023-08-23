require_relative 'error_parser'

module WebfleetConnect::FormatHandlers
  class JsonErrorParser < ErrorParser
    def error?(message)
      json = to_json(message)
      return false if json.is_a?(Array)
      json.key?(:errorCode)
    end

    private

    def to_json(message)
      JSON.parse(message, symbolize_names: true)
    end
  end
end
