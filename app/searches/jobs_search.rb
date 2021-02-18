class JobsSearch
  include ActiveModel::Model
  include ActiveModel::Attributes

  ARRAY_FIELDS = %i[
    keyword
    location
  ].freeze

  ARRAY_FIELDS.each {|f| attribute f, :string }

  def search
    jobs = Job.all
    jobs = Job.where('title LIKE ? OR description LIKE ?', keyword, keyword) if keyword.present?
    jobs = jobs.where('location_detail LIKE ? OR prefecture_id = ?', location, Prefecture.find_by(name: location)&.id) if location.present?
  end

end