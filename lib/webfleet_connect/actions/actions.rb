require_relative '../helpers/case_helper'

module WebfleetConnect::Actions
  include WebfleetConnect::Helpers::CaseHelper

  def add_action(action_name)
    action_string = snake_to_cammel(action_name.to_s)
    class_eval %Q{
      def #{action_name}(args = {})
        exec WebfleetConnect::Actions::Action.new('#{action_string}', args)
      end
    }
  end
end
