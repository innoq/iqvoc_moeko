source 'https://rubygems.org'
# ruby '1.9.3', :engine => 'jruby', :engine_version => '1.7.9'

gem 'iqvoc', '~> 4.3.0', :git => 'https://github.com/innoq/iqvoc.git'
gem 'warbler', '1.4.0', :require => false
gem 'httpi'
gem 'nokogiri'

group :development, :test do
  gem 'pry-rails'
  gem 'awesome_print'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller', :platform => :ruby
end

platforms :ruby do
  gem 'mysql2'
end

platforms :jruby do
  gem 'activerecord-oracle_enhanced-adapter', '~> 1.5.0'
  # gem 'activerecord-jdbcmysql-adapter'
  gem 'therubyrhino'
end
