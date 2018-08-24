class PensionCommentController < ApplicationController
  def create
    comment = PensionComment.new
    comment.article_id = params[:id]
    comment.message = params[:comment]
    comment.user = params[:user]
    comment.save
    redirect_to "/pensions/#{comment.article_id}"
  end

  def delete
    #@pension = Pension.find(params[:pension_id])
    @pension = Pension.find(params[:article_id])
    comment = PensionComment.find(params[:id])
    comment.delete
    redirect_to "/pensions/#{@pension.id}"
    end
end
