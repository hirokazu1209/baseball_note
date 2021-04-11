class Article < ApplicationRecord

  belongs_to :user
  has_one_attached :image

  validates :post, presence: true

end
