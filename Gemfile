source 'https://rubygems.org'

gem 'iqvoc', '~> 4.2.0', :git => 'https://github.com/innoq/iqvoc.git'
gem 'warbler', '~> 1.3.8', :require => false
gem 'rubyzip', '< 1.0.0'

platforms :jruby do
  gem 'jruby-jars', '1.7.4'
  gem 'therubyrhino'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller', :platforms => :ruby
end

group :production do
  gem 'mysql2', :platform => :ruby
  # gem 'activerecord-jdbcmysql-adapter', :platform => :jruby
  gem 'activerecord-oracle_enhanced-adapter', '~> 1.5.0', :platform => :jruby
end
