ActiveAdmin.register CarMake do
  permit_params :car_category_id, :name

  index do
    selectable_column
    id_column
    column :name
    column :car_category
    column :created_at
    column :updated_at
    actions
  end

  filter :name
  filter :car_category
  filter :created_at
  filter :updated_at
end
