ActiveAdmin.register SocialLink do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :url, :position
  #
  # or
  form do |f|
    f.inputs :name, as: :select, collection: {"twitter"=>"twitter", "facebook"=>"facebook", "instagram"=>"instagram", "google_plus"=>"google-plus", "linkedin"=>"linkedin"}, input_html: { class: 'select' }
    f.inputs :url
    f.inputs :position
    f.actions
  end
  #
  # permit_params do
  #   permitted = [:name, :url, :position]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
