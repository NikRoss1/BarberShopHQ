#encoding: utf-8
require 'rubygems'
require 'sinatra'
require "sinatra/activerecord"
require "sinatra/activerecord/rake"


set :database, {adapter: "sqlite3", database: "barbershop.db"}

class Client < ActiveRecord::Base
end

get '/' do
	erb "Hello! <a href=\"https://github.com/bootstrap-ruby/sinatra-bootstrap\">Original</a> pattern has been modified for <a href=\"http://rubyschool.us/\">Ruby School</a>"			
end