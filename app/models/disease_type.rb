class DiseaseType < ApplicationRecord
  has_one_attached :image

  has_many :doctors
  has_many :diseases


  def disease_type_data
    {
      id: self.id,
      name: self.name,
      name: self.symbol,
      # image_url: self.image.present? ? rails_blobs_for(self.image) : '',
    }
  end
end
