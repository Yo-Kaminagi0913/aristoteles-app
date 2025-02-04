class Medium < ActiveHash::Base
  self.data = [
    { id: 0, name: '---'},
    { id: 1, name: '小説' },
    { id: 2, name: '映画' },
    { id: 3, name: 'TVドラマ' }
  ]

  include ActiveHash::Associations
  has_many :stories

end