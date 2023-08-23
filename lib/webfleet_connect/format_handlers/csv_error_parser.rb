require_relative 'error_parser'

module WebfleetConnect::FormatHandlers
  class CsvErrorParser < ErrorParser
    def error?(message)
      code = message.split(',').first
      four_digit_number?(code)
    end

    private

    def four_digit_number?(string)
      /\A\d+\z/ === string
    end
  end
end
