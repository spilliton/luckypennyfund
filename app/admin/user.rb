ActiveAdmin.register User do
  index do
    column :first_name
    column :last_name
    column :email
    column :created_at
    column :updated_at
    column :last_sign_in_at
    actions
  end

  form do |f|
    f.inputs do
      f.input :first_name
      f.input :last_name
      f.input :email
      f.input :organization
      f.input :address1
      f.input :address2
      f.input :locality
      f.input :state
      f.input :zip
      f.input :country
      f.input :gender
      f.input :dob
      f.input :admin
      f.input :superuser
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

  permit_params :first_name, :last_name, :email, :organization, :address1, :address2, :locality, :state, :zip, :country, :gender, :dob, :password
  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end

  remove_filter :users_families
  
end
