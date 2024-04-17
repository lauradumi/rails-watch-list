class Movie < ApplicationRecord
  has_many :bookmarks
  before_destroy :check_for_bookmarks

  private

  def check_for_bookmarks
    if bookmarks.count.positive?
      errors.add('cannot delete')
      return false
    end
  end

  validates :title, uniqueness: true, presence: true
  validates :overview, presence: true
end
