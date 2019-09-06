class AnswerSerializer < ActiveModel::Serializer
  attributes :id, :answer_body, :correct, :quiz_question_id
end
