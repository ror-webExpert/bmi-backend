class HomesController < ApplicationController
  def index
    @categories = Category.all
    @menus = Menu.all
  end
end
