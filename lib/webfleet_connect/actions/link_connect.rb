require_relative 'actions'
require_relative 'action'

module WebfleetConnect::Actions::LINKConnect
  extend WebfleetConnect::Actions

  add_action :send_aux_device_data
  add_action :get_local_aux_device_config
  add_action :configure_loca_aux_device
  add_action :get_remote_aux_device_data
  add_action :configure_remote_aux_device
  add_action :remove_remote_aux_device_config
  add_action :clear_aux_device_data_queue
  add_action :reset_aux_device_data
end
