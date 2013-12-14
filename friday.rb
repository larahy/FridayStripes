require 'sinatra'
require 'sinatra/partial' 
set :partial_template_engine, :erb


get '/' do
  erb :home
end

get '/friday' do
  erb :index
end