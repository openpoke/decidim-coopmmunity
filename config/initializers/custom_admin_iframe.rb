# frozen_string_literal: true

Decidim.menu :admin_menu do |menu|
  menu.add_item :custom_iframe,
                "Estadístiques web",
                Rails.application.routes.url_helpers.admin_iframe_index_path,
                icon_name: "bar-chart-2-line",
                position: 10,
                if: ENV.fetch("PLAUSIBLE_IFRAME", nil).present?
end
