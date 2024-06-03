ActiveAdmin.register Vehicle do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :make, :model, :year, :category, :string, :client_id, :photo
  #
  # or
  #
  # permit_params do
  #   permitted = [:make, :model, :year, :category, :string, :client_id, :photo]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  actions :index, :show, :destroy

  index do
    selectable_column
    id_column
    column :client
    column :make
    column :model
    column :year
    column :category
    column :created_at
    actions
  end

  filter :client
  filter :make
  filter :model
  filter :year
  filter :category
  filter :created_at, filters: %i[starts_with ends_with]

  show do
    attributes_table do
      row( :photo ) { | v | avatar_field( v.photo ) }
      row :client
      row :make
      row :model
      row :year
      row :category
      row :created_at
      row :updated_at
    end
  end
  
end
