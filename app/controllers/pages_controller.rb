class PagesController < ApplicationController
  def about
      
  end
    
  def lookup
    require 'net/http'
    require 'json'
    @url = 'https://api.coinmarketcap.com/v1/ticker/'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @lookup_coin = JSON.parse(@response)
    
    @symbol = params[:sym]
      
      if @symbol
          @symbol = @symbol.upcase
      end
  end
    
end
