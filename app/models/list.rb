class List < ApplicationRecord
  has_many :bookmarks

  has_many :movies, through: :lists
end
