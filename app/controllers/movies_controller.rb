class MoviesController < ApplicationController

  def index
    @list_of_movies = Movie.all
    render({ :template => "movie_templates/index.html.erb"})
  end

  def movie_details
    # the_id = params.fetch("an_id")

    # @the_director = Director.where({:id => the_id}).first
    # @filmography = Movie.where({:director_id => the_id})
    # render({ :template => "director_templates/show.html.erb"})

    the_id = params.fetch("an_id")

    @the_movie = Movie.where({:id => the_id}).first
    render({ :template => "movie_templates/show.html.erb"})
  end

end