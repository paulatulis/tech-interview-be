class Quiz < ApplicationRecord
    has_many :quiz_events
    has_many :users, through: :quiz_events
    has_many :quiz_questions
    belongs_to :subject
    
end
