# redmine_default_duedate
Change undefined duedate in issue to default value

## Install

* Go to Redmine's root folder
   * cd /var/www/redmine
* Copy redmine_default_duedate to redmine plugins directory
* Migrate plugin's tables
   * bundle exec rake redmine:plugins NAME=redmine_default_duedate RAILS_ENV=production
* Restart Redmine app
   * touch tmp/restart.txt
