ActiveAdmin.register Season do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :year

  sidebar "Details", only: [:show, :edit] do
    ul do
      li link_to "Magazines",    admin_season_magazines_path(season)
      # li link_to "Images",    admin_apartment_images_path(apartment)
    end
  end
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
