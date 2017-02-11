module SlackComplimentBot
  module Commands
    class Reassure < SlackRubyBot::Commands::Base
      choices = ["You can do it!", "Don't worry, you'll get it!", "Believe in yourself" ]
      command 'reassure me' do |client, data, _match|
        client.say(channel: data.channel, text: 'we believe in you!')
      end
    end
  end
end
