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
        emojis = client.emoji_list[:emoji]
        if emojis.present?
          message = emojis.map{|k,v| k}.uniq
        else
          message = client.emoji_list
        end

        client.say(channel: data.channel, text: "")
      end
    end
  end
end
