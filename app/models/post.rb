class Post < ApplicationRecord
  has_many :comments
  @posts = Post.all
  
  def spam
    @posts.first.title = "SPAM"
      if @posts % 5 == 0
        @posts.title = "SPAM"
      end
  end
  
end