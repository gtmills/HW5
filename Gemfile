source 'http://rubygems.org'

gem 'rails', '3.2.13'
gem 'multi_json', '~>1.8.1'
gem 'themoviedb'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

# for Heroku deployment - as described in Ap. A of ELLS book
group :development, :test do
  gem 'sqlite3'
#  gem 'ruby-debug19', :require => 'ruby-debug'
  gem 'database_cleaner'
  gem 'capybara'
  gem 'simplecov', :require => false
  gem 'launchy'
  gem 'rspec-rails'
end
group :test do
  gem 'cucumber-rails'
  gem 'cucumber-rails-training-wheels'
  end
group :production do
  gem 'pg'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'therubyracer'              
  gem 'sass-rails', "  ~> 3.2.3"
  gem 'coffee-rails', "~> 3.2.1"
  gem 'uglifier', '>=1.0.3'
end

gem 'jquery-rails'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
gem 'haml'