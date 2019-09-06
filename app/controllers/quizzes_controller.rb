class QuizzesController < ApplicationController
    def index 
        @quizzes = Quiz.all
        render json: @quizzes, each_serializer: QuizSerializer
    end 

    def show 
        @quiz = Quiz.find(params[:id])
    end 

    def destroy
        @quiz = Quiz.find(params[:id])
        @quiz.destroy
        redirect_to '/home', :notice => "Your quiz has been deleted"
    end 

end
