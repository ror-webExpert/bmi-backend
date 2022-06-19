class HomesController < ApplicationController
  def index
    @categories = Category.position_order
    @sliders = Slider.position_order
    @menus = Menu.position_order
  end
end
