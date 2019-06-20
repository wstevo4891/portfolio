source 'https://rubygems.org'

ruby '2.3.3'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.3'

# Use Bootstrap V4 for CSS Framework
gem 'bootstrap', '~> 4.3.1'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.1.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'select2-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
gem 'jquery-turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# User carrierwave for image uploads
gem 'carrierwave', '~> 1.3.1'
gem 'rmagick'
gem 'fog-aws'

# Use Devise for admin auth
gem 'devise'

# Manage ENV variables with Figaro
gem 'figaro'

# Use Font-Awesome for icons
gem 'font-awesome-rails'

# Redcarpet and CodeRay for Markdown blogging and syntax highlighting
gem 'redcarpet'
gem 'coderay'

gem 'mini_racer'

group :development do
	gem 'awesome_print', require: 'ap'
	gem 'better_errors'
	gem 'quiet_assets'
	# gem 'meta_request'
  # gem 'flamegraph'
  # gem 'stackprof'
  # gem 'rack-mini-profiler'
  # gem 'guard', require: false
  # gem 'guard-compass', require: false
  # gem 'guard-livereload', require: false
  # gem 'rack-livereload'
  # gem 'rb-fsevent', require: false
end

group :development, :test do
  gem 'sqlite3'
  gem 'byebug'
  gem 'rspec-rails', '~> 3.0'
  gem 'factory_girl_rails', '~> 4.5'
  gem 'pry-rescue'
  gem 'pry-stack_explorer'
  gem 'pry-rails'
  gem 'binding_of_caller'
  gem 'web-console', '~> 2.0'
  gem 'spring'
  gem 'spring-commands-rspec'
end

group :test do
  gem 'faker'
  gem 'capybara'
  gem 'shoulda-matchers'
  gem 'email_spec'  
  gem 'guard-rspec'
  gem 'database_cleaner'
end

group :production do
# Use PostGreSQL as the production database
  gem 'pg'
  gem 'rails_12factor'
  gem 'puma'
end
