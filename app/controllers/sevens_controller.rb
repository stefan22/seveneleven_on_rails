class SevensController < ApplicationController
  def index
    @sevens = Seven.all
  end

  def new

  end


end
