source 'https://rubygems.org'

ruby "2.1.0"

gem 'rails', '~> 4.1.0'
gem 'puma'                          # Server
gem 'pg'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'
gem 'high_voltage'
gem 'simple_form'
gem 'devise'                        # User Auth
gem 'pundit'                        # User Permissions
gem 'kaminari'                      # Pagination

gem 'haml'
gem 'uglifier', '>= 1.3.0'
gem 'sass-rails', '~> 4.0.0'
gem "actionmailer_inline_css"       # In-Line Css Converter for Emails
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'foundation-rails'

group :development do
  gem 'pry-rails'                  # Better Rails Console
  gem 'better_errors'              # Better Errors
  gem "binding_of_caller"          #  - For Better Errors
  gem 'quiet_assets'               # Hide Asset Requests in Log
end

group :development, :test do
  gem 'factory_girl_rails'
  gem 'faker'
end

group :test do
  gem 'rspec-rails'
  gem 'shoulda'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'vcr', "~> 2.6"
  gem 'faraday'
end

group :production do
  gem 'therubyracer'
  gem 'newrelic_rpm'
  gem 'rails_12factor'
end