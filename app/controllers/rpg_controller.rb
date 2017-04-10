class RpgController < ApplicationController
  def index 
  	if !session[:gold]
  	session[:gold] = 0
  	session[:description] = ""
  	end
  		@gold= session[:gold]

  		@description = session[:description]
  end 	

  def farm
  	
  	@farm = Random.rand(10..20)
  	session[:gold] = session[:gold] + @farm
  	session[:description] += "<p>Earned #{@farm} golds from the farm!<p> ".html_safe
  	redirect_to root_path

  end

  def cave
  	@cave = Random.rand(5..10)
  	session[:gold] =session[:gold] + @cave
	session[:description] += "<p>Earned #{@cave} golds from the cave!<p> ".html_safe
  	redirect_to root_path
  end

  def casino
 	@casino = Random.rand(-50..50)
  	session[:gold] = session[:gold] + @casino
	session[:description] += "<p>Earned #{@casino} golds from the casino!</p>".html_safe 	
  	redirect_to root_path
  end

  def house
  	@house = Random.rand(2..5)
  	session[:gold] = session[:gold] + @house
  	session[:description] += "<p> Earned #{@house} golds from the casino!</p>".html_safe
  	redirect_to root_path
  end
end
