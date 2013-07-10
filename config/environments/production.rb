require 'iqvoc/environments/production'

if Iqvoc::Moeko.const_defined?(:Application)
  Iqvoc::Moeko::Application.configure do
    # Settings specified here will take precedence over those in config/environment.rb
    Iqvoc::Environments.setup_production(config)
  end
end
