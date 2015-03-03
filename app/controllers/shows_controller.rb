class ShowsController < ApplicationController
  before_action :authorize

  def create
    @artist = Artist.find(params[:artist_id])
    @show = Show.new(params[:show])
    @artist.shows << @show
    if @show.save
      flash[:notice] = "New show created!"
      redirect_to artist_path(@artist)
    else
      render 'new'
    end
  end

  def new
    @artist = Artist.find(params[:artist_id])
    @show = Show.new
    render 'new'
  end

  def edit
    @show = Show.find(params[:id])
  end

  def update
    @show = Show.find(params[:id])
    if @show.update(params[:show])
      flash[:notice] = "Show name updated!"
      redirect_to shows_path
    else
      render 'edit'
    end
  end

  def destroy
    @show = Show.find(params[:id])
    @show.destroy
    flash[:notice] = "This show has been deleted."
    redirect_to shows_path
  end

end
