module SlackComplimentBot
  module Commands
    class Flirt < SlackRubyBot::Commands::Base
      command 'flirt with' do |client, data, _match|
        username = data["content"].split(" ").select do |word|
          word.start_with?("@") && word != "@complimentbot"
        end
        # user_id = find_user_id(username)
        client.say(channel: username, text: "someone thinks you're cute")
      end
    end
  end
end
