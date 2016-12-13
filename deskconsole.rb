#!/usr/bin/env ruby
require 'rubygems'
require 'bundler/setup'
require "highline/import"

Bundler.require()

d = ask "Domain: "
u = ask "Username: "
p = ask "Password: "

DeskApi.configure do |config|
  config.username = u
  config.password = p
  config.endpoint = "https://#{d}.desk.com"
end

binding.pry
