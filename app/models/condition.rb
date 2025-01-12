class Condition < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '新しい'},
    { id: 3, name: '中古'},
  ]

  include ActiveHash::Associations
  has_many :boards
end