class Api::V1::HomesController < ApplicationController
  def index
    @doctors = Doctor.all
    @disease_types = DiseaseType.all
    @diseases = Disease.all
    @doctors = @doctors.collect(&:doctor_data)
    @disease_types = @disease_types.collect(&:disease_type_data)
    @diseases = @diseases.collect(&:disease_data)
    render json: {doctors: @doctors, disease_types: @disease_types, diseases: @diseases}, status: 200
  end

  def doctor_profile
    @doctors = Doctor.where(id: params[:id]) if params[:id].present?
    @disease_types = @doctors.first.disease_type
    if @doctors.present? && @disease_types.present?
      @diseases = @disease_types.diseases.all
      @data = @doctors&.collect(&:doctor_data)
      @diseases = @diseases&.collect(&:disease_data)
    end
    render json: {doctors: @doctors, disease_types: @disease_types, diseases: @diseases}, status: 200
  end

  def disease_profile
    @diseases = Disease.where(id: params[:id]) if params[:id].present?
    @disease_types = @diseases.first.disease_type
    if @diseases.present? && @disease_types.present?
      @doctors = @disease_types.doctors.all
      @doctors = @doctors&.collect(&:doctor_data)
      @diseases = @diseases&.collect(&:disease_data)
    end
    render json: {doctors: @doctors, disease_types: @disease_types, diseases: @diseases}, status: 200
  end
end
