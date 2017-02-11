require 'httparty'

module SlackComplimentBot
  module Commands
    class Inspire < SlackRubyBot::Commands::Base
       
      command 'inspire' do |client, data, _match|
        url = 'http://api.forismatic.com/api/1.0/?method=getQuote&lang=en&format=json'
        response = HTTParty.get(url)
        quote = response.parsed_response["quoteText"]
        # sleep 1
        client.say(channel: data.channel, text: quote)
      end
    end
  end
end
