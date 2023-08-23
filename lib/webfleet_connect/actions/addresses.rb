require_relative 'actions'
require_relative 'action'

module WebfleetConnect::Actions::Addresses
  extend WebfleetConnect::Actions

  add_action :show_address_report_extern
  add_action :show_address_group_report_extern
  add_action :show_address_group_address_report_extern
  add_action :insert_address_extern
  add_action :update_address_extern
  add_action :delete_address_extern
  add_action :attach_address_to_group_extern
  add_action :detach_address_from_group_extern
  add_action :insert_address_group_extern
  add_action :delete_address_group_extern
end
