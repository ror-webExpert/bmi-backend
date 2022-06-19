class Menu < ApplicationRecord
  has_one_attached :image
  belongs_to :category

  scope :position_order, -> {order("position ASC")}
end
