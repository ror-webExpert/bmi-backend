ActiveAdmin.register Disease do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :disadvantage, :solution, :description, :control_problem, :short_description, :disease_type_id
  #

  permit_params :name, :disadvantage, :solution, :description, :control_problem, :short_description, :disease_type_id, :image
  form do |f|
    f.inputs do
      f.input :name
      f.input :short_description
      f.input :disease_type, as: :select, collection: DiseaseType.all.map { |dt| [dt.name, dt.id] }
      f.input :image, as: :file
      f.input :disadvantage, as: :ckeditor
      f.input :solution, as: :ckeditor
      f.input :control_problem, as: :ckeditor
      f.input :description, as: :ckeditor
    end
    f.actions
  end

  show do
    attributes_table do
      row :name
      row :short_description
      row "Disadvantage" do |type|
        type.disadvantage.html_safe
      end
      row "Solution" do |type|
        type.solution.html_safe
      end
      row "Control Problem" do |type|
        type.control_problem.html_safe
      end
      row "Description" do |type|
        type.description.html_safe
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
    column "Disadvantage" do |type|
      type.disadvantage.html_safe
    end
    column "Solution" do |type|
      type.solution.html_safe
    end
    column "Control Problem" do |type|
      type.control_problem.html_safe
    end
    column "Description" do |type|
      type.description.html_safe
    end
    actions
  end
  #
  # permit_params do
  #   permitted = [:name, :disadvantage, :solution, :description, :control_problem, :short_description, :disease_type_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
