class CommentBroadcastJob < ApplictionJob
  
  queue_as :default
  
  def perfomr(comment)
    ActionCable.server.broadcast "blogs_#{comment.blog.id}_channel", comment: render_comment(comment)
  end
  
  private
  
  def render_comment(comment)
    CommentsController.render partial: 'comments/comment', locals: {comment: comment}
  end
  
end