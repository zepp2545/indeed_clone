class Feature < ApplicationRecord
  has_many :feature_jobs
  has_many :jobs, through: :feature_jobs
end
