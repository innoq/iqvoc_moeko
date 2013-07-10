require 'iqvoc/environments/development'

if Iqvoc::Moeko.const_defined?(:Application)
  Iqvoc::Moeko::Application.configure do
    # Settings specified here will take precedence over those in config/environment.rb
    Iqvoc::Environments.setup_development(config)
  end
end
