class CreateBeatSheetAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :beat_sheet_answers do |t|
      t.text :content, null: false
      t.text :percentage, null: false
      t.text :lows_and_highs, null: false
      t.references :story, null: false, foreign_key: true
      t.references :beat_sheet_question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
