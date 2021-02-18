class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :title, null: false, default: ""
      t.references :company, foreign_key: true, null: false
      t.bigint :prefecture_id, null: false
      t.string :location_detail
      t.text :description
      t.timestamps
    end
  end
end
