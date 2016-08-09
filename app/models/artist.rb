class Artist < ActiveRecord::Base
  has_many :arts
  has_many :collabs
  has_many :musicians, through: :collabs
end
