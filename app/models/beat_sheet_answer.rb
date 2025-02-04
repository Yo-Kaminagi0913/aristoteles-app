class BeatSheetAnswer < ApplicationRecord
  belongs_to :story
  belongs_to :beat_sheet_question

  validates :content, presence: true
end
