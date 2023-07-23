ActiveAdmin.register DiseaseType do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :symbol, :image


  form do |f|
    f.inputs do
      f.input :name
      f.input :symbol, as: :ckeditor
      f.input :image, as: :file
    end
    f.actions
  end

  show do
    attributes_table do
      row :name
      row "Symbol" do |type|
        type.symbol.html_safe
      end
      row :image do |ad|
        image_tag url_for(ad.image) if ad.image.present?
      end
    end
  end

  # Define the custom column
  index do
    selectable_column
    column :id
    column :name
    column "Symbol" do |type|
      # Replace this line with the logic you want to use to generate the custom value
      type.symbol.html_safe
    end
    actions
  end

  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :symbol]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
