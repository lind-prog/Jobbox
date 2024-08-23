class AddDescriptionToOffers < ActiveRecord::Migration[7.1]
  def change
    add_column :offers, :description, :text
  end
end
