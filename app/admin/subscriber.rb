ActiveAdmin.register Subscriber do
  menu priority: 3

  permit_params :email
end
