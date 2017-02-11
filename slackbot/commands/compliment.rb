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
        slack_client = Slack::Web::Client.new

        emojis = slack_client.emoji_list[:emoji]
        if emojis.present?
          message = emojis.map{|k,v| k}.uniq
        else
          message = slack_client.emoji_list
        end

        client.say(channel: data.channel, text: message.to_s)
      end
    end
  end
end
