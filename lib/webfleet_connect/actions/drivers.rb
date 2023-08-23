require_relative 'actions'
require_relative 'action'

module WebfleetConnect::Actions::Drivers
  extend WebfleetConnect::Actions

  add_action :show_driver_report_extern
  add_action :insert_driver_extern
  add_action :update_driver_extern
  add_action :delete_driver_extern
  add_action :show_opti_drive_indicator
  add_action :show_driver_groups
  add_action :show_driver_group_drivers
  add_action :attach_driver_to_group
  add_action :detach_driver_from_group
  add_action :insert_driver_group
  add_action :delete_driver_group
  add_action :update_driver_group
  add_action :attach_driver_to_vehicle
  add_action :detach_driver_from_vehicle
  add_action :get_driver_rdt_rules
  add_action :update_driver_rdt_rules
end
