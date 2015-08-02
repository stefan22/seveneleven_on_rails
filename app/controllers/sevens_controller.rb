class SevensController < ApplicationController
  def index
    @sevens = Seven.all
  end

  def new
    @seven = Seven.new
  end

  def create
    @seven = Seven.create(seven_params)
    redirect_to '/sevens'
  end

  def seven_params
    params.require(:seven).permit(:name)
  end

  def show
    @seven = Seven.find(params[:id])
  end

  def edit
    @seven = Seven.find(params[:id])
  end

  def update
    @seven = Seven.find(params[:id])
    @seven.update(seven_params)
    redirect_to '/sevens'
  end

  def destroy
    @seven = Seven.find(params[:id])
    @seven.destroy
    flash[:notice] = "Seven deleted successfully"
    redirect_to '/sevens'
  end


end
