class GreetingsController < ApplicationController

    def hello_form
        
    end
  
    def index
        @greeting = params[:greeting] || "Hi There"
        @name = params[:name] || "Nobody"
    end

    
end
