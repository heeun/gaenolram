class ClinicCommentController < ApplicationController
  def create
    comment = ClinicComment.new
    comment.article_id = params[:id]
    comment.message = params[:comment]
    comment.user = params[:user]
    comment.save
    
    redirect_to "/clinics/#{comment.article_id}"
  end


  def delete
    @clinic = Clinic.find(params[:article_id])
    comment = ClinicComment.find(params[:id])
    comment.delete
    redirect_to "/clinics/#{@clinic.id}"
    end
end
