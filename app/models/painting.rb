class Painting < ApplicationRecord
  belongs_to :owner
  has_many :comments
end
