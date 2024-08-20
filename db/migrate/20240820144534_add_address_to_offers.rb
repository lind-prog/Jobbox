class AddAddressToOffers < ActiveRecord::Migration[7.1]
  def change
    add_column :offers, :address, :string
  end
end
