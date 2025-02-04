class CreateBeatSheetQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :beat_sheet_questions do |t|
      t.text :content, null:false

      t.timestamps
    end
  end
end
