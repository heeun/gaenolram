class Likes2Controller < ApplicationController
    def like_toggle3
    like = Like2.find_by(user: current_user, cafe_id: params[:id])
    if like.nil?
        Like2.create!(user: current_user, cafe_id: params[:id])
    else
        like.destroy
        
    end
    redirect_to cafe_url params[:id]
        
    end
end

