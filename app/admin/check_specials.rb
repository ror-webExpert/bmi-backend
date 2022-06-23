ActiveAdmin.register CheckSpecial do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :name, :description, :position, :image

  form do |f|
    f.semantic_errors # shows errors on :base
    f.inputs do
      f.input :name
      f.input :title
      f.input :description
      f.input :position
      f.input :image, as: :file
      f.actions
    end
  end

  show do
    attributes_table do
      row :name
      row :title
      row :description
      row :position
      row :image do |ad|
        image_tag Rails.application.routes.url_helpers.rails_blob_url(ad.image, only_path: true), class: 'resize_image'
      end
    end
  end
end
