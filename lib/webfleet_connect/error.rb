require_relative 'format_handlers/json_response_parser'
require_relative 'format_handlers/csv_response_error_parser'

module WebfleetConnect
  class Error < StandardError
    SITE = 'https://www.webfleet.com'
    PATH = '/static/help/webfleet-connect/en_gb/index.html'

    attr_reader :code, :url

    def initialize(message, url, is_json)
      parser = build_parser(is_json)
      hash = parser.to_hash(message)
      @code = hash[:errorCode]
      @message = hash[:errorMsg]
      @url = url
    end

    def message
      "#{code}, #{@message}\n\nCheck #{api_docs_url} for more details.\n\n"
    end

    private

    def api_docs_url
      "#{SITE}#{PATH}"
    end

    def build_parser(is_json)
      return FormatHandlers::JsonResponseParser.new if is_json
      FormatHandlers::CsvResponseErrorParser.new
    end
  end
end
