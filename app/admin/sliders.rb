ActiveAdmin.register Slider do

  permit_params :position, :name, :image

  form do |f|
    f.semantic_errors # shows errors on :base
    f.inputs do
      f.input :position
      f.input :name
      f.input :image, as: :file
      f.actions
    end
  end

  show do
    attributes_table do
      row :position
      row :name
      row :image do |ad|
        image_tag Rails.application.routes.url_helpers.rails_blob_url(ad.image, only_path: true), class: 'resize_image'
      end
    end
    active_admin_comments
  end

end
