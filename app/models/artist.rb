class Artist < ActiveRecord::Base
  has_many :collabs
  has_many :musicians, through: :collabs
end
