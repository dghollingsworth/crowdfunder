class CommentsController < ApplicationController
  before_filter :load_commentable

  def index
    @comments = @commentable.comments.all
  end

  def new
    @comment = @commentable.comments.new
  end

  def create
    @comment = @commentable.comments.new
    respond_to do |format|
      if @comment.save
        format.html {redirect_to polymorphic_path(@commentable), notice: "Message added." }
        format.js {}
      else
          format.html {render polymorphic_path}
          format.js {}
      end
  end

  def destroy
    @comment = @commentable.comment.find(params[:id])
    @comment.destroy
    redirect_to polymorphic_path
  end

  private
  def load_commentable
    resource, id = request.path.split('/')[1, 2]
    @commentable = resource.singularize.classify.find(id)
  end
end
