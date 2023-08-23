require 'base64'
require_relative '../helpers'

module WebfleetConnect::Helpers::EncodingHelper
  def base64_encode(text)
    Base64.encode(text)
  end
end
