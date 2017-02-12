module SlackComplimentBot
  module Commands
    class Flirt < SlackRubyBot::Commands::Base
      command 'flirt with' do |client, data, _match|
        flirt_text = data.text
        if flirt_text.include?("@complimentbot")
          flirt.text = flirt_text.slice!("@complimentbot ")
        end
          flirt_text.slice!("flirt with ")
          text_array = flirt_text.split(" ")
        flirt_call(text_array.shift(), text_array.join(" "))
      end
    end
  end
end
