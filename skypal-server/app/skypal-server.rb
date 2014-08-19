require 'sinatra/base'
require 'sinatra/activerecord'

# any files required from the app itself need to be required relative to
# config.ru because when rackup is run it runs that file and basically all that
# file does is load SkypalServer and call run
require "./app/hi"

class SkypalServer < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  set :database_file, "../config/database.yml"

  # add the classes representing the routes here
  use Hi
end