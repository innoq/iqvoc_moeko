source 'https://rubygems.org'

gem 'iqvoc', '~> 4.2.0', :git => 'https://github.com/innoq/iqvoc.git'
gem 'warbler', '~> 1.4.0.beta2',
  :git => 'https://github.com/jruby/warbler.git',
  :require => false

platforms :jruby do
  gem 'jruby-jars', '1.7.8', :require => false
  gem 'therubyrhino'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller', :platform => :ruby
end

group :production do
  # gem 'mysql2', :platform => :ruby
  # gem 'activerecord-jdbcmysql-adapter', :platform => :jruby
  gem 'activerecord-oracle_enhanced-adapter', '~> 1.5.0', :platform => :jruby
end
