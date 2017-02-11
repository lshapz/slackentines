module SlackComplimentBot
  module Commands
    class Flirt < SlackRubyBot::Commands::Base
      command 'flirt with' do |client, data, _match|
        username = data.text.split(" ").find do |word|
          word.start_with?("<@") && word != "<@complimentbot"
        end
        # p username[2...-2]
        client.say(channel: 'C44TN4QMD', text: 'you all are cute')
      end
    end
  end
end
