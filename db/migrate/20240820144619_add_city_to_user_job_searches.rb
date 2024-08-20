class AddCityToUserJobSearches < ActiveRecord::Migration[7.1]
  def change
    add_column :user_job_searches, :city, :string
  end
end
