class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.find(params[:id])
    if @artist.save
      redirect_to @artist
    else
      render "new"
    end
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    if @artist.save
      redirect_to @artist
    else
      render "edit"
    end
  end
end
