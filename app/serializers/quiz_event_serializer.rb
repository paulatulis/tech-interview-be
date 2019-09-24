class QuizEventSerializer < ActiveModel::Serializer
  attributes :id, :score
  belongs_to :quiz
end
