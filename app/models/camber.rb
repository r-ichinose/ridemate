class Camber < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'キャンバー' },
    { id: 3, name: 'ダブルキャンバー' },
    { id: 4, name: 'ロッカー' },
    { id: 5, name: 'フラット' },
    { id: 6, name: 'ハイブリッド' }
  ]

  include ActiveHash::Associations
  has_many :boards
end