ActiveAdmin.register User do

  permit_params :email, :first_name, :last_name, :avatar_file_name, :avatar_content_type, :avatar_file_size, :avatar_updated_at, :provider, :uid, :department, :gender , :phone

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
