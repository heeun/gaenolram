class Likes4Controller < ApplicationController
    def like_toggle4
    like = Like4.find_by(user: current_user, clinic_id: params[:id])
    if like.nil?
        Like4.create!(user: current_user, clinic_id: params[:id])
    else
        like.destroy
        
    end
    redirect_to clinic_url params[:id]
        
    end
end
