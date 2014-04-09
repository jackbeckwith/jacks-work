class AddAudioToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :audio, :string
    t.has_attached_file :audio
  end
end
