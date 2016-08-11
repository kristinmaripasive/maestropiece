class MainController < ApplicationController
  def index
  if :artist_box
    redirect_to new_artist_path
  else
    redirect_to new_musician_path
  end
end
end
