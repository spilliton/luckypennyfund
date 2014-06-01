ActiveAdmin.register Recipient do
  index do
    column :first_name
    column :last_name
    column :email
    column :creator
    column :created_at
    column :updated_at
    actions
  end

  form do |f|
    f.inputs do
      f.input :first_name
      f.input :last_name
      f.input :email
      f.input :creator
    end
    f.actions
  end
  permit_params :first_name, :last_name, :email, :creator_id

  remove_filter :recipients_family_members

end
