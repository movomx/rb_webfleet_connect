require 'csv'

module WebfleetConnect::FormatHandlers
  class CsvResponseErrorParser
    def to_hash(message)
      values = message.split(',')
      coupled_values = [:errorCode, :errorMsg].zip(values)
      Hash[coupled_values]
    end
  end
end
