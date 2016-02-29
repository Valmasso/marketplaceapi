source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.2'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

#Api gems
gem 'active_model_serializers', git: 'git@github.com:rails-api/active_model_serializers.git', branch: '0-8-stable'

gem "devise"

gem 'sabisu_rails'#, github: "IcaliaLabs/sabisu-rails"
gem 'compass-rails'#, '~> 2.0'
gem 'furatto'#, git: 'git@github.com:IcaliaLabs/furatto-rails.git'
gem 'font-awesome-rails'
gem 'simple_form'
gem 'kaminari'
gem 'delayed_job_active_record'

group :development do
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
end

group :test do
  gem "rspec-rails", "~> 2.14"
  gem "shoulda-matchers", "~> 3.1"
  gem "database_cleaner"
  gem "email_spec"
end

group :development, :test do
  gem "factory_girl_rails"
  gem 'ffaker'
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end
