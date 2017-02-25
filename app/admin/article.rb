ActiveAdmin.register Article do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :title, :content, :issue_id, :order

  form do |f|
    f.inputs "Article Details" do
      f.input :issue_id, :label => 'Issue', :as => :select, :collection => Issue.all.map{|i| [i.magazine.season.title + " - " + i.magazine.title + " - " + i.title, i.id]}
      f.input :title
      f.input :content
      f.input :order
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
