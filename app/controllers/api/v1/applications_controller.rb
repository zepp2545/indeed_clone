module Api
  module V1
    class ApplicationsController < ApplicationController

      def create
        ActiveRecord::Base.transaction do
          user = User.find_by(email: params[:email]) || User.create!(user_params)
          application = Application.new(user_id: user.id, job_id: params[:job_id])

          if applications.save!
            render json: {}, status: :no_content
          else
            render json: { error: "応募に失敗しました。" }, status: :internal_server_error
          end
        end  
      end

      private

      def user_params
        params.permit[:username, :email, :tel]
      end

    end
  end
end