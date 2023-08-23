require_relative 'actions'
require_relative 'action'

module WebfleetConnect::Actions::Messages
  extend WebfleetConnect::Actions

  add_action :send_text_message_extern
  add_action :clear_text_messages_extern
  add_action :show_messages
  add_action :send_binary_message
  add_action :reset_binary_messages
  add_action :clear_binary_messages
end
