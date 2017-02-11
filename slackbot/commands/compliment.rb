module SlackComplimentBot
  module Commands
    class Compliment < SlackRubyBot::Commands::Base
      command 'compliment' do |client, data, _match|
        client.say(channel: data.channel, text: "you're cool!")
      end

      command 'spill' do |client, data, _match|
        client.say(channel: data.channel, text: data.to_s)
      end

      command 'high five' do |client, data, _match|
        client.say(channel: data.channel, text: "http://pngimg.com/upload/hands_PNG905.png")
      end

      command 'hacking', 'hack', 'hackathon', 'hackentine' do |client, data, _match|
        client.say(channel: data.channel, text: "https://twitter.com/gdinyc")
      end

      command 'emojis' do |client, data, _match|
        slack_emojis = client.web_client.emoji_list[:emoji]
        emoji_list = slack_emojis.map{|k,v| k}.uniq if slack_emojis.present?
        emoji_list ||= []
        client.say(channel: data.channel, text: emoji_list.to_s)
      end

      command 'emo' do |client, data, match|
        emoji_keys = data.text.split('emo').last
        emoji_keys = emoji_keys[3..-1].strip.downcase
        emoji_keys = emoji_keys.split(/\W/)
        emoji_keys = emoji_keys.reject{ |e| e.strip.empty? }.map { |e| e.strip}

        slack_emojis = client.web_client.emoji_list[:emoji]
        emoji_list = slack_emojis.map{|k,v| k}.uniq if !slack_emojis.empty?
        emoji_list ||= []

        emojis = []
        emoji_keys.each do |key|
          emojis += emoji_list.select{ |e| e.include?(key)}
        end

        emoji_message = emojis.map{ |e| ':' + e + ':' }.join(' ')
        if !emoji_message.empty?
          client.say(channel: data.channel, text: emoji_message)
        else
          client.say(channel: data.channel, text: "No emoji found for #{emoji_keys}")
        end
      end
    end
  end
end
