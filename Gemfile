# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.0'

gem 'bootsnap', '>= 1.1.0', require: false
gem 'clearance'
gem 'coffee-rails', '~> 4.2'
gem 'duktape'
gem 'jbuilder', '~> 2.5'
gem 'mini_magick'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.2'
gem 'sass-rails', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'
gem 'bootstrap', '~> 4.1', '>= 4.1.3'
gem 'font-awesome-sass', '~> 5.5', '>= 5.5.0.1'
gem 'jquery-rails'
gem 'simple_form'


group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'database_cleaner', '~> 1.7'
  gem 'factory_bot_rails', '~> 4.11', '>= 4.11.1'
  gem 'faker'
  gem 'rails-controller-testing', '~> 1.0', '>= 1.0.2'
  gem 'rspec-rails', '~> 3.8', '>= 3.8.1'
  gem "guard"
  gem "guard-rspec"
  gem 'shoulda-matchers', '~> 4.0.0.rc1'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'pry-rails'
  gem 'bullet', '~> 5.9'
  gem 'hirb', '~> 0.7.3'
  gem 'kaminari', '~> 1.1', '>= 1.1.1'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
