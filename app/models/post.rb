class Post < ApplicationRecord
  has_many :comments
  @posts = Post.all
  
end