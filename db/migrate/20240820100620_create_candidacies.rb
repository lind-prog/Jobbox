class CreateCandidacies < ActiveRecord::Migration[7.1]
  def change
    create_table :candidacies do |t|
      t.integer :match_level
      t.string :status
      t.references :user, null: false, foreign_key: true
      t.references :offer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
