class QuizEventsController < ApplicationController
    def index 
        @quiz_events = QuizEvent.all
        render json: @quiz_events, each_serializer: QuizEventSerializer
    end 

    def show 
        @quiz_event = QuizEvent.find(params[:id])
    end 

    def create
        @quiz_event = QuizEvent.new(quiz_event_params)

        if @quiz_event.save
            render json: @quiz_event, each_serializer: QuizEventSerializer.new(@quiz_event), status: :accepted
        else 
            render json: {errors: ['did not save']}, status: :unprocessable_entity
        end 
    end 

    private
    def quiz_event_params
        params.require(:quiz_event).permit(:user_id, :quiz_id, :score, :name)
    end 

end
