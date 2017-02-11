require 'slack-ruby-client'

module SlackComplimentBot
  module Commands
    class Compliment < SlackRubyBot::Commands::Base
      command 'compliment' do |client, data, _match|
        client.say(channel: data.channel, text: "you're cool!")
      end

      command 'spill' do |client, data, _match|
        client.say(channel: data.channel, text: data.to_s)
      end

      command 'emojis' do |client, data, _match|
        emojis1 = client.web_client.emoji_list[:emoji]
        emojis2 = client.web_client.send(emoji_list)

        client.say(channel: data.channel, text: "Emoji test")
        client.say(channel: data.channel, text: emojis1.to_s)
        client.say(channel: data.channel, text: emojis2.to_s)
        client.say(channel: data.channel, text: "End of emoji test")
      end
    end
  end
end
