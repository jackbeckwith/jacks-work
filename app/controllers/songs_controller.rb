class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(songs_params)
    if @song.save
      redirect_to songs_path
    else
      render "new"
    end
  end

  def edit
    @song = Song.find(params[:id])
  end

  def show
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    if @song.update_attributes(songs_params)
      redirect_to song_path(@song.id)
    else
      render "edit"
    end
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to songs_path
  end

  def upload
  end

  private

  def songs_params
    params.require(:song).permit(:title, :genre, :duration, :favorites, :user_id)
  end

end
