class CreateUserJobSearches < ActiveRecord::Migration[7.1]
  def change
    create_table :user_job_searches do |t|
      t.string :title
      t.string :contrat_type
      t.string :experience_level
      t.decimal :salary
      t.string :study_level
      t.string :sector

      t.timestamps
    end
  end
end
