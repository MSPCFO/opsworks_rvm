# frozen_string_literal: true
#
# Cookbook Name:: mspcfo
# Recipe:: setup
#

prepare_recipe


# Create swap
swap_file '/mnt/swap' do
  size    2048 # MBs
  persist true
end


# Install dependencies
package 'nodejs'
package 'htop'
package 'tmux'
package 'libxrender1' # wkhtmltopdf dependency

include_recipe 'opsworks_ruby::setup'
