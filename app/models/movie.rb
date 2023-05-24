class Movie < ApplicationRecord
  has_many :bookmarks

  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true

  # before_destroy :check_bookmarks_presence

  # private

  # def check_bookmarks_presence
  #   if bookmarks.any?
  #     raise ActiveRecord::InvalidForeignKey.new("Cannot delete movie with associated bookmarks")
  #   end
  # end
end
