class SevensController < ApplicationController
  def index
    @sevens = Seven.all
  end

  def new
    @seven = Seven.new
  end


end
