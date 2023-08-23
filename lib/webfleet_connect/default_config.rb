class WebfleetConnect::DefaultConfig
  HOST = 'csv.webfleet.com'
  PATH = 'extern'

  def initialize(args = {})
    args = default_arguments.merge(args)
    @lang       = args[:lang]
    @format     = args[:format]
    @useUTF8    = args[:useUTF8]
    @useISO8601 = args[:useISO8601]
  end

  def to_s
    "#{base_url}?#{lang}&#{format}&#{useUTF8}&#{useISO8601}"
  end

  def json?
    @format == :json
  end

  private

  def default_arguments
    { lang: :en, format: :csv, useUTF8: false, useISO8601: false }
  end

  def base_url
    "https://#{HOST}/#{PATH}"
  end

  def lang
    "lang=#{@lang}"
  end

  def format
    "outputformat=#{@format}"
  end

  def useUTF8
    "useUTF8=#{@useUTF8}"
  end

  def useISO8601
    "useISO8601=#{@useISO8601}"
  end
end
