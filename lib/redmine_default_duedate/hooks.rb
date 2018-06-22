module DefaultDuedate
  module Hooks
    class ControllerIssuesHook < Redmine::Hook::ViewListener
      def controller_issues_edit_before_save(context = {})
		# Rails.logger.warn context[:project].identifier
		# Rails.logger.warn Setting.plugin_default_duedate["default_duedate_days"].to_i
        context[:issue].due_date ||= DateTime.now.next_day(Setting.plugin_redmine_default_duedate["default_duedate_days"].to_i)
      end
    end
  end
end
