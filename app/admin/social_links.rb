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
    f.inputs :name, as: :select, collection: proc { SocialLink.names }, input_html: { class: 'default-select' }
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
