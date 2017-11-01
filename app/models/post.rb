class Post < ApplicationRecord
  
  #ordered_by_title scope
  scope :ordered_by_title, -> { where(ordered_by_title: true) }
  
  #ordered_by_reverse_created_at scope
  scope :ordered_by_reverse_created_at, -> { where(ordered_by_reverse_created_at: true) }
  
  belongs_to :topic
  belongs_to :user
  has_many :comments, dependent: :destroy
  
  default_scope { order('created_at DESC') }
  
  validates :title, length: { minimum: 5 }, presence: true
  validates :body, length: { minimum: 20 }, presence: true
  validates :topic, presence: true
  validates :user, presence: true
end
