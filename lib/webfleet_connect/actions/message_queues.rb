require_relative 'actions'
require_relative 'action'

module WebfleetConnect::Actions::MessageQueues
  extend WebfleetConnect::Actions

  add_action :create_queue_extern
  add_action :delete_queue_extern
  add_action :pop_queue_messages_extern
  add_action :ack_queue_messages_extern
end
