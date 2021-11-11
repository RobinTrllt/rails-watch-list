class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  # bookmark = [movie, list]
  validates :comment, length: { minimum: 6 }
  # A bookmark must be linked to a movie and a list, and the [movie, list] pairings should be unique.
  # validates bookmark, uniqueness: true
end
