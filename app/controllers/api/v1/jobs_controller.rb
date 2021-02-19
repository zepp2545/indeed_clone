module Api
  module V1
    class JobsController < ApplicationController
      def search
        jobs_search = JobsSearch.new(jobs_params)
        jobs = jobs_search.search.preload(:features, :company, :prefecture)
        render json: jobs, each_serializer: JobSerializer
      end

      private

      def jobs_params
        params.permit(JobsSearch::ARRAY_FIELDS)
      end
    end
  end
end