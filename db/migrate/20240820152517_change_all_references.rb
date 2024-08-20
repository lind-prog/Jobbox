class ChangeAllReferences < ActiveRecord::Migration[7.1]
  def change
    remove_reference :user_job_searches, :user, index: true, foreign_key: true
    add_reference :user_job_searches, :job_seeker, foreign_key: { to_table: :users }

    remove_reference :candidacies, :user, index: true, foreign_key: true
    add_reference :candidacies, :job_seeker, foreign_key: { to_table: :users }

    remove_reference :offers, :user, index: true, foreign_key: true
    add_reference :offers, :recruiter, foreign_key: { to_table: :users }
  end
end
