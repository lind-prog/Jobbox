class ChangeSalaryToBeStringInUserJobSearches < ActiveRecord::Migration[7.1]
  def change
    change_column :user_job_searches, :salary, :string
  end
end
