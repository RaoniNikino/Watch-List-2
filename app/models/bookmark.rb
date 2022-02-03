class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, presence: true, length: { minimum: 6 }
  validates_associated :movie
  validates_associated :list
  validates :movie, uniqueness: { scope: :list }
end
