class PostsController < ApplicationController

layout "post"

def new
		 @post = Post.new 
end

def create
   
  @post = Post.new(params[:post].permit(:Item, :Type, :Category, :Price, :Description, :Timing, :photo))

if @post.save
  redirect_to @post
  else
    render 'new'
  end
end

def show
  @post = Post.find(params[:id])
end

def index
  @posts = Post.all
  @posts = Post.order("Item").page(params[:page]).per(5)
end

def edit
  @post = Post.find(params[:id])
end

def update
  @post = Post.find(params[:id])
 
  if @post.update(params[:post].permit(:Item, :Type, :Category, :Price, :Description, :Timing, :photo))
    render 'success'
  else
    render 'edit'
  end
end


def destroy
  @post = Post.find(params[:id])
  @post.destroy
 
  redirect_to posts_path
end

  private
      def post_params
    params.require(:post).permit(:Item, :Type, :Timing,  :Category, :Price, :Description)
  end

end
