class CreateQuizQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :quiz_questions do |t|
      t.string :question_body
      t.references :quiz


      t.timestamps
    end
  end
end
