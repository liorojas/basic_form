class PostsController < ApplicationController
  def index
    @posts= Post.all
    #pp Post.all ===> para ver los post en el terminal 
    
  end

  def new
    @post=Post.new
  end
  def create
    @post= Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  private 

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
