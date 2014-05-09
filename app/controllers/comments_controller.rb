class CommentsController < ApplicationController
  before_filter :load_commentable

  # def index
  #   @comments = @commentable.comments.all
  # end

  def new
    @comment = @commentable.comments.new
  end

  def create
    @comment = @commentable.comments.build(comment_params)
    
    @comments = @commentable.comments
    
    respond_to do |format|
      if @comment.save
        format.html {redirect_to polymorphic_path(@commentable), notice: "Message added." }
        format.js {}
      else
          format.html {render polymorphic_path}
          format.js {}
      end
    end
  end

  def destroy
    @comment = @commentable.comment.find(params[:id])
    @comment.destroy
    redirect_to polymorphic_path
  end

  private
  def comment_params
    params.require(:comment).permit(:message, :commentable_id, :commentable_type)
  end

  
end
