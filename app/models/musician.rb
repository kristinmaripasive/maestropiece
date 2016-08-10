class Musician < ActiveRecord::Base
  has_many :musics
  has_many :collabs
  has_many :artists, through: :collabs
end
