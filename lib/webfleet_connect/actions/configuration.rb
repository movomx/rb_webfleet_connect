require_relative 'actions'
require_relative 'action'

module WebfleetConnect::Actions::Configuration
  extend WebfleetConnect::Actions

  add_action :show_settings
  add_action :create_session
  add_action :terminate_session
  add_action :show_account_order_states
  add_action :update_account_order_state
  add_action :show_account_order_automations
  add_action :update_account_order_automation
  add_action :get_account_status_messages
  add_action :get_status_messages
  add_action :set_vehicle_config
  add_action :get_vehicle_config
  add_action :set_status_messages
  add_action :set_account_status_messages
end
