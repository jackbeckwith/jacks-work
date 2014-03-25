class Notifications < ActionMailer::Base
  default from: "info@collab.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications.new_song.subject
  #
  def new_song(song)
    @greeting = "Hi"
    @id = song.id
    @uploader = song.user.name

    mail to: song.user.email
  end
end
