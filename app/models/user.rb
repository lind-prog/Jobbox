class User < ApplicationRecord
  # Relations avec d'autres modèles
  has_one :user_job_search, foreign_key: :job_seeker_id, dependent: :destroy
  has_one :offer, foreign_key: :recruiter_id, dependent: :destroy
  has_many :candidacies_as_job_seeker, class_name: "Candidacy", foreign_key: :job_seeker_id, dependent: :destroy
  has_many :messages, dependent: :destroy
  validates :name, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum :role, { job_seeker: 0, recruiter: 1 }
end
