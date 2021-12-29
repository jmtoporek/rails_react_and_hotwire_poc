class Player < ApplicationRecord
  validates :name, length: { minimum: 2 }
  validates :name, uniqueness: true
end
