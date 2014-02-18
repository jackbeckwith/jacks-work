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

  private

  def songs_params
    params.require(:song).permit(:title, :genre, :duration, :favorites, :user_id)
  end

  def edit
  end

  def upload
  end

  def show
  end
end
