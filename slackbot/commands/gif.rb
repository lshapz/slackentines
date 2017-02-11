module SlackComplimentBot
  module Commands
    class Gif < SlackRubyBot::Commands::Base
      command 'gif me' do |client, data, _match|
        client.say(channel: data.channel, text: "okay!", gif: 'yay')
      end
    end
  end
end
