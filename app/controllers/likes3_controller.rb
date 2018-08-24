class Likes3Controller < ApplicationController
    def like_toggle2
    like = Like3.find_by(user: current_user, meeting_id: params[:id])
    if like.nil?
        Like3.create!(user: current_user, meeting_id: params[:id])
    else
        like.destroy
        
    end
    redirect_to meeting_url params[:id]
        
    end
end
