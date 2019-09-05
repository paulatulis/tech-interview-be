class CreateUserAnswerChoices < ActiveRecord::Migration[5.2]
  def change
    create_table :user_answer_choices do |t|
      t.string :letter
      t.references :user

      t.timestamps
    end
  end
end
