require 'csv'

module WebfleetConnect::FormatHandlers
  class CsvResponseParser
    def to_hash(message)
      csv = parse(message)
      hash = format(csv)
      symbolized_hash(hash)
    end

    private

    def parse(text)
      CSV.parse(text, headers: true, col_sep: ';')
    end

    def format(csv)
      csv.map(&:to_h)
    end

    def symbolized_hash(hash)
      hash.map { |h| h.transform_keys(&:to_sym) }
    end
  end
end
