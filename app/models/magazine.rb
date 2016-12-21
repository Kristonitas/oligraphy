class Magazine < ApplicationRecord
  has_many :issues
  belongs_to :season
end
