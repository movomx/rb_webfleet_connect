module WebfleetConnect::FormatHandlers
  class ErrorParser
    def initialize(session)
      @session = session
    end

    def error?(response)
      raise NotImplementedError
    end
  end
end
