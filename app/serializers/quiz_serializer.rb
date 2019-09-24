class QuizSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :subject_id
  belongs_to :subject
  has_many :quiz_questions
  has_many :quiz_events
end
