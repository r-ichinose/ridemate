class Shape < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'ツインチップ' },
    { id: 3, name: 'ディレクショナル' },
    { id: 4, name: 'ディレクショナルツイン' }
  ]

  include ActiveHash::Associations
  has_many :boards
end