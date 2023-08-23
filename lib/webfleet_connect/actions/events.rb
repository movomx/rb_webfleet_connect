require_relative 'actions'
require_relative 'action'

module WebfleetConnect::Actions::Events
  extend WebfleetConnect::Actions

  add_action :show_event_report_extern
  add_action :acknowledge_event_extern
  add_action :resolve_event_extern
  add_action :get_event_forward_configs
  add_action :get_event_forward_config_recipients
  add_action :insert_event_forward_config
  add_action :update_event_forward_config
  add_action :delete_event_forward_config
end
