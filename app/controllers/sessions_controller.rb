class SessionsController < ApplicationController
	# skip_before_action :authorize, only: [:login]

    def login
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            token = jwt_encode({ user_id: @user.id })
            render json: { token: token, user: UserSerializer.new(@user) }, status: :accepted
        else
            render json: { errors: ['Invalid username or password'] }, status: :unauthorized
        end
      end

    def initState
        render json: { user: UserSerializer.new(@user) }, status: :ok
    end
end