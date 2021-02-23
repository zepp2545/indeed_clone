class JobsSearch
  include ActiveModel::Model
  include ActiveModel::Attributes

  ARRAY_FIELDS = %i[
    keyword
    location
    page
  ].freeze

  ARRAY_FIELDS.each {|f| attribute f, :string }

  def search
    jobs = Job.all
    jobs = Job.where('title LIKE ? OR description LIKE ?', "%#{keyword}%", "%#{keyword}%") if keyword.present?
    jobs = jobs.joins(:prefecture).where('jobs.location_detail LIKE ? OR prefectures.name LIKE ?', "%#{location}%", "#{location}%") if location.present?
    jobs
  end

  def count
    search.size
  end

end