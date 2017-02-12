module SlackComplimentBot
  module Commands
    class Flirt < SlackRubyBot::Commands::Base
      command 'flirt with' do |client, data, _match|
        flirt_text = data.text

        flirt_text.slice!("<@U43GMJHB3>")
        flirt_text.slice!("flirt with ")

        text_array = flirt_text.split(" ")
        username = text_array.shift().strip
        message = text_array.join(" ").strip

        flirt_call(username, message)
      end
    end
  end
end
