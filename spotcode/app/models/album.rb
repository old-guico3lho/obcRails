class Album < ApplicationRecord
  has_many :songs
  belongs_to :category
  belongs_to :artist
  validates :title, presence: true
  validates :date, presence: true
  has_one_attached :cover
end
