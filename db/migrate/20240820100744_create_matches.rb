class CreateMatches < ActiveRecord::Migration[7.1]
  def change
    create_table :matches do |t|
      t.references :offer, null: false, foreign_key: true
      t.references :user_job_search, null: false, foreign_key: true

      t.timestamps
    end
  end
end
