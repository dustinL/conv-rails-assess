class ShowsController < ApplicationController

  def create
    @artist = Artist.find(params[:artist_id])
    @show = Show.new(params[:show])
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

end
