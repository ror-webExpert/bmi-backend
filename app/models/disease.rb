class Disease < ApplicationRecord
  belongs_to :disease_type
  has_one_attached :image

  def disease_data
    {
      id: self.id,
      name: self.name,
      disadvantage: self.disadvantage,
      solution: self.solution,
      description: self.description,
      control_problem: self.control_problem,
      short_description: self.short_description,
      disease_type_id: self.disease_type_id,
      # image_url: self.image.present? ? rails_blob_url(self.image) : '',
    }
  end
end
