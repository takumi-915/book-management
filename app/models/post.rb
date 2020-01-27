class Post < ApplicationRecord
  validates :title, :content, presence: true
  def self.search(search)
    if search
      Post.where('title LIKE(?)', "%#{search}%")
    else
      Post.all
    end
  end
end
