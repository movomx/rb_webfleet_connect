require_relative 'actions'
require_relative 'action'

module WebfleetConnect::Actions::Reporting
  extend WebfleetConnect::Actions

  add_action :get_archived_report_list
  add_action :get_archived_report
  add_action :delete_archived_report
  add_action :get_report_list
  add_action :create_report
  add_action :send_report_via_mail
end
