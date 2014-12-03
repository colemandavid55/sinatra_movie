require 'sinatra'
require 'rest-client'

set :bind, '0.0.0.0'


get '/' do
  erb :index
end

get '/movies' do
  @title = "Movies"
  @url = "http://movies.api.mks.io/"
  @movies = JSON.parse(RestClient.get(@url + "movies"))

  # erb :"movies/movie_template
  erb :"movies/index"
end

get '/movies/:id' do
  @title = "Movie"
  movie_id = params[:id].to_s
  puts params
  @url = "http://movies.api.mks.io/"
  @movie_title_hash = JSON.parse(RestClient.get(@url + "movies/" + movie_id))
  # @movie_title = movie_title_hash.first['title']
  @actors_for_movie = RestClient.get(@url + "movies/" + movie_id + "/actors")
  @actors_movie = JSON.parse(@actors_for_movie)
  "#{@actors}"
  erb :"movies/movie_template"
end

get '/actors' do
  @title = "Actors"
  @url = "http://movies.api.mks.io/"
  @actors = JSON.parse(RestClient.get(@url + "actors"))

  erb :"actors/index"
end

get '/actors/:id' do
  @title = "Actor"
  actor_id = params[:id].to_s
  puts params
  @url = "http://movies.api.mks.io/"
  @actor_name_hash = JSON.parse(RestClient.get(@url + "actors/" + actor_id))
  @movies_for_actor = RestClient.get(@url + "actors/" + actor_id + "/movies")
  @movies_actor = JSON.parse(@movies_for_actor)
  erb :"actors/actor_template"
end

