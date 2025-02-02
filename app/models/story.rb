class Story < ApplicationRecord
  belongs_to :user

  # Active Hash関連
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
  belongs_to :medium
end
