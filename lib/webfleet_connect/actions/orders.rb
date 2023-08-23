require_relative 'actions'
require_relative 'action'

module WebfleetConnect::Actions::Orders
  extend WebfleetConnect::Actions

  add_action :send_order_extern
  add_action :send_destination_order_extern
  add_action :update_order_extern
  add_action :update_destination_order_extern
  add_action :insert_destination_order_extern
  add_action :cancel_order_extern
  add_action :assign_order_extern
  add_action :reassign_order_extern
  add_action :delete_order_extern
  add_action :clear_orders_extern
  add_action :show_order_report_extern
  add_action :show_order_waypoints
end
