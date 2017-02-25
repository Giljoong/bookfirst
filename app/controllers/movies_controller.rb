class MoviesController < ApplicationController
  def show
      @doc= Movie.find(params[:id])
  end
  def create
     @doc= Movie.new(title: params[:title], director: params[:director], rank: params[:rank])
     if @doc.save
         redirect_to '/movies/index'
     else
         redirect_to '/movies/new'
     end
  end 
  def new
  end
  def index
      @docs= Movie.all
  end
  def edit
     @movie= Movie.find(params[:id])
  end
  def update
    @doc= Movie.find(params[:id])
    if @doc.update(title: params[:title], director: params[:director], rank: params[:rank], avatar: params[:avatar])
      redirect_to '/movies/index'
    else
      redirect_to '/movies/#{params[:id]}/edit'
    end
  end
  def destroy
    @doc= Movie.find(params[:id])
    @doc.destroy
    redirect_to '/movies/index'
  end
  
end
