class MainController < ApplicationController
    def index
binding.pry
      if current_user && current_user.artist_box
        redirect_to new_artist_path
      elsif current_user && current_user.music_box
        binding.pry
        redirect_to new_musician_path
      end
    end
end
