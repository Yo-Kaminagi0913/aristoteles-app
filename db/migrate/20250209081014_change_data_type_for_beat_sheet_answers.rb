class ChangeDataTypeForBeatSheetAnswers < ActiveRecord::Migration[7.0]
  def change
    change_column :beat_sheet_answers, :percentage, :integer
    change_column :beat_sheet_answers, :lows_and_highs, :integer
  end
end
