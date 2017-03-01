# frozen_string_literal: true
#
# Cookbook Name:: mspcfo
# Recipe:: configure
#

include_recipe 'opsworks_ruby::configure'

logrotate_app 'mspcfo' do
  path      '/srv/www/mspcfo/shared/log/*.log'
  frequency 'daily'
  rotate    3
end

logrotate_app 'autotask_scraper' do
  path      '/srv/www/autotask_scraper/shared/log/*.log'
  frequency 'daily'
  rotate    3
end

include_recipe 'logrotate::global'
include_recipe 'cloudwatch-logs::default'
