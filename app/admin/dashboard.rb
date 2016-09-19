ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel "Recent Subscribers" do
          ul do
            Subscriber.last(2).map do |s|
              li link_to(s.email, admin_subscriber_path(s))
            end
          end
        end
      end
    end
  end
end
