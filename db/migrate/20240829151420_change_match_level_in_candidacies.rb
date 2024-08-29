class ChangeMatchLevelInCandidacies < ActiveRecord::Migration[7.1]
  def change
    change_column :candidacies, :match_level, :string
  end
end
