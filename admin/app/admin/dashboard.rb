ActiveAdmin.register_page "" do
  menu priotity: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span I18n.t("active_admin.dashbord_welcome.welcome")
      small I18n.t("active_admin.dashboard_welcome.call_to_action")
    end
  end

  #
  #columns do
  #  columns do
  #    panel "Recent Posts" do
  #      ul do
  #        Post.recent(5).map do |post|
  #          li link_to(post.title, admin_post_path(post) )
  #        end
  #      end
  #    end
  #  end
  #
  #  columns do
  #    panel "Info" do
  #      para "Welcome!"
  #    end
  #  end
  #end
  end
end

