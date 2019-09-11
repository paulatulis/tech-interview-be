class QuizSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :score, :user_id, :subject_id
  belongs_to :subject
end
