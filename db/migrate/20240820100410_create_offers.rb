class CreateOffers < ActiveRecord::Migration[7.1]
  def change
    create_table :offers do |t|
      t.string :title
      t.string :contrat_type
      t.string :experience_level
      t.decimal :salary
      t.string :study_level
      t.string :sector
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
