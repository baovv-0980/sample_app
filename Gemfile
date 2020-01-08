source "https://rubygems.org"
git_source(:github){|repo| "https://github.com/#{repo}.git"}

ruby "2.6.3"

gem "bcrypt", "3.1.12"
gem "bootsnap", ">= 1.4.2", require: false
gem "carrierwave", "1.2.2"
gem "config"
gem "faker", "2.10.0"
gem "i18n-js", ">= 3.0.0.rc8"
gem "jbuilder", "~> 2.7"
gem "mini_magick", "4.9.4"
gem "puma", "~> 4.1"
gem "rails", "~> 6.0.1"
gem "rails-i18n"
gem "sass-rails", ">= 6"
gem "turbolinks", "~> 5"
gem "webpacker", "~> 4.0"
gem "will_paginate", "3.1.7"
gem "will_paginate-bootstrap4"

group :development, :test do
  gem "byebug", platforms: %i(mri mingw x64_mingw)
end

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console", ">= 3.3.0"
end

group :test do
  gem "capybara", ">= 2.15"
  gem "selenium-webdriver"
  gem "webdrivers"
end

group :development, :test do
  gem "rubocop", "~> 0.74.0", require: false
  gem "rubocop-rails", "~> 2.3.2", require: false
end

group :production do
  gem "fog", "1.42"
  gem "pg"
end

group :development, :test do
  gem "sqlite3"
end
