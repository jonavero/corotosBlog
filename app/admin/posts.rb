ActiveAdmin.register Post do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :body, :category_id, :label_id

  form do |f|
    f.inputs do
      f.input :title, class: "form-input px-4 py-3 rounded-full"
      f.input :body
      f.label :category_id, "Categoria: "
      f.collection_select :category_id, Category.all, :id,:description, class: "form-select px-4 py-3 rounded-full"
      f.label :label_id, "Etiqueta: "
      f.collection_select :label_id, Label.all, :id,:description
    end
    f.actions
  end

  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :body, :category_id, :label_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
