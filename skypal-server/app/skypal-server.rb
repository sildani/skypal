require 'sinatra/base'
require 'sinatra/activerecord'

require "./app/hi"

class SkypalServer < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  set :database_file, "../config/database.yml"

  use Hi
end