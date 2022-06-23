class WhyChooseOurRestaurant < ApplicationRecord
  scope :position_order, -> {order("position ASC")}
end
