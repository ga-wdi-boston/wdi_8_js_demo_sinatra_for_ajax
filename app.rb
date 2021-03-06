require 'sinatra'
require 'sinatra/reloader'
require 'json'

get '/' do
  erb :home
end

get '/hi' do
  "Hello World!"
end

get '/all_params.json' do
  content_type :json
  params.to_json
end

get '/hi.json' do
  content_type :json
  { word1: "Hello", word2: "World" }.to_json
end

post '/combine' do
  content_type :json
  result = "#{params[:word1]} #{params[:word2]}, from AJAX!"
    { combined: result }.to_json
end
