require 'byebug'
module SlackComplimentBot
  module Commands
    class Flirt < SlackRubyBot::Commands::Base
      command 'flirt with' do |client, data, _match|
        # puts data
        username = data.text.split(" ").select do |word|
          word.start_with?("<@") && word != "<@complimentbot"
        end
        # user_id = find_user_id(username)
        client.say(channel: username[0][2...-2], text: 'you are cute')
      end
    end
  end
end