class QuizQuestionsController < ApplicationController
    def index 
        @quiz_questions = QuizQuestion.all
        render json: @quiz_questions, each_serializer: QuizQuestionSerializer
    end 

    def show 
        @quiz_question = QuizQuestion.find(params[:id])
    end 
end
