
# require 'httparty'

module SlackComplimentBot
  module Commands
    class Song < SlackRubyBot::Commands::Base
      #publicplaylist
      # @songs = []
      # url = "https://api.spotify.com/v1/browse/categories/mood/playlists" 
      # response = HTTParty.get(url)
      # output = response.parsed_response

      # output.data[0].each do |track|
      #   @songs << track
      # end

      @songs = ["https://play.spotify.com/track/7MXVkk9YMctZqd1Srtv4MB", 
        "https://play.spotify.com/track/1Tt4sE4pXi57mTD1GCzsqm", 
        "https://play.spotify.com/track/4JehYebiI9JE8sR8MisGVb"]

      command 'sing to me paolo', 'Sing to me Paolo', 'sing to me', 'sing' do |client, data, _match|
        client.say(channel: data.channel, text: @songs.sample)
      end
    end
  end
end

