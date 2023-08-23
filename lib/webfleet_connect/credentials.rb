require_relative 'helpers/encoding_helper'

class WebfleetConnect::Credentials
  include WebfleetConnect::Helpers::EncodingHelper

  def initialize(args = {})
    args = default_arguments.merge(args)
    @account  = args[:account]
    @username = args[:username]
    @password = args[:password]
    @apikey   = args[:apikey]
  end

  def auth_header
    "Authorization: Basic #{encode}"
  end

  def to_s
    "#{account}&#{username}&#{password}&#{apikey}"
  end

  private

  def encode
    text = "#{@username}:#{@password}"
    base64_encode(text)
  end

  def default_arguments
    {
      account:  ENV['WEBFLEET_CONNECT_ACCOUNT'],
      username: ENV['WEBFLEET_CONNECT_USERNAME'],
      password: ENV['WEBFLEET_CONNECT_PASSWORD'],
      apikey:   ENV['WEBFLEET_CONNECT_APIKEY']
    }
  end

  def account
    "account=#{@account}"
  end

  def username
    "username=#{@username}"
  end

  def password
    "password=#{@password}"
  end

  def apikey
    "apikey=#{@apikey}"
  end
end
