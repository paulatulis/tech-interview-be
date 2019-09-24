class AddScoreToQuizEvent < ActiveRecord::Migration[6.0]
  def change
    add_column :quiz_events, :score, :integer
    remove_column :quizzes, :score, :integer
  end
end
