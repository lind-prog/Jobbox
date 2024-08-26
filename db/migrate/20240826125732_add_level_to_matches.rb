class AddLevelToMatches < ActiveRecord::Migration[7.1]
  def change
    add_column :matches, :level, :string
  end
end
