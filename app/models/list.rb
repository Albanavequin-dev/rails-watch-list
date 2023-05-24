class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks, source: :movie

  validates :name, presence: true, uniqueness: true
end
