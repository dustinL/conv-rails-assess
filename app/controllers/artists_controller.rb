class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
    render('artists/index.html.erb')
  end

  def create
    @artist = Artist.new(params[:artist])
    if @artist.save
      flash[:notice] = "Artist created!"
      redirect_to('/artists')
    else
      render('artists/new.html.erb')
    end
  end

  def new
    @artist = Artist.new
    render('artists/new.html.erb')
  end

  def show
    @artist = Artist.find(params[:id])
    render('artists/show.html.erb')
  end

  def edit
    @artist = Artist.find(params[:id])
    render('artists/edit.html.erb')
  end

  def update
    @artist = Artist.find(params[:id])
    if @artist.update(params[:artist])
      flash[:notice] = "Artist name updated!"
      redirect_to('/artists')
    else
      render('/artists/edit.html.erb')
    end
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy
    flash[:notice] = "This artist has been deleted."
    redirect_to('/artists')
  end

end
