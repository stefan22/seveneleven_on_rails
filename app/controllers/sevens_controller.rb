class SevensController < ApplicationController
  def index
    @sevens = Seven.all
  end


end
