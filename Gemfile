source 'https://rubygems.org'

ruby '2.3.4'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'
# Use Postgres for the database
gem 'pg', '>= 0.21.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
# Use the Sass form of Bootstrap
gem 'bootstrap-sass', '~> 3.3.4'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
# Use Nokogiri for processing XML and HTML
gem 'nokogiri'
# Use HTTParty for network connections
gem 'httparty'
# Dalli and Memcachier for Memcached connections
gem 'dalli'
gem 'memcachier'
# New Relic
gem 'newrelic_rpm', '>=3.6.8'
# Fast production server
gem 'puma'

group :production do
  gem 'rails_12factor'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :development do
  gem 'RedCloth'
end

group :test do
  gem 'test-unit'
  gem 'ruby-prof'
  gem 'rails-perftest'
end
