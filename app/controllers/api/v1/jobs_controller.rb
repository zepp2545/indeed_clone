module Api
  module V1
    class JobsController < ApplicationController
      def search
        jobs_search = JobsSearch.new(jobs_params)
        jobs = jobs_search.search

        render json: { jobs: jobs }, status: 200
      end

      private

      def jobs_params
        params.permit(JobsSearch::ARRAY_FIELDS)
      end
    end
  end
end