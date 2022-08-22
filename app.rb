#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/activerecord'

set :database, {adapter: "sqlite3", database: "barbershop.db"}

class Client < ActiveRecord::Base
end

class Barber < ActiveRecord::Base 
end

before do
	@barbers = Barber.all # выводит сверху вниз

	# @barbers = Barber.order "created_at DESC" # выводит снизу в верх
end

get '/' do
	erb :index
end

get '/visit' do
	erb :visit
end

post '/visit' do

	c = Client.new params[:client]
	c.save

	erb "<h2>спасибо вы записанны!</h2>"
end

get '/showusers' do
  erb :showusers
end
