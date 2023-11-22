require_relative 'actions'
require_relative 'action'

module WebfleetConnect::Actions::Plugins
  extend WebfleetConnect::Actions

  add_action :insert_external_event
  add_action :set_external_object_data
end
