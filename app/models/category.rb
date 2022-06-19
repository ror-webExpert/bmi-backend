class Category < ApplicationRecord
  has_many :menus

  scope :position_order, -> {order("position ASC")}
end
