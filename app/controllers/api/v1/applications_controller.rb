module Api
  module V1
    class ApplicationsController < ApplicationController
      before_action :wait

      def create
        ActiveRecord::Base.transaction do
          user = User.find_by(email: params[:email]) || User.create!(username: params[:username], email: params[:email], tel: params[:tel])

          return render json: {}, status: :not_acceptable if Application.where(user_id: user.id, job_id: params[:job_id])

          application = Application.new(user_id: user.id, job_id: params[:job_id])

          if application.save!
            render json: {}, status: :no_content
          else
            render json: { error: "応募に失敗しました。" }, status: :internal_server_error
          end
        end  
      end

      private

      def wait
        sleep 1
      end

    end
  end
end