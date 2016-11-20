#!/usr/bin/env ruby
# frozen_string_literal: true

require 'bundler/setup'

require 'capybara'
require 'capybara/webkit'
require 'capybara/dsl'
require 'envied'

ENVied.require

def username
  ENVied.CE_USERNAME
end

def password
  ENVied.CE_PASSWORD
end

def filter_user
  ENVied.CE_FILTER_USERNAME
end

BASE_URL = 'http://covenanteyes.com/my_account'
SERVERS  = %w(
).freeze

servers = SERVERS

Capybara.javascript_driver = :webkit
Capybara.default_driver    = :webkit

Capybara.configure do |config|
  config.run_server = false
  config.app_host   = 'https://covenanteyes.com/'
end

Capybara::Webkit.configure(&:allow_unknown_urls)

include Capybara::DSL

visit '/myaccount/login/'

page.within('#sign_in_form') do
  fill_in 'id_sign_in_username', with: username
  fill_in 'id_sign_in_password', with: password

  click_on 'Sign in'
end

visit "/myaccount/filter/users/#{filter_user}/allow-block-lists"

page.within('.block_list') do
  servers.each do |server|
    begin
      fill_in 'filter_settings_add_blocked', with: server
      click_on 'Add to List'
      puts server
      sleep 0.25
    rescue Capybara::Webkit::NodeNotAttachedError
      sleep 1
      retry
    end
  end
end

page.save_and_open_screenshot('./result.png')
