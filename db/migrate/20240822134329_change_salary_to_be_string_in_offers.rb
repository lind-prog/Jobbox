class ChangeSalaryToBeStringInOffers < ActiveRecord::Migration[7.1]
  def change
    change_column :offers, :salary, :string
  end
end
