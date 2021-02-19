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

prefectures = [
  {id: 1, name: '北海道'}, {id: 2, name: '青森県'}, {id: 3, name: '岩手県'},
  {id: 4, name: '宮城県'}, {id: 5, name: '秋田県'}, {id: 6, name: '山形県'},
  {id: 7, name: '福島県'}, {id: 8, name: '茨城県'}, {id: 9, name: '栃木県'},
  {id: 10, name: '群馬県'}, {id: 11, name: '埼玉県'}, {id: 12, name: '千葉県'},
  {id: 13, name: '東京都'}, {id: 14, name: '神奈川県'}, {id: 15, name: '新潟県'},
  {id: 16, name: '富山県'}, {id: 17, name: '石川県'}, {id: 18, name: '福井県'},
  {id: 19, name: '山梨県'}, {id: 20, name: '長野県'}, {id: 21, name: '岐阜県'},
  {id: 22, name: '静岡県'}, {id: 23, name: '愛知県'}, {id: 24, name: '三重県'},
  {id: 25, name: '滋賀県'}, {id: 26, name: '京都府'}, {id: 27, name: '大阪府'},
  {id: 28, name: '兵庫県'}, {id: 29, name: '奈良県'}, {id: 30, name: '和歌山県'},
  {id: 31, name: '鳥取県'}, {id: 32, name: '島根県'}, {id: 33, name: '岡山県'},
  {id: 34, name: '広島県'}, {id: 35, name: '山口県'}, {id: 36, name: '徳島県'},
  {id: 37, name: '香川県'}, {id: 38, name: '愛媛県'}, {id: 39, name: '高知県'},
  {id: 40, name: '福岡県'}, {id: 41, name: '佐賀県'}, {id: 42, name: '長崎県'},
  {id: 43, name: '熊本県'}, {id: 44, name: '大分県'}, {id: 45, name: '宮崎県'},
  {id: 46, name: '鹿児島県'}, {id: 47, name: '沖縄県'}
]

prefectures.each do |pref|
  Prefecture.create(name: pref[:name])
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


