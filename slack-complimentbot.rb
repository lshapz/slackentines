require 'slack-ruby-bot'
Dir[File.dirname(__FILE__) + '/slackbot/commands/*.rb'].each {|file| require file }
require './slackbot/bot'
Dir[File.dirname(__FILE__) + '/slackbot/apis/*.rb'].each {|file| require file } 
