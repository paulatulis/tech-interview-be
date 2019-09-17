class QuizzesController < ApplicationController
    def index 
        @quizzes = Quiz.all
        render json: @quizzes, each_serializer: QuizSerializer
    end 

    def show 
        @quiz = Quiz.find(params[:id])
    end 

    def create
        @quiz = Quiz.new(quiz_params)

        if @quiz.save
            render json: @quiz, each_serializer: QuizSerializer.new(@quiz), status: :accepted
        else 
            render json: {errors: ['did not save']}, status: :unprocessable_entity
        end 
    end 

    def destroy
        @quiz = Quiz.find(params[:id])
        @quiz.destroy
        redirect_to '/home', :notice => "Your quiz has been deleted"
    end 
private
    def quiz_params
        params.require(:quiz).permit(:title, :description, :score, :subject_id)
    end 

end
