class AddCoordinatesToUserJobSearches < ActiveRecord::Migration[7.1]
  def change
    add_column :user_job_searches, :latitude, :float
    add_column :user_job_searches, :longitude, :float
  end
end
