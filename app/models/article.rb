class Article < ApplicationRecord

  belongs_to :user
  has_one_attached :image
  has_many :comments

  validates :post, presence: true

end
