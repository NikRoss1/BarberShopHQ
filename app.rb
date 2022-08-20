#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/activerecord'

set :database, {adapter: "sqlite3", database: "barbershop.db"}

class Client < ActiveRecord::Base
end

class Barber < ActiveRecord::Base 

end





get '/' do
	@barbers = Barber.all # выводит сверху вниз

	# @barbers = Barber.order "created_at DESC" # выводит снизу в верх
	erb :index
end