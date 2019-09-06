class AnswersController < ApplicationController
    def index 
        @answers = Answer.all 
        render json: @answers, each_serializer: AnswerSerializer
    end 

    def show 
        @answer = Answer.find(params[:id])
    end 


end
