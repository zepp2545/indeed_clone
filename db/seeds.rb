# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

15.times do |index|
  Company.create(
    name: "Company_#{index}"
  )
end

Feature.create(name: "正社員")
Feature.create(name: "アルバイト")
Feature.create(name: "高収入")
Feature.create(name: "交通支給")
Feature.create(name: "急募")

40.times do |index|
  job = Job.create(
    title: "job_title_#{index}",
    company_id: Company.find(rand(1..15)).id,
    prefecture_id: Prefecture.find(rand(1..47)).id,
    location_detail: "location_#{index}",
    description: "fjslajlfjlsajl;fj;sjaj;f\nsja;jfjsa;lsjlf;lsaj;fljl;safkjsja\n\nslaljfjlsajfs;jajl;fjlslalfjsioeionfsalf\nljsaljflsajlsjaljsla"
  )

  FeatureJob.create(job_id: job.id, feature_id: Feature.find(rand(1..5)).id)

end


