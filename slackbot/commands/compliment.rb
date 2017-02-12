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
        emoji_keys = get_emoji_keys(data_text)
        emoji_list = get_custom_emoji(client.web_client) + get_default_emoji

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

      def get_emoji_keys(data_text)
        emoji_keys = data_text.split('emo').last
        emoji_keys = emoji_keys[0..-1].strip.downcase
        emoji_keys = emoji_keys.split(/\W/)
        emoji_keys = emoji_keys.reject{ |e| e.strip.empty? }.map { |e| e.strip}
        return emoji_keys
      end

      def get_custom_emoji(slack_client)
        slack_emojis = slack_client.emoji_list[:emoji]
        emoji_list = slack_emojis.map{|k,v| k}.uniq if !slack_emojis.empty?
        emoji_list ||= []
        return emoji_list
      end

      def get_default_emoji
        emoji = []
        File.open('../../emoji.txt').each do |line|
          emoji << line
        end
        return emoji
      end
    end
  end
end
