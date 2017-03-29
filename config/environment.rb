require 'bundler'
Bundler.require
require 'RestClient'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
require_all 'lib'

client = Adapters::TrailsApi.new
client.seed_database
