# app.rb

require 'sinatra'
require "sinatra/content_for"
require 'sinatra/flash'
require 'sinatra/redirect_with_flash'
require 'bootstrap-sass'

configure do
  set :scss, {:style => :compressed}
end

get "/" do    
  erb :"index.html", :layout => :"layout.html"
end

get '/master.css' do
  scss :"sass/styles"
end