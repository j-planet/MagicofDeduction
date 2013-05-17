class CommentsController < ActionController::Base
  def create
    comment = Comment.new(params[:comment])
    comment.Save()

    redirect_to Project.find(comment.project_id)

  end
end
