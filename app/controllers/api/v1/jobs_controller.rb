module Api
  module V1
    class JobsController < ApplicationController
      before_action :wait

      def search
        jobs_search = JobsSearch.new(jobs_params)
        jobs = jobs_search.search
                          .page(params[:page] ||= 1)
                          .per(10)
                          .preload(:features, :company, :prefecture)
        render json: jobs, each_serializer: JobSerializer
      end

      private

      def jobs_params
        params.permit(JobsSearch::ARRAY_FIELDS)
      end

      def wait
        sleep 1
      end
    end
  end
end