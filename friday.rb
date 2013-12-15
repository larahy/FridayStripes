require 'sinatra'
require 'sinatra/partial' 
set :partial_template_engine, :erb

require_relative './lib/photo'

def random_images
	images = Array.new()
	sailors = Photo.new("/larabarrr/sailors.png")
	aero = Photo.new("/larabarrr/aeronautical.png")
	attitude = Photo.new("/larabarrr/attitude.png")
	bath = Photo.new("/larabarrr/bath_socks.png")
	cafe = Photo.new("/larabarrr/cafe_de_la_marie.png")
	rainbow = Photo.new("/larabarrr/rainbow.png")
	zebra = Photo.new("/larabarrr/zebra.png")
	jules = Photo.new("/larabarrr/jules_et_jim.png")
	bikes = Photo.new("/larabarrr/racing_stripes.png")
	boat = Photo.new("/larabarrr/inukshuk.png")
	matisse = Photo.new("/larabarrr/matisse.png")
	picasso = Photo.new("/larabarrr/picasso.png")
	tennis = Photo.new("/larabarrr/tennis.png")
	sixties = Photo.new("/larabarrr/60s.png")
	croatia = Photo.new("/larabarrr/croatia.png")
	bike = Photo.new("/larabarrr/biker_babe.png")

	images.insert(0, sailors, aero, attitude, bath, cafe, rainbow, zebra, bikes, jules, bike, croatia, sixties, tennis, picasso, matisse, boat)
	images
end

get '/' do
  erb :home
end


get '/friday' do
  erb :index
end

get '/photos' do
  @image = random_images.shuffle
  erb :photo
end

