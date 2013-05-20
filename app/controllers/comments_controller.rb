class CommentsController < ActionController::Base
  def create
    comment = Comment.new(params[:comment])
    comment.save

    redirect_to Project.find(comment.project_id)
  end

  def index
    @comments = Comment.paginate(page: params[:page], per_page: 15)
  end
end
