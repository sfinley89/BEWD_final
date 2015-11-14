class WelcomeController < ApplicationController
	
  
  def index
  	@ask 

        url = "http://api.giphy.com/v1/gifs/random?api_key=dc6zaTOxFJmzC&tag=yoda" 
        resp = Net::HTTP.get_response(URI.parse(url)) 
        buffer = resp.body 
        @result = JSON.parse(buffer)
        

  end

  def ask
    url = "http://api.giphy.com/v1/gifs/random?api_key=dc6zaTOxFJmzC&tag=yoda" 
        resp = Net::HTTP.get_response(URI.parse(url)) 
        buffer = resp.body 
        @result = JSON.parse(buffer)
  end

  

  def yoda
  	#@voice = HTTParty.get('https://yoda.p.mashape.com/yoda?sentence=You+will+learn+how+to+speak+like+me+someday.++Oh+wait.').parsed_response
  	
  	#sentence = "You+will+learn+how+to+speak+like+me+someday.++Oh+wait."
  	sentence = params[:sentence]
  	#render plain: ENV["YODA_KEY"]

 	@response = Unirest.get "https://yoda.p.mashape.com/yoda?sentence="+sentence,
 		headers:{
   		"X-Mashape-Key" => ENV["YODA_KEY"],
   		"Accept" => "text/plain",
  		}

      url = "http://api.giphy.com/v1/gifs/random?api_key=dc6zaTOxFJmzC&tag=yoda" 
        resp = Net::HTTP.get_response(URI.parse(url)) 
        buffer = resp.body 
        @result = JSON.parse(buffer)

  end
  
end
