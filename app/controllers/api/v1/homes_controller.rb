class Api::V1::HomesController < ApplicationController
  def index
    @doctors = Doctor.all
    @disease_types = DiseaseType.all
    @diseases = Disease.all
    @data = @doctors.collect(&:doctor_data)
    @disease_types = @disease_types.collect(&:disease_type_data)
    @diseases = @diseases.collect(&:disease_data)
    render json: {doctors: @data, disease_types: @disease_types, diseases: @diseases}, status: 200

  end
end
