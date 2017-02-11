module SlackComplimentBot
  module Commands
    class Gif < SlackRubyBot::Commands::Base
      choices = ["Woohoo", "You rock!", "Amazing!", "Hurray"]
      command 'gif me' do |client, data, _match|
        client.say(channel: data.channel, text: "okay!", gif: choices.sample)
      end
    end
  end
end
