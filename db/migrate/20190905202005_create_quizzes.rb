class CreateQuizzes < ActiveRecord::Migration[5.2]
  def change
    create_table :quizzes do |t|
      t.string :title
      t.string :description
      t.integer :score
      t.references :user
      t.references :subject

      t.timestamps
    end
  end
end
