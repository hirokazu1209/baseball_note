class Record < ApplicationRecord
  belongs_to       :user

  validates :practice_time , presence: true
  validates :ball          , presence: true

  def self.chart_date
    order(result_date: :asc).pluck('result_date', 'result').to_h
  end
end
