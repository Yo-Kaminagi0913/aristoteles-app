class Genre < ActiveHash::Base
  self.data = [
    { id: 0, name: '---'},
    { id: 1, name: 'ファンタジー' },
    { id: 2, name: 'SF' },
    { id: 3, name: 'ミステリー/サスペンス' },
    { id: 4, name: 'クライム/ノワール' },
    { id: 5, name: 'ホラー' },
    { id: 6, name: 'アクション' },
    { id: 7, name: '冒険' },
    { id: 8, name: 'ラブストーリー' },
    { id: 9, name: '青春・学園' },
    { id: 10, name: '歴史' },
    { id: 11, name: '戦争・ミリタリー' },
    { id: 12, name: 'コメディ' },
    { id: 13, name: 'ドラマ' },
    { id: 14, name: 'スーパーヒーロー' },
    { id: 15, name: '社会派・政治' }
  ]

  include ActiveHash::Associations
  has_many :stories

end