class Disease < ApplicationRecord
  belongs_to :disease_type
  has_one_attached :image

end
