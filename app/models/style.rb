class Style < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'フリースタイル' },
    { id: 3, name: 'ジブ・グラトリ' },
    { id: 4, name: 'フリーライド' },
  ]

  include ActiveHash::Associations
  has_many :boards
end