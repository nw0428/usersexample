class Painting < ApplicationRecord
  belongs_to :owner
  has_many :comments

  validates :owner, :title, :artist, presence: true
end
