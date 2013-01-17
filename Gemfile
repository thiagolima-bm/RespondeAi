source 'https://rubygems.org'

gem 'rails', '3.2.9'

gem 'haml'
gem 'haml-rails'

gem 'jquery-rails'
gem 'mathjax-rails'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  gem 'therubyracer', :platforms => :ruby
  gem 'bootstrap-sass-rails', '~> 1.0'

  gem 'uglifier', '>= 1.0.3'
end

group :development, :test do
  gem 'rspec-rails'
  gem 'rspec-html-matchers'
  gem 'factory_girl_rails'
  gem 'shoulda-matchers'
  gem 'simplecov'
  gem 'valid_attribute'
  gem 'sqlite3'
end

group :production do
  gem 'pg'
end