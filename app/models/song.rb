class Song < ActiveRecord::Base
  belongs_to :user
  validates :title, presence: true, length: {maximum: 100}
  validates :genre, presence: true
  has_attached_file :audio,
  :url => ':s3_domain_url',
  :path => '/:class/:attachment/:id_partition/:style/:filename'

  validates_attachment_presence :audio
  validates_attachment_content_type :audio, :content_type => ['application/mp3', 'application/x-mp3', 'audio/mpeg', 'audio/mp3'],
  	:message => "Your uploaded file must be of type .mp3."
end