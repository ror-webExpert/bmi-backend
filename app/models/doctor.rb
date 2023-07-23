class Doctor < ApplicationRecord

  belongs_to :disease_type
  has_one_attached :image

  def doctor_data
    {
      id: self.id,
      name: self.name,
      email: self.email,
      # image_url: self.image.present? ? rails_blob_url(self.image) : '',
    }
  end
end
