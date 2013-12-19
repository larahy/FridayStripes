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
	icecream = Photo.new("/larabarrr/icecream.png")
	beverly = Photo.new("/larabarrr/beverly.png")
	birthday = Photo.new("/larabarrr/birthday_stripes.png")
	walken = Photo.new("/larabarrr/walken_pinstripe.png")
	water = Photo.new("/larabarrr/water.png")
	susanna = Photo.new("/larabarrr/susanna.png")
	catdog = Photo.new("/larabarrr/catdog.png")
	australia = Photo.new("/larabarrr/australia.png")
	july = Photo.new("/larabarrr/july.png")
	powder = Photo.new("/larabarrr/powder_room.png")
	guiness = Photo.new("/larabarrr/guiness.png")
	hills = Photo.new("/larabarrr/hills.png")
	luggage = Photo.new("/larabarrr/luggage.png")
	inukshuk = Photo.new("/larabarrr/inukshuk.png")

	images.insert(0, sailors, aero, attitude, bath, cafe, rainbow, zebra, bikes, jules, croatia, sixties, tennis, picasso, matisse, icecream, beverly, birthday, walken, water, susanna, catdog, australia, july, powder, guiness, hills, luggage, inukshuk)
	images
end

get '/' do
	@image = random_images.shuffle
  erb :photo
end


get '/wip' do
  erb :wip
end

get '/home' do
  erb :home
end

