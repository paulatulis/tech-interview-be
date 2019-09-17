class QuizSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :score, :subject_id
  belongs_to :subject
end
