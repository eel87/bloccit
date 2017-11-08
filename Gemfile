source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = '#{repo_name}/#{repo_name}' unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Bundle edge rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.2'

group :production do
  #Use pg as the production database for Active Record
  gem 'pg'
  gem 'rails_12factor'
end

group :development do
  # Use sqlite3 as the development database for Active Record
  gem 'sqlite3'
end

# Use puma as the app server
gem 'puma', '~> 3.0'
# Use SCCS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for Javascript assets
gem 'uglifier', '>= 1.3.0'


# Use jquery as the Javascript Library
gem 'jquery-rails'
# Turbolinks make navigating your web page faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'

gem 'thor', '0.20.0'

group :development do
  gem 'listen', '~> 3.0.5'
  gem 'pry-rails'
end

group :development, :test do
  gem 'rspec-rails', '~> 3.0'
  gem 'rails-controller-testing'
  gem 'shoulda'
  gem 'factory_girl_rails', '~> 4.0'
end

gem 'bootstrap-sass'

# Used for encrypting passwords
gem 'bcrypt'

gem 'figaro', '1.0'