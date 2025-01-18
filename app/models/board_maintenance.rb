class BoardMaintenance < ApplicationRecord
  belongs_to :board

  validates :maintenance_date, presence: true
  validates :content, presence: true
end
