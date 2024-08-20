class Candidacy < ApplicationRecord
  belongs_to :job_seeker, class_name: "User"
  belongs_to :offer
  has_many :chatrooms
end
