require_relative 'actions'
require_relative 'action'

module WebfleetConnect::Actions::VehicleMaintenance
  extend WebfleetConnect::Actions

  add_action :insert_maintenance_schedule
  add_action :update_maintenance_schedule
  add_action :delete_maintenance_schedule
  add_action :show_maintenance_schedules
  add_action :show_maintenance_tasks
  add_action :resolve_maintenance_task
end
