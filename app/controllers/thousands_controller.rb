class ThousandsController < ApplicationController
    #model : thousand
    #var : thing:text

def index
    @thousand = Thousand.all
end

def show
    @thousand = Thousand.find(params[:id])
end

def new

end



def create
    i = 0

     while i < 1000
        i=i+1
        @thousand = Thousand.new(:thing => i)
        @thousand.save

     end

     redirect_to thousands_path
        
end

def destroy
    @thousand = Thousand.find(params[:id])
    @thousand.destroy
    
    redirect_to thousand_index_path

end

private def thousand_params
    params.require(:thousands).permit(:thing)
end 

end


