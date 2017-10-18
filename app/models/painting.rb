class Painting < ApplicationRecord
  belongs_to :owner
  has_many :comments

  validates :title, presence: true

  validate :year_is_in_the_past

  def year_is_in_the_past
    if (year.present? && year > DateTime.now.year)
      errors.add(:year, "must be in the past")
    end
  end
end
