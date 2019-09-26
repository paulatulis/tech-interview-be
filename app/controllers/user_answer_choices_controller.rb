class UserAnswerChoicesController < ApplicationController
    def index 
        @user_answer_choices = UserAnswerChoice.all
        render json: @user_answer_choices, each_serializer: UserAnswerChoiceSerializer
    end 

    def show 
        @user_answer_choice = UserAnswerChoice.find(params[:id])
    end 

    def create
        @user_answer_choice = UserAnswerChoice.new(user_answer_choice_params)

        if @user_answer_choice.save
            render json: @user_answer_choice, each_serializer: UserAnswerChoiceSerializer.new(@user_answer_choice), status: :accepted
        else 
            render json: {errors: ['did not save']}, status: :unprocessable_entity
        end 
    end 

    def update 
        @user_answer_choice = UserAnswerChoice.find(params[:id])
        if @user_answer_choice.update(user_answer_choice_params)
            render json: @user, each_serializer: UserSerializer.new(@user), status: :accepted
        else 
            render json: {errors: ['did not save']}, status: :declined

        end 
    end 

    private 

    def user_answer_choice_params
        params.require(:user_answer_choice).permit(:letter, :user_id)
    end 
end
