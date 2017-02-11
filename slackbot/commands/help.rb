module SlackComplimentBot
  module Commands
    class Gif < SlackRubyBot::Commands::Base
      command 'gif me' do |client, data, _match|
        client.say(channel: data.channel, text: "Options: 'CAT', 'cat', 'kitty', 'kitty!', 'kitten',
          'inspire', 'reassure me', 'compliment', 'spill', 'emojis','sing to me paolo', 'Sing to me Paolo', 'gif me' ")
      end
    end
  end
end
