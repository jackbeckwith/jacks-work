class AddAudioToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :audio, :mp3
  end
end
