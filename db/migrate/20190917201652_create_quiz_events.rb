class CreateQuizEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :quiz_events do |t|
      t.references :user
      t.references :quiz
      t.date :date
      t.string :name

      t.timestamps
    end
  end
end
