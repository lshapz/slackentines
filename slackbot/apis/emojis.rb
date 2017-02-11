require 'slack-ruby-client'

module SlackWebClient
  class Emojis
    @slack_client = Slack::Web::Client.new
    def self.get_emojis
      slack_emojis = @slack_client.emoji_list[:emoji]
      emoji_list = slack_emojis.map{|k,v| k}.uniq if slack_emojis.present?
      emoji_list ||= []
      return emoji_list
    end

    def self.get_emojis_with_name(name)
      emoji_list = get_emojis
      return emoji_list.select{ |e| e.include?(name) }
    end
  end
end
