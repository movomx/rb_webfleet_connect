require_relative 'actions'
require_relative 'action'

module WebfleetConnect::Actions::UserManagement
  extend WebfleetConnect::Actions

  add_action :show_users
  add_action :change_password
end
