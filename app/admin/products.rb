ActiveAdmin.register Product do
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

permit_params :code, :name, :images, :images_raw, :pinned

form html: {multipart: true} do |f|
  f.inputs do
    f.input :code
    f.input :name
    f.input :images_raw, as: :text
    f.input :pinned, as: :boolean
  end
  actions
end

show do
  attributes_table do
    row :code
    row :name
    row "Images" do 
      ul do 
        product.images.each do |img|
          li do
            image_tag(img, style: 'height:150px;width:auto;')
          end
        end
      end
    end
    row :created_at
    row :pinned

  end
end

end
