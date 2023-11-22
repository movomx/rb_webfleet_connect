require_relative 'actions'
require_relative 'action'

module WebfleetConnect::Actions::Areas
  extend WebfleetConnect::Actions

  add_action :get_areas
  add_action :insert_area
  add_action :delete_area
  add_action :update_area
  add_action :get_area_points
  add_action :get_area_assignments
  add_action :insert_area_assignment
  add_action :delete_area_assignment
  add_action :get_area_schedules
  add_action :insert_area_schedule
  add_action :delete_area_schedule
end
