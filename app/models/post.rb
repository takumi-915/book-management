class Post < ApplicationRecord
  validates :title, :content, presence: true
  belongs_to :user,optional: true
  has_many :likes, dependent: :destroy
  has_many :like_users, through: :likes, source: :user
  def self.search(search)
    if search
      Post.where('title LIKE(?)', "%#{search}%")
    else
      Post.all
    end
  end
end
