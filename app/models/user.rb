class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  attr_accessor :artist_box

  attr_accessor :music_box

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
