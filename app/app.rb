ENV["RACK_ENV"] ||= "development"

require 'sinatra/base'
require_relative 'data_mapper_setup'
require 'pry'
require 'sinatra/flash'

class Chitter < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/sign_up' do
    User.create(email: params[:email], password: params[:password], name: params[:name], username: params[:username])
  end



  run! if app_file == $0

end
