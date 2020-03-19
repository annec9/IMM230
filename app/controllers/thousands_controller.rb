class ThousandsController < ApplicationController
    #model : thousand
    #var : thing:text

def index
    @thousand = thousand.all
end

def new

end

def create
    @thousand = thousand.new(thousand_params)
    @thousand.save
    redirect_to @thousands
end








end


