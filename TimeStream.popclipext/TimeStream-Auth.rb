#!/usr/bin/ruby

require 'rubygems'
require 'json'
require 'net/http'
require 'logger'
require 'uri'

logger = Logger.new('/Users/ahmadvaroqua/Downloads/development.log')

# Get the username and password
username = "ahmadvaroqua"
password = ""
#username = ENV['POPCLIP_OPTION_USERNAME']
#password = ENV['POPCLIP_OPTION_PASSWORD']

# Hit the login API and capture the response
uri = URI.parse("https://timestreamapp.com/login.txt")
response = Net::HTTP.post_form(uri, {:username => "#{username}", :password => "#{password}"})

# Check for authentication
if response.body == 'Success: Valid credentials'
  logger.info "#{response}"
  exit 0
else
  logger.error "#{response}"
  exit 1
end
