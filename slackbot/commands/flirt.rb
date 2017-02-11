module SlackComplimentBot
  module Commands
    class Flirt < SlackRubyBot::Commands::Base
      command 'flirt with' do |client, data, _match|
        # puts data
        # username = data.text.split(" ").select do |word|
        #   word.start_with?("<@") && word != "<@complimentbot"
        # end
        # p username[0][2...-2]
        # user_id = find_user_id(username)
        client.say(channel: 'C44TN4QMD', text: 'you all are cute')
      end
    end
  end
end
