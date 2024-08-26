class ChangeStatusToBeIntegerInCandidacies < ActiveRecord::Migration[7.1]
  def change
    change_column :candidacies, :status, 'integer USING CAST(status AS integer)'
    change_column_default :candidacies, :status, 0
  end
end
