class MoviesController < ApplicationController

	def index
    @movies = Movie.all
    @movie = Movie.new
    end

    def new
    @movie = Movie.new
    end

    def create
    @movie = Movie.new(movie_params)
    @movie.save
    redirect_to movies_path
    end

    def show
    @movie = Movie.find(params[:id])
    end

    def edit
    @movie = Movie.find(params[:id])
    end

    def update
    @movie = Movie.find(params[:id])
    @movie = @movie.update(movie_params)
    redirect_to movies_path
    end

    def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to movies_path
    end


    private
    def movie_params
      params.require(:movie).permit(:name, :director, :hero)
    end


end