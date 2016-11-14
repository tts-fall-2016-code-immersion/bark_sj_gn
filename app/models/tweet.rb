class Tweet < ApplicationRecord
  belongs_to :user
  has_many :likes
  validates :message, presence: true, length: { maximum: 140, too_long: "A bark is only 140 characters! Everyone knows this mannn...!"}
  default_scope -> { order(created_at: :desc) }
end
