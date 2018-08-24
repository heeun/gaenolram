class CafeCommentController < ApplicationController 
  def create
    comment = CafeComment.new
    comment.article_id = params[:id]
    comment.message = params[:comment]
    comment.user = params[:user]
    comment.save
    
    redirect_to "/caves/#{comment.article_id}"
  end

  def delete
    @cafe = Cafe.find(params[:article_id])
    comment = CafeComment.find(params[:id])
    comment.delete
    redirect_to "/caves/#{@cafe.id}"
  end
end
