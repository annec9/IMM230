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
        @teashop = Teashop.new
    end

    def create
        @teashop = Teashop.new(teashop_params)
        @teashop.save
        redirect_to finalapp_path(@teashop)
    end

    def update
        @teashop = Teashop.find(params[:id])

        if (@teashop.update (teashop_params))
                redirect_to finalapp_path(@teashop)
        else
            render 'edit'
        end
    end
 
    def destroy
        @teashop = Teashop.find(params[:id])
        @teashop.destroy
        
        redirect_to finalapp_index_path

    end

    def edit
        @teashop = Teashop.find(params[:id])
    end

    private def teashop_params
        params.require(:teashop).permit(:cafename, :teacount, :autoclick)
    end 
end
