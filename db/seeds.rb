# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
DESCRIPTION = "EARN $100,000- $300,000 ANNUALLY+\n\n

The solar industry is booming, and so are we! Sunpro Solar is currently seeking Solar Sales Specialists with positive energy to ensure that we align our customers with green energy that best meets their individual needs while adding value to their home.\n\n

As a premier renewable energy company, Sunpro Solar is changing how consumers energize their homes and businesses. Solar energy isn't a 'one-size-fits-all' power source. Through our in-house energy assessments and inspections, we can educate our customers on making their homes more energy-efficient while saving as much money as possible on utility bills.\n\n

Due to our stellar customer service and high-quality products, Sunpro Solar is the fastest-growing solar company in the Gulf Coast Region, with offices in 60 cities in 16states. We are expanding across the nation. Join our award-winning sales team & grow with us. There is excellent potential for advancement.\n\n

What's in it for you:\n
An industry-leading high paying commission plan\n
Medical, dental, and vision benefits after only60 days\n
401K with company match after six months\n
A monthly car allowance and fuel card while you're waiting for a company car\n
The tools needed to perform the job, such as company iPad, printer, referral app, shirts, & an entire marketing team on staff\n
An industry-leading, month-long, paid training program\n
Work schedule flexibility\n
A call center that works on generating leads and hefty bonuses for all self-generated leads\n
A complete support team to help ensure your success\n
No cap on earnings\n\n

What you'll do:\n
Become a specialist in renewable energy\n
Network and look for opportunities for engagement to build a client base\n
Educate potential and existing customers on Sunpro Solar's clean energy solutions and ways to save money\n
Confidently discuss options and close contracts\n
Participate in the company led events to generate sales\n\n

What you'll need:\n
At least 2 years of outside sales experience\n
A current, valid driver's license, clean driving record, and reliable transportation\n
A cell phone (preferably a smartphone)\n
Ability to pass a pre-employment background check & drug screen\n
A customer-centric, friendly, and self-motivated attitude\n
Excellent communication skills, both written and orally, with customers and office staff\n
A flexible schedule that allows for some evening & weekend appointments\n
A highly persuasive, self-disciplined & honest work ethic\n

Our current Solar Sales Specialists who have a strong work ethic and are self-motivated, positive, dedicated, and have flexible working schedules make between$100K-300K annually!\n\n

If you want to work with an outstanding team of professionals that believes in family, community, green, renewable energy, then join Sunpro Solar. We are making a positive difference in people's lives and improving the environment, one install at a time.\n\n

If interested, visitwww.gosunpro.com to learn more about Sunpro Solar and The Pro Companies and apply for a position at one of our many locations.\n\n

Founded in 2008, Sunpro Solar is one of the leading providers of rooftop solar in the United States. Sunpro Solar designs, install, and maintain solar panels on residential and commercial properties. Sunpro Solar has a proven history and reputation for providing quality service and is ranked 5th Largest Residential Solar Contractor in the nation.\n\n

The selected candidate must pass a background check.\n\n

Applications will remain active for 60 days."


50.times do |index|
  Company.create(
    name: "会社サンプル#{index}"
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
Feature.create(name: "パート")
Feature.create(name: "経験者優遇")
Feature.create(name: "業務委託")

JOB_TITLE = [
  'ITサポートエンジニア',
  'フロントエンジニア',
  'システムエンジニア',
  'バックエンドエンジニア',
  'Reactエンジニア',
  'Vueエンジニア',
  'Railsエンジニア',
  'Pythonエンジニア',
  'PHPエンジニア',
  'プロジェクトマネージャー',
  'ジュニアプログラマー',
  'インフラエンジニア',
  'プログラミング講師',
  'WordPress Web制作',
]

400.times do |index|
  job = Job.create(
    title: JOB_TITLE[rand(0..(JOB_TITLE.size - 1))],
    company_id: Company.order("RANDOM()").first.id,
    prefecture_id: Prefecture.order("RANDOM()").first.id,
    location_detail: "location_#{index}",
    description: DESCRIPTION
  )

  FeatureJob.create(job_id: job.id, feature_id: Feature.order("RANDOM()").first.id)

end


# order is important otherwise it'll cause error
# Job.destroy_all
# Application.destroy_all
# FeatureJob.destroy_all
# Company.destroy_all
# Feature.destroy_all
# User.destroy_all
# Prefecture.destroy_all




