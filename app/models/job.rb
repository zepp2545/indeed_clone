class Job < ApplicationRecord
  has_many :feature_jobs
  has_many :features, through: :feature_jobs
  belongs_to :company
  belongs_to :prefecture
end
