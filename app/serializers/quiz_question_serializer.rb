class QuizQuestionSerializer < ActiveModel::Serializer
  attributes :id, :question_body, :quiz_id
end
