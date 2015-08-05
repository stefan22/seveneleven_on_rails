class Review < ActiveRecord::Base
  belongs_to :seven
  validates :rating, inclusion: (1..5)
end
