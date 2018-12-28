require 'bundler'

Bundler.require

Activerecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/development.sqlite"
)
require_all 'app'