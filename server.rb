require 'sinatra'
require './expense.rb'

expenses = [] 

get '/' do
	erb :index
end

get '/new' do
	erb :new
end

get '/save' do
	erb :save
	redirect to '/'
end

get '/show/:id' do
	id = params[:id]
	erb :show
end

