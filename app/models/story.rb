class Story < ApplicationRecord
  belongs_to :user

  # Active Hash関連
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
  belongs_to :medium

  validates :title, presence: { message: "を入力してください" }
  validates :genre_id, :medium_id, numericality: { other_than: 0 , message: "を選択してください"}
end
