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
        slack_emojis = client.web_client.emoji_list[:emoji]
        emoji_list = slack_emojis.map{|k,v| k}.uniq if slack_emojis.present?
        emoji_list ||= []
        client.say(channel: data.channel, text: emoji_list.to_s)
      end

      match(/^emoji (?<emoji_key>\w*)\$/i) do |client, data, match|
        client.say(channel:data.channel, text: match[:emoji_key])
        # slack_emojis = client.web_client.emoji_list[:emoji]
        # p data.text
        # p match
        # emoji_list = slack_emojis.map{|k,v| k}.uniq if slack_emojis.present?
        # emoji_list ||= []

        # emojis = emoji_list.select{ |e| e.include?(match[:emoji_key])}
        # emoji_message = emojis.map{ |e| ':' + e }.join(' ')

        # client.say(channel: data.channel, text: "threws a bunch of emojis: #{emoji_message} ")
      end
    end
  end
end
