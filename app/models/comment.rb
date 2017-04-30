class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :blog
  
  validates :content, presence: true, length: {minimum: 10, maximimum: 1000}
  
  #adding comment to db later 
  after_create_commit { CommentBroadcastJob.perform_later(self)}
end
