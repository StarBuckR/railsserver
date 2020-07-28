class NotificationsController < ApplicationController
    skip_before_action :verify_authenticity_token
    protect_from_forgery except: [:create, :get_all]

    def create
        notification = Notification.new(notification_params)
        
        if notification.save
            render json: notification, status: :ok
        else
            render json: { error: notification.errors.full_messages }, status: 402
        end
    end

    def get_all
        name = params[:machine_name]

        @notifications = Notification.where(machine_name: name).all
        render :show, status: :ok
    end

    def delete
        name = params[:machine_name]
        notifications = Notification.where(machine_name: name).all
        index = params[:index].to_i
        
        if notifications[index].message == params[:message]
            notifications[index].delete()
            render json: { message: "Successful"}, status: :ok
        else
            render json: { error: "Error", index: params[:index], message: params[:message] }, status: 402
        end

    end

    def notification_params
        params.permit(:machine_name, :message)
    end
end