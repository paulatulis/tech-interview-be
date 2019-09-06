class SubjectsController < ApplicationController
    def index 
        @subjects = Subject.all
        render json: @subjects, each_serializer: SubjectSerializer
    end 

    def show 
        @subject = Subject.find(params[:id])
    end 
end
