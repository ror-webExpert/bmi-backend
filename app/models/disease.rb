class Disease < ApplicationRecord
  belongs_to :disease_type
  has_one_attached :image

  def disease_data
    {
      id: self.id,
      name: self.name,
      # image_url: self.image.present? ? rails_blob_url(self.image) : '',
    }
  end
end
