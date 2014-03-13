class Song < ActiveRecord::Base
  belongs_to :user
  validates :title, presence: true, length: {maximum: 100}
  validates :genre, presence: true
end