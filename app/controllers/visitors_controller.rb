class VisitorsController < ApplicationController
  def index
#     require 'net/http'
#     require 'json'
      
    @url = 'https://api.coinmarketcap.com/v1/ticker/'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @coins = JSON.parse(@response)
    @my_coins = ['BTC', 'ETH', 'XRP', 'BCH', 'LTC',]

  end
    
  def about
      
  end
    
  def lookup
      
  end
    
end
