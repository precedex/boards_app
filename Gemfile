source 'https://rubygems.org'

ruby '3.1.2'
gem "rails",           "7.0.3"
gem "sprockets-rails", "3.4.2"
gem "importmap-rails", "1.1.0"
gem "turbo-rails",     "1.1.1"
gem "stimulus-rails",  "1.0.4"
gem "sassc-rails",     "2.1.2"
gem "jbuilder",        "2.11.5"
gem "puma",            "5.6.4"
gem "bootsnap",        "1.12.0", require: false
gem "bootstrap-sass",  "3.4.1"
gem "friendly_id"

group :development, :test do
  gem "sqlite3", "1.4.2"
  gem "debug",   "1.5.0", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem "web-console", "4.2.0"
end

group :test do
  gem "capybara",           "3.37.1"
  gem "selenium-webdriver", "4.2.0"
  gem "webdrivers",         "5.0.0"
end

group :production do
  gem "pg", "1.3.5"
end
  