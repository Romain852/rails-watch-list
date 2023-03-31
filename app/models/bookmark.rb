class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, length: { minimum: 6, too_short: 'Your comment needs to be longer' }
  validates :movie_id, uniqueness: { scope: :list_id }
end
