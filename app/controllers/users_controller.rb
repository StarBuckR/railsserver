class UsersController < ApplicationController
    protect_from_forgery :except => [:create]
    def create
        user = User.new(user_params)
        if user.save
            render json: user, status: 200
        else
            render json: {msg: "HATA"}, status: 402
        end
    end

    def index
        u = User.last

        render json: { msg: url_for(u.image), user: u }, status: 200
    end

    def user_params
        params.permit(:image, :ip_adress, :note, :machine_name, :username)
    end
end