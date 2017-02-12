module SlackComplimentBot
  module Commands
    class Help < SlackRubyBot::Commands::Base
      command 'help me', 'help', 'commands' do |client, data, _match|
        client.say(channel: data.channel, text: "Options: 'CAT', 'cat', 'kitty', 'kitty!', 'kitten',
          'dog', 'doggo', 'pupper', 'puppy!', 'puppy', 'DOG', 'compliment', 'inspire', 'reassure me', 'emojis','sing to me paolo', 'Sing to me Paolo', 'sing', 'gif me', 'emojis', 'emo + [word in emoji name]', 'hackathon' or 'flirt with + [user w/o @]'")
      end
    end
  end
end
