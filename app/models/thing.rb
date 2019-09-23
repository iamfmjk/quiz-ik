class Thing < ApplicationRecord
  validates :name, presence: true
  validates :skill, presence: true, length: {minimum: 5}
end
