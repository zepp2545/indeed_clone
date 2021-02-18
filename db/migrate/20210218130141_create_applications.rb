class CreateApplications < ActiveRecord::Migration[6.0]
  def change
    create_table :applications do |t|
      t.references :user, foreign_key: true, null: false
      t.references :job, foreign_key: true, null: false
      t.timestamps
    end
  end
end
