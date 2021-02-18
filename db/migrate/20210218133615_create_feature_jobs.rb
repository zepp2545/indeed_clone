class CreateFeatureJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :feature_jobs do |t|
      t.references :job, foreign_key: true, null: false
      t.references :feature, foreign_key: true, null: false
      t.timestamps 
    end
  end
end
