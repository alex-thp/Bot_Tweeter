require 'twitter'
require 'dotenv'
Dotenv.load

class BotTwitter
# quelques lignes qui enregistrent les clés d'APIs
  def perform
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV["API_KEY"]
      config.consumer_secret     = ENV["API_SECRET"]
      config.access_token        = ENV["ACCESS_TOKEN"]
      config.access_token_secret = ENV["TOKEN_SECRET"]
    end
  return @client
  end
def send_message
p client
user = "VincentNuguns"
user_id = 1447374817
@client.create_direct_message(user_id.to_i, 'Salut, dis moi si ça fonctionne stp !')
end
end
#client.update("Bonjour @Nuguns")

#client.follow("user") va follow un user
#client.user("user") va chercher un user
#client.followers("user") va lister les followers du user
#client.home_timeline 
#https://github.com/sferik/twitter