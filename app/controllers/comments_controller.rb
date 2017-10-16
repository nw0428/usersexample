class CommentsController < ApplicationController
  def new
    @painting = Painting.find(params[:painting_id])
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    painting = Painting.find(params[:painting_id])
    @comment.painting = painting

    respond_to do |format|
      if @comment.save
        format.html { redirect_to painting, notice: 'Comment was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end


  private
    def comment_params
      params.require(:comment).permit(:title, :comment)
    end
end
