class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.string :answer_body
      t.boolean :correct
      t.references :quiz_question

      t.timestamps
    end
  end
end
