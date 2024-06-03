ActiveAdmin.register ModelYear do

  permit_params :car_model_id, :year

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :year, :car_model_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:year, :car_model_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
