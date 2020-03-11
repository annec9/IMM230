class GamesController < ApplicationController

    def make_a_move
        
    end

    def index
        @player_throw = params[:player_throw]
        @defeat = {rock: :scissors, paper: :rock, scissors: :paper}
        @throws = @defeat.keys
        @computer_throw = @throws.sample
        @result = ""

        if @player_throw == @computer_throw
                @result = "You tied with the computer. Try again!"
        elsif @computer_throw == @defeat[@player_throw]
                @result =  "Nicely done; #{@player_throw} beats #{@computer_throw}!"
        else
            @result =  "Ouch; #{@computer_throw} beats #{@player_throw}. Better luck next time!"
        end
        
    end
end
