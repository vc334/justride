class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :motorcycle

  validates :start_date, :end_date, presence: true, allow_blank: false
end
