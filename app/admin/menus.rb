ActiveAdmin.register Menu do

  permit_params :position, :name, :price, :discount_price, :category_id, :image, :gradients

  form do |f|
    f.semantic_errors # shows errors on :base
    f.inputs do
      f.input :category
      f.input :position
      f.input :name
      f.input :price
      f.input :gradients
      f.input :discount_price
      f.input :image, as: :file
      f.actions
    end
  end

  show do
    attributes_table do
      row :category
      row :position
      row :name
      row :gradients
      row :image do |ad|
        image_tag Rails.application.routes.url_helpers.rails_blob_url(ad.image, only_path: true), class: 'resize_image'
      end
    end
  end
end
