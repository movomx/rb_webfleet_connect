require_relative 'format_handlers/json_response_parser'
require_relative 'format_handlers/csv_response_parser'

module WebfleetConnect
  class Response
    attr_reader :url

    def initialize(response, url, is_json)
      @response = response
      @url = url
      @parser = build_parser(is_json)
    end

    def status_code
      @response.code
    end

    def to_hash
      @parser.to_hash(@response.body)
    end

    def to_s
      @response.body
    end

    private

    def build_parser(is_json)
      return FormatHandlers::JsonResponseParser.new if is_json
      FormatHandlers::CsvResponseParser.new
    end
  end
end
