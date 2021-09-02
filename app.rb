# app.rb
require 'rubygems'
require 'bundler/setup'
require 'sinatra'

configure {
  set :server, :puma
}

class Analytics < Sinatra::Base
  get '/' do
    "Hello, world!"
  end

  get '/:name' do
    "Hello, #{params[:name]}!"
  end

  run! if app_file == $0
end