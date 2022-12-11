class SessionsController < ApplicationController

    def create
        user = User.find_by_email(session_params[:email])

        if user && user.authenticate(session_params[:password])
            token = issue_token(user)
            render json: { user: UserSerializer.new(user), jwt: token }
        else
    end

    def show
    end

    private
    def session_params
        params.require(:session).permit(:email, :password)
    end
end
