class FeatureJob < ApplicationRecord
  belongs_to :job
  belongs_to :feature
end
