class Season < ApplicationRecord
  has_many :magazines

  def title
    return "#{year}/#{year+1}"
  end
end
