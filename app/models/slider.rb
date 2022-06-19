class Slider < ApplicationRecord
  has_one_attached :image

  scope :position_order, -> {order("position ASC")}
end
