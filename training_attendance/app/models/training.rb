class Training < ApplicationRecord
  validates :date, presence: true,
                   length: { minimum: 5 }
  validates :location, presence: true,
                    length: { minimum: 10 }
end
