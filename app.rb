# app.rb
require 'rubygems'
require 'bundler/setup'
require 'sinatra'

class Analytics < Sinatra::Base
  get '/' do
    "Hello, world!"
  end

  get '/:name' do
    "Hello, #{params[:name]}!"
  end
end