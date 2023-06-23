class JournalistsController < ApplicationController
  def index
    @journalists= Journalist.all
    #pp Post.all ===> para ver los post en el terminal 
    
  end

  def new
    @journalist=Journalist.new
  end
  def create
    @journalist= Journalist.new(journalist_params)
    if @journalist.save
      redirect_to journalists_index_path
    else
      render :journalist_new
    end
  end

  private 

  def journalist_params
    params.require(:journalist).permit(:name, :lastname, :speciality)
  end
end

