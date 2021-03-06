class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :songs, :dependent => :destroy
  has_many :followers, :dependent => :destroy
  validates :name, presence: true
  passwordFormatValidation = /\d+/
  validates :password, format: {with: passwordFormatValidation} 
end