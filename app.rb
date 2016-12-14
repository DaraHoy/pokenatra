require 'active_record'
require 'ffaker'
require 'sinatra'
require 'sinatra/reloader'

## Connect to the database
require_relative 'db/connection'

# Load models
require_relative 'models/pokemon'
require_relative 'models/trainers'

get '/pokemons' do
  @pokemons = Pokemon.all
  erb :'pokemons/index'
end

get '/pokemons/:id' do
  @pokemon = Pokemon.find(params[:id])
  erb :'/pokemons/show'
end
