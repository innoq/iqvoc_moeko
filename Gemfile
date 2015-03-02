source 'https://rubygems.org'
# ruby '1.9.3', :engine => 'jruby', :engine_version => '1.7.9'

gem 'iqvoc', '~> 4.9.0', :git => 'https://github.com/innoq/iqvoc.git'
gem 'warbler', '1.4.5', :require => false
gem 'httpi'
gem 'nokogiri'
gem 'jruby-jars', '1.7.19'

group :development, :test do
  gem 'pry-rails'
  gem 'awesome_print'
end

platforms :ruby do
  gem 'mysql2'
end

platforms :jruby do
  # gem 'activerecord-oracle_enhanced-adapter', '~> 1.5.0'
  gem 'activerecord-jdbcmysql-adapter'
  gem 'therubyrhino'
end
