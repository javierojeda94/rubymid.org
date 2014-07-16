# app.rb

require 'sinatra'
require 'sinatra/activerecord'
require "sinatra/content_for"
require 'sinatra/flash'
require 'sinatra/redirect_with_flash'
require 'bootstrap-sass'
require 'font-awesome-sass'
require './environments'
enable :sessions

=begin
configure do
  set :scss, {:style => :compressed}
end
=end


fonts_dir = "../fonts"

get "/" do    
  erb :"index.html", :layout => :"layout.html"
end

get '/master.css' do
  scss :"sass/styles"
end