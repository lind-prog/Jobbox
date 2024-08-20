class Candidacy < ApplicationRecord
  belongs_to :user_job_search, class_name: "User"
  belongs_to :recruiter, class_name: "Offer"
  has_many :chatrooms
end
