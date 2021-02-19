class JobSerializer < ActiveModel::Serializer
  attributes :id, :title, :location_detail, :description
  
  has_many :features, serializer: FeatureSerializer
  belongs_to :company, serializer: CompanySerializer
  belongs_to :prefecture, serializer: PrefectureSerializer
end
