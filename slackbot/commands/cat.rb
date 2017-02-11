
module SlackComplimentBot
  module Commands
    class Cat < SlackRubyBot::Commands::Base
      @cats = ["http://24.media.tumblr.com/tumblr_lzzmx8OONu1r43qujo1_500.jpg", "http://25.media.tumblr.com/tumblr_lv8vc9Huax1qbe5pxo1_1280.jpg", "http://25.media.tumblr.com/tumblr_m45vyxWDG11qze0hyo1_1280.jpg", "http://24.media.tumblr.com/tumblr_lyxsyphGjX1r6b7kmo1_500.jpg", "http://28.media.tumblr.com/tumblr_m242sdVumZ1qbhms5o1_500.jpg", "http://25.media.tumblr.com/tumblr_m4jy5rztFT1r2h6ioo1_500.gif", "http://25.media.tumblr.com/tumblr_lhh13pOL5o1qgnva2o1_500.jpg", "http://25.media.tumblr.com/tumblr_m150x2TCJm1qbe5pxo1_1280.jpg", "http://24.media.tumblr.com/tumblr_lo1amuLZQB1qg51mgo1_500.gif", "http://25.media.tumblr.com/tumblr_m37vxy8wit1rtntu6o1_500.jpg", "http://25.media.tumblr.com/tumblr_lofqz7oJBL1qij6yko1_400.jpg", "http://29.media.tumblr.com/tumblr_lxyk6s455e1qb73tpo1_400.gif", "http://24.media.tumblr.com/tumblr_loe5cfgH031qbe5pxo1_1280.jpg", "http://25.media.tumblr.com/Jjkybd3nSihjkbhf78uTb3g6o1_500.jpg", "http://24.media.tumblr.com/tumblr_m1rws4oXwg1qi23vmo1_500.jpg", "http://25.media.tumblr.com/tumblr_lvb3mlMsP11qzfo6go1_1280.jpg", "http://24.media.tumblr.com/tumblr_lyuq0dIRm11qhy6c9o1_500.gif", "http://25.media.tumblr.com/tumblr_lgb6bmYyta1qgnva2o1_500.jpg", "http://25.media.tumblr.com/tumblr_lwof5qOWCT1qbd47zo1_500.jpg", "http://25.media.tumblr.com/Jjkybd3nSc0hrv8jZIp3HCuv_500.jpg"]
      command 'CAT' do |client, data, _match|
        client.say(channel: data.channel, text: @cats.sample)
      end
    end
  end
end





