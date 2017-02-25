ActiveAdmin.register Issue do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :title, :magazine_id

  form do |f|
    f.inputs "Issue Details" do
      f.input :magazine_id, :label => 'Magazine', :as => :select, :collection => Magazine.all.map{|m| [m.season.title + " - " + m.title, m.id]}
      f.input :title
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
