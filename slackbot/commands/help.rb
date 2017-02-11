module SlackComplimentBot
  module Commands
    class Gif < SlackRubyBot::Commands::Base
      command 'gif me' do |client, data, _match|
        client.say(channel: data.channel, text: 
          "Options: /n
          command 'CAT', 'cat', 'kitty', 'kitty!', 'kitten',/n
          command 'inspire'/n 
          command 'reassure me'/n'
          command compliment'/n 
          command 'spill' /n
          command 'emojis' /n
          command 'sing to me paolo', 'Sing to me Paolo'/n
          command 'gif me' ")
      end
    end
  end
end
