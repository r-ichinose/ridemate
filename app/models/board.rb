class Board < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  has_many :board_maintenances, dependent: :destroy
  
  belongs_to_active_hash :condition
  belongs_to_active_hash :style
  belongs_to_active_hash :shape
  belongs_to_active_hash :camber

  validates :model, :brand, :condition_id, :style_id, :shape_id, :camber_id, :purchase, :length, :price, presence: true
  validates :model, :brand, length: { maximum: 255 }
  validates :condition_id, :style_id, :shape_id, :camber_id,
            numericality: { only_integer: true, other_than: 1, message: 'must be selected' }
  validates :purchase, comparison: { less_than_or_equal_to: Date.today }
  validates :length, numericality: { only_integer: true, greater_than: 0 }
  validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
