require 'httparty'
require_relative 'response'
require_relative 'error'
require_relative 'format_handlers/json_error_parser'
require_relative 'format_handlers/csv_error_parser'

module WebfleetConnect
  class Connection
    def initialize(session)
      @session = session
      @error_parser = build_error_parser(session)
    end

    def exec(url)
      response = get(url)
      raise Error.new(response.body, url, json?) if error?(response.body)
      Response.new(response, url, json?)
    end

    private

    def get(url)
      HTTParty.get(url)
    end

    def error?(message)
      @error_parser.error?(message)
    end

    def json?
      @session.json?
    end

    def build_error_parser(session)
      return FormatHandlers::JsonErrorParser.new(session) if json?
      FormatHandlers::CsvErrorParser.new(session)
    end
  end
end
