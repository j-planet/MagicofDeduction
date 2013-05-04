class Project < ActiveRecord::Base
  attr_accessible #none
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :title_page_img, presence: true
  validates :content_partial_view_name, presence: true

  default_scope order: 'projects.id ASC'
end
