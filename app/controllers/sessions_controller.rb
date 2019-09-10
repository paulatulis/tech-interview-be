class SessionsController < ApplicationController
	# skip_before_action :authorize, only: [:login]

    def login
        @user = User.find_by(username: params[:session][:username].downcase)
        if @user && @user.authenticate(params[:session][:password])
            token = jwt_encode({ user_id: @user.id })
            # byebug
            render json: { token: token, user: UserSerializer.new(@user) }, status: :accepted
        else
            render json: { errors: ['Invalid username or password'] }, status: :unauthorized
        end
      end

    def initState

        @user = User.find(current_user.id)
        render json: @user, each_serializer: UserSerializer
    end
end