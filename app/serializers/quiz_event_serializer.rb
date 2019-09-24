class QuizEventSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :quiz
end
