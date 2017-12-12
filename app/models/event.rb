class Event < ApplicationRecord
  belongs_to :user

  validates :date, presence: true
  validates :title, presence: true
  validates :description, presence: true
end
