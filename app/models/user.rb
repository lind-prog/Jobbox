class User < ApplicationRecord
  # Relations avec d'autres modèles
  has_one :user_job_search, foreign_key: :job_seeker_id
  has_many :candidacies_as_job_seeker, class_name: "Candidacy", foreign_key: :job_seeker_id
  has_many :messages

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum :role, { job_seeker: 0, recruiter: 1 }
end
