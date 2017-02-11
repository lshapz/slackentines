module SlackComplimentBot
  module Commands
    class Compliment < SlackRubyBot::Commands::Base
      command 'compliment' do |client, data, _match|
        content = data.content.split(':')
        sender = content.present? ? content.first : ''
        client.say(channel: data.channel, text: "#{sender} you're cool")
      end
    end
  end
end
