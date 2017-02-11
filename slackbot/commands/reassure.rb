module SlackComplimentBot
  module Commands
    class Reassure < SlackRubyBot::Commands::Base
      command 'reassure me' do |client, data, _match|
        client.say(channel: data.channel, text: 'we believe in you!')
      end
    end
  end
end
