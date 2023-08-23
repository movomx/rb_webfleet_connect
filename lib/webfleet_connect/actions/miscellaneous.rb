require_relative 'actions'
require_relative 'action'

module WebfleetConnect::Actions::Miscellaneous
  extend WebfleetConnect::Actions

  add_action :get_charger_connections
  add_action :show_io_report_extern
  add_action :show_acceleration_events
  add_action :show_speeding_events
  add_action :show_digital_input_state_mileage
  add_action :get_charger_connections
end
