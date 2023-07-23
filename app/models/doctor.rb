class Doctor < ApplicationRecord

  belongs_to :disease_type
  has_one_attached :image


    def doctor_data
    {
      id: self.id,
      name: self.name,
      email: self.email,
      phone_number: self.phone_number,
      specialist: self.specialist,
      qualification: self.qualification,
      experience: self.experience,
      service: self.service,
      hospital_name: self.hospital_name,
      hospital_address: self.hospital_address,
      clinic_name: self.clinic_name,
      clinic_address: self.clinic_address,
      time_schedule: self.time_schedule,
      disease_type_id: self.disease_type_id,
      condition_treated: self.condition_treated,
      # image_url: self.image.present? ? rails_blob_url(self.image) : '',
    }
  end
end
