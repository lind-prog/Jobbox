class AddUserReferenceToUserJobSearches < ActiveRecord::Migration[7.1]
  def change
    add_reference :user_job_searches, :user, foreign_key: true
  end
end
