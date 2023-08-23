require_relative 'actions'
require_relative 'action'

module WebfleetConnect::Actions::Objects
  extend WebfleetConnect::Actions

  add_action :show_object_report_extern
  add_action :show_vehicle_report_extern
  add_action :show_nearest_vehicles
  add_action :show_contracts
  add_action :update_vehicle
  add_action :show_object_groups
  add_action :show_object_group_objects
  add_action :attach_object_to_group
  add_action :detach_object_from_group
  add_action :insert_object_group
  add_action :delete_object_group
  add_action :update_object_group
  add_action :switch_output
  add_action :show_wakeup_timers
  add_action :update_wakeup_timers
  add_action :get_object_features
  add_action :update_contract_info
  add_action :get_object_can_signals
  add_action :get_object_can_malfunctions
  add_action :get_electric_vehicle_data
  add_action :get_active_asset_couplings
end
