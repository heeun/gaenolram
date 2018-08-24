class MeetingCommentController < ApplicationController
  def create
    comment = MeetingComment.new
    comment.article_id = params[:id]
    comment.message = params[:comment]
    comment.user = params[:user]
    comment.save
    
    redirect_to "/meetings/#{comment.article_id}"
  end

  def delete
    @meeting = Meeting.find(params[:article_id])
    comment = MeetingComment.find(params[:id])
    comment.delete
    redirect_to "/meetings/#{@meeting.id}"
    end

end
