class MainController < ApplicationController
    def index
      if current_user
    
        if  current_user.artist_box
          redirect_to new_artist_path
        elsif  current_user.music_box
          redirect_to new_musician_path
        end
      end
    end
end
