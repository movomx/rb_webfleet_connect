require_relative 'actions'
require_relative 'action'

module WebfleetConnect::Actions::Geocoding
  extend WebfleetConnect::Actions

  add_action :geocode_address
  add_action :calc_route_simple_extern
end
