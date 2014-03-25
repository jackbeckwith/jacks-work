class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def new
    if user_signed_in?
      @song = Song.new
    else
      redirect_to new_user_session_path
    end
  end

  def create
    @song = Song.new(songs_params)
    if @song.user_id != current_user.id
      redirect_to root_path
    else
      if @song.save
        Notifications.new_song(@song).deliver
        redirect_to songs_path
      else
        render 'new'
      end
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
    if @song.user_id != current_user.id
      render 'edit'
    else
      if @song.update_attributes(songs_params)
        redirect_to song_path(@song.id)
      else
        render "edit"
      end
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
