ActiveAdmin.register Doctor do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :specialist, :qualification, :experience, :service, :email, :phone_number, :hospital_address, :hospital_name, :clinic_name, :clinic_address, :time_schedule, :condition_treated, :disease_type_id
  #

  permit_params :name, :specialist, :qualification, :experience, :service, :email, :phone_number, :hospital_address, :hospital_name, :clinic_name, :clinic_address, :time_schedule, :condition_treated, :disease_type_id, :image

  form do |f|
    f.inputs do
      f.input :name
      f.input :specialist
      f.input :experience
      f.input :email
      f.input :phone_number
      f.input :disease_type, as: :select, collection: DiseaseType.all.map { |dt| [dt.name, dt.id] }
      f.input :image, as: :file
      f.input :hospital_address
      f.input :hospital_name
      f.input :clinic_name
      f.input :clinic_address
      f.input :qualification, as: :ckeditor
      f.input :time_schedule, as: :ckeditor
      f.input :service, as: :ckeditor
      f.input :condition_treated, as: :ckeditor
    end
    f.actions
  end

  show do
    attributes_table do
      row :name
      row :specialist
      row :email
      row :phone_number
      row :hospital_address
      row :hospital_name
      row :clinic_name
      row :clinic_address
      row "Qualification" do |type|
        type.qualification.html_safe
      end
      row "Time Schedule" do |type|
        type.time_schedule.html_safe
      end
      row "Service " do |type|
        type.service.html_safe
      end
      row "Condition Treated" do |type|
        type.condition_treated.html_safe
      end
      row :image do |ad|
        image_tag url_for(ad.image) if ad.image.present?
      end
    end
  end

  index do
    selectable_column
    column :id
    column :name
    column :specialist
    column :email
    column :phone_number
    column :hospital_address
    column :hospital_name
    column :clinic_name
    column :clinic_address
    column "Qualification" do |type|
      type.qualification.html_safe
    end
    column "Time Schedule" do |type|
      type.time_schedule.html_safe
    end
    column "Service" do |type|
      type.service.html_safe
    end
    column "Condition Treated" do |type|
      type.condition_treated.html_safe
    end
    actions
  end
  #
  # permit_params do
  #   permitted = [:name, :specialist, :qualification, :experience, :service, :email, :phone_number, :hospital_address, :hospital_name, :clinic_name, :clinic_address, :time_schedule, :condition_treated, :disease_type_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
