class PostsController < ApplicationController #accesing database 2 & delete route
    #model : post
    #var : title, body 


    def index
        @posts = Post.all
    end

    def show
        @post = Post.find(params[:id])
    end
    
    def new

    end
    
    def create
        @post = Post.new(post_params)
        @post.save
        redirect_to @post
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        
        redirect_to posts_path

    end

    private def post_params
        params.require(:posts).permit(:title, :body)
    end 
    
end