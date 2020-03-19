class FinalappController < ApplicationController
    #model: teashop @teashop
    #var: cafename, teacount, autoclick


    def index
        @teashop = Teashop.all
    end

    def show
        @teashop = Teashop.find(params[:id])
    end

    def new

    end

    def create
        @teashop = Teashop.new(params[:teashop])
        @teashop.save
        
        redirect_to @teashop
     end
 
    def edit

    end


end
