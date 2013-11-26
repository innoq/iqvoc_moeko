source 'https://rubygems.org'

gem 'iqvoc', '~> 4.2.0', :git => 'https://github.com/innoq/iqvoc.git'
gem 'warbler', '~> 1.3.6', :require => false

group :assets do
  gem 'therubyrhino'
  gem 'uglifier', '~> 2.1.2'
  gem 'sass-rails'
end

platforms :jruby do
  gem 'jruby-jars', '1.7.4'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller', :platforms => :ruby
end

group :production do
  gem 'activerecord-oracle_enhanced-adapter'
end
