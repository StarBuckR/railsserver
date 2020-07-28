require "base64"
class UsersController < ApplicationController
    protect_from_forgery :except => [:create]
    def create
        user = User.create(user_params)

        user.base64 = params[:base64]
        if user.save
            render json: user, status: 200
        else
            render json: {msg: "HATA"}, status: 402
        end
    end

    def index
        @users = User.all
        # command = 'curl -s ' + image + ' | base64'
        # i = Open3.capture3(command)
        #render json: { base64: Base64.encode64(@users.image) }, status: :ok
        render :show, status: :ok
    end
    
    def user_params
        params.permit(:ip_address, :note, :machine_name, :username)
    end
end