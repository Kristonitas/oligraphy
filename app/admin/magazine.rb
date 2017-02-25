ActiveAdmin.register Magazine do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :title, :style, :season_id

  form do |f|
    f.inputs "Magazine Details" do
      f.input :season_id, :label => 'Season', :as => :select, :collection => Season.all.map{|s| [s.title, s.id]}
      f.input :title
      f.input :style
    end
  end

  belongs_to :season, optional: true
  # navigation_menu :season
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
