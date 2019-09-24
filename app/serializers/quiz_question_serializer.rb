class QuizQuestionSerializer < ActiveModel::Serializer
  attributes :id, :question_body, :quiz_id
  belongs_to :quiz

end
