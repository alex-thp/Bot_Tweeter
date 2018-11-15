require 'twitter'
require 'dotenv'
Dotenv.load

# quelques lignes qui enregistrent les clés d'APIs
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["API_KEY"]
  config.consumer_secret     = ENV["API_SECRET"]
  config.access_token        = ENV["ACCESS_TOKEN"]
  config.access_token_secret = ENV["TOKEN_SECRET"]
end

p client

client.create_direct_message(@VincentNuguns, "Salut, dis moi si ça fonctionne stp !")

#client.update("Bonjour @Nuguns")

#client.follow("user") va follow un user
#client.user("user") va chercher un user
#client.followers("user") va lister les followers du user
#client.home_timeline 
#https://github.com/sferik/twitter