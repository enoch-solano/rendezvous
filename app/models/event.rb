class Event < ApplicationRecord
  belongs_to :user
  # has_many :users, through: participant

  validates :title, presence: true
  validates :description, presence: true
  validates :time, presence: true
  validates :location, presence: true
end
