Rails.application.config.to_prepare do
  Decidim::ViewModel.include(ViewModelOverride)
end