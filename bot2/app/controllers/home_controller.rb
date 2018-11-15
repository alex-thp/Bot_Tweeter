class HomeController < ApplicationController
  def index
  	i = BotTwitter.new.perform
  	i.send_message
  end
end
