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
        jobs_count = jobs_search.count
        
        render json: {
          jobs: ActiveModel::Serializer::CollectionSerializer.new(jobs, each_serializer: JobSerializer),
          count: jobs_count
        }
      end

      def show
        job = Job.find(params[:id])
        render json: job, serializer: JobSerializer
      end

      private

      def jobs_params
        params.permit(*JobsSearch::ARRAY_FIELDS)
      end

      def wait
        sleep 1
      end
    end
  end
end