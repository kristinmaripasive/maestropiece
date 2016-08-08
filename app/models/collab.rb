class Collab < ActiveRecord::Base
  belongs_to :artist
  belongs_to :musician
end
