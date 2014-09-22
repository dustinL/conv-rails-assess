class ShowsController < ApplicationController

  def create
    @artist = Artist.find(params[:artist_id])
    @show = Show.new(params[:show])
    if @show.save
      flash[:notice] = "New show created!"
      redirect_to("/artists/#{@artist.id}")
    else
      render('shows/new.html.erb')
    end
  end

  def new
    @artist = Artist.find(params[:artist_id])
    @show = Show.new
    render('shows/new.html.erb')
  end

end
