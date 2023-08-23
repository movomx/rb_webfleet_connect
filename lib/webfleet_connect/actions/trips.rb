require_relative 'actions'
require_relative 'action'

module WebfleetConnect::Actions::Trips
  extend WebfleetConnect::Actions

  add_action :show_trip_report_extern
  add_action :show_trip_summary_report_extern
  add_action :show_tracks
  add_action :update_logbook
  add_action :show_logbook
  add_action :show_logbook_history
  add_action :update_logbook_mode
  add_action :update_logbook_driver
  add_action :show_working_times
  add_action :show_stand_stills
  add_action :show_idle_exceptions
  add_action :get_object_kpis
  add_action :get_driver_kpis
  add_action :get_remaining_driving_times_eu
end
