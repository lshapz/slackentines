$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'dotenv'
Dotenv.load
require 'require_all'
require_all './'
require 'web'

Thread.abort_on_exception = true

Thread.new do
  begin
    SlackComplimentBot::Bot.run
  rescue Exception => e
    STDERR.puts "ERROR: #{e}"
    STDERR.puts e.backtrace
    raise e
  end
end

run SlackComplimentBot::Web
