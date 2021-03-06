source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.0.1'
gem 'bootstrap-sass', '3.3.6'
gem 'mysql2', '>= 0.3.18', '< 0.5'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'thor', '0.19.1'
gem 'bcrypt', '3.1.11' # パスワードのハッシュ化に必要
gem 'will_paginate',           '3.1.0'
gem 'bootstrap-will_paginate', '0.0.10'
gem 'carrierwave'      # Itemのサムネイル画像用
gem 'rmagick', '< 2.16.0'

gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'jbuilder', '~> 2.5'
gem "font-awesome-rails"
gem 'rails-i18n', '~> 5.0.0'
gem 'react-rails', '~> 1.0'
# gem 'redis', '~> 3.0'
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development


# プッシュ通知用
gem 'serviceworker-rails'
gem 'webpush'

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'pry-rails'  # rails console(もしくは、rails c)でirbの代わりにpryを使われる
  gem 'pry-doc'    # methodを表示
  gem 'pry-byebug' # デバッグを実施
  gem 'faker'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring',                '1.7.2'
  gem 'spring-watcher-listen', '2.0.0'
  gem "better_errors"
  gem 'binding_of_caller'
  gem 'hirb'       # モデルの出力結果を表形式で表示するGem
  gem 'hirb-unicode'
  gem 'annotate'   # modelのソースの先頭にテーブルのスキーマ情報を付加してくれる
end

group :test do
  gem 'rails-controller-testing', '0.1.1'
  gem 'minitest-reporters',       '1.1.9'
  gem 'guard',                    '2.13.0'
  gem 'guard-minitest',           '2.4.4'
end

group :production do
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
