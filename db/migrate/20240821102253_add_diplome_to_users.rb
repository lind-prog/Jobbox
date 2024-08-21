class AddDiplomeToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :diplome, :text
  end
end
