class Comment < ActiveRecord::Base
  attr_accessible :name, :email, :content, :project_id
  belongs_to :project

  validates :project_id, presence: true
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :content, presence: true, length: { maximum: 1000 }

  default_scope order: 'comments.created_at DESC'
end
