class Issue < ApplicationRecord
  has_many :articles
  belongs_to :magazine
end
