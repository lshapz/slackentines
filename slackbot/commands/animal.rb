
module SlackComplimentBot
  module Commands
    class Animal < SlackRubyBot::Commands::Base
      @cats = ["http://24.media.tumblr.com/tumblr_lzzmx8OONu1r43qujo1_500.jpg", "http://25.media.tumblr.com/tumblr_lv8vc9Huax1qbe5pxo1_1280.jpg", "http://25.media.tumblr.com/tumblr_m45vyxWDG11qze0hyo1_1280.jpg", "http://24.media.tumblr.com/tumblr_lyxsyphGjX1r6b7kmo1_500.jpg", "http://28.media.tumblr.com/tumblr_m242sdVumZ1qbhms5o1_500.jpg", "http://25.media.tumblr.com/tumblr_m4jy5rztFT1r2h6ioo1_500.gif", "http://25.media.tumblr.com/tumblr_lhh13pOL5o1qgnva2o1_500.jpg", "http://25.media.tumblr.com/tumblr_m150x2TCJm1qbe5pxo1_1280.jpg", "http://24.media.tumblr.com/tumblr_lo1amuLZQB1qg51mgo1_500.gif", "http://25.media.tumblr.com/tumblr_m37vxy8wit1rtntu6o1_500.jpg", "http://25.media.tumblr.com/tumblr_lofqz7oJBL1qij6yko1_400.jpg", "http://29.media.tumblr.com/tumblr_lxyk6s455e1qb73tpo1_400.gif", "http://24.media.tumblr.com/tumblr_loe5cfgH031qbe5pxo1_1280.jpg", "http://25.media.tumblr.com/Jjkybd3nSihjkbhf78uTb3g6o1_500.jpg", "http://24.media.tumblr.com/tumblr_m1rws4oXwg1qi23vmo1_500.jpg", "http://25.media.tumblr.com/tumblr_lvb3mlMsP11qzfo6go1_1280.jpg", "http://24.media.tumblr.com/tumblr_lyuq0dIRm11qhy6c9o1_500.gif", "http://25.media.tumblr.com/tumblr_lgb6bmYyta1qgnva2o1_500.jpg", "http://25.media.tumblr.com/tumblr_lwof5qOWCT1qbd47zo1_500.jpg", "http://25.media.tumblr.com/Jjkybd3nSc0hrv8jZIp3HCuv_500.jpg"]
      command 'CAT', 'cat', 'kitty', 'kitty!', 'kitten' do |client, data, _match|
        client.say(channel: data.channel, text: @cats.sample)
      end
      
      @dogs = ["https://upload.wikimedia.org/wikipedia/commons/4/40/Pudel_Grossschwarz.jpg", "http://d21vu35cjx7sd4.cloudfront.net/dims3/MMAH/crop/0x0%2B0%2B0/resize/645x380/quality/90/?url=http://s3.amazonaws.com/assets.prod.vetstreet.com/cf/f283009e8911e0a2380050568d634f/file/Doberman-2-645mk062111.jpg", "https://upload.wikimedia.org/wikipedia/commons/8/80/Chihuahue%C3%B1o_paseante.JPG", "http://hiddenpondlabradors.com/wp-content/uploads/2015/10/2014625puppies480.jpg", "https://upload.wikimedia.org/wikipedia/commons/3/33/Siberian_Husky_sable.jpg", "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f8/Full_attention_(8067543690).jpg/800px-Full_attention_(8067543690).jpg", "https://upload.wikimedia.org/wikipedia/commons/6/64/Hummel_Vedor_vd_Robandahoeve.jpg", "https://upload.wikimedia.org/wikipedia/commons/9/9e/Fritzi_GSD_puppy.jpg", "https://upload.wikimedia.org/wikipedia/commons/4/48/AmericanCollie3.jpg", "https://upload.wikimedia.org/wikipedia/commons/a/a0/Dachshund-puppies.jpg", "https://upload.wikimedia.org/wikipedia/commons/2/2b/BoraDK20050331.JPG", "https://a.dilcdn.com/bl/wp-content/uploads/sites/8/2013/09/Gibson.jpg", "http://iheartdogs.com/wp-content/uploads/2015/01/Screenshot-2015-01-17-16.15.29.png", "http://iheartdogs.com/wp-content/uploads/2015/01/Screenshot-2015-01-17-16.15.29.png", "http://wallpapercave.com/wp/bG7lhXw.jpg", "http://powellong.com/data/wallpapers/231/WDF_2670785.jpg", "https://i2.wp.com/petcollectionworld.com/wp-content/uploads/2012/07/bearded-collie-dog.jpg", "http://cdn.litlepups.net/2016/02/15/download-cute-dog-wallpapers-for-windows.jpg", "http://d21vu35cjx7sd4.cloudfront.net/dims3/MMAH/thumbnail/645x380/quality/90/?url=http%3A%2F%2Fs3.amazonaws.com%2Fassets.prod.vetstreet.com%2Fdc%2Fc4%2F8ccd3a28438d81b2f2f5d8031a05%2Fpug-ap-r82p3q-645.jpg", "http://cdn.earthporm.com/wp-content/uploads/2015/02/dog-look-like-teddy-bear-1__605.jpg"]
      command 'dog', 'doggo', 'pupper', 'puppy!', 'puppy', 'DOG' do |client, data, _match|
        client.say(channel: data.channel, text: @dogs.sample)
      end 
    end
  end
end





