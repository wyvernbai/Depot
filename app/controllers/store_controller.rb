class StoreController < ApplicationController
  def index
      increment_counter
      @view_counter = session[:counter]
      @products = Product.all
  end

  def increment_counter
    session[:counter] = 0 if session[:counter].nil?
    session[:counter] += 1
  end

end
