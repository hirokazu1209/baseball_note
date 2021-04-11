class Record < ApplicationRecord
  belongs_to       :user

  validates :practice_time , presence: true
  validates :ball          , presence: true
end
