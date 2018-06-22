require 'redmine'
require_dependency 'redmine_default_duedate/hooks'

Redmine::Plugin.register :redmine_default_duedate do
  name 'Default Duedate plugin'
  author 'Eugene M.'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'https://github.com/ujin77/redmine_default_duedate'
  author_url 'mailto:ujin@i.ua'
  settings :default => {
#    'empty' => true
     :default_duedate_days => 1
  }, :partial => 'settings/redmine_default_duedate'
end
