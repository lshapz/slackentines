require './apis/emojis'

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
        client.say(channel: data.channel, text: SlackWebClient.Emojis.get_emojis.to_s)
      end

      match(/^emoji (?<emoji_key>\w*)\?$/i) do |client, data, match|
        emojis = SlackWebClient.Emojis.get_emojis_with_name(match[:emoji_key])
        emoji_message = emojis.map{ |e| ':' + e }.join(' ')
        client.say(channel: data.channel, text: "The weather in #{emoji_message} is nice.")
      end
    end
  end
end
