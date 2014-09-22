class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def create
    @artist = Artist.new(params[:artist])
    if @artist.save
      flash[:notice] = "Artist created!"
      redirect_to artists_path
    else
      render('new')
    end
  end

  def new
    @artist = Artist.new
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    if @artist.update(params[:artist])
      flash[:notice] = "Artist name updated!"
      redirect_to artists_path
    else
      render 'edit'
    end
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy
    flash[:notice] = "This artist has been deleted."
    redirect_to artists_path
  end

end
