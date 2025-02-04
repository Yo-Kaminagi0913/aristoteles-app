class BeatSheetQuestion < ApplicationRecord
  has_many :beat_sheet_answers, dependent: :destroy

  validates :content, presence: true
end
