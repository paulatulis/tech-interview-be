class UpdateQuizzes < ActiveRecord::Migration[6.0]
  def change
    remove_reference :quizzes, :user
  end
end

