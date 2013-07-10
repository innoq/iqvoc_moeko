source 'https://rubygems.org'

gem 'rails', '3.2.13'
gem 'iqvoc', '~> 4.1.3'

group :assets do
  gem 'therubyrhino'
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
