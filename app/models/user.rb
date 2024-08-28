class User < ApplicationRecord
  has_one :user_job_search, foreign_key: :job_seeker_id, dependent: :destroy
  has_one :offer, foreign_key: :recruiter_id, dependent: :destroy
  has_many :candidacies_as_job_seeker, class_name: "Candidacy", foreign_key: :job_seeker_id, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :chatrooms

  # Relations pour les swipes
  # has_many :swipes_as_recruiter, class_name: "Swipe", foreign_key: :recruiter_id, dependent: :destroy
  # has_many :rejected_job_seekers, -> { where(swipes: { swipe: 'left' }) }, through: :swipes_as_recruiter, source: :job_seeker
  # has_many :favorited_job_seekers, -> { where(swipes: { swipe: 'right' }) }, through: :swipes_as_recruiter, source: :job_seeker

  validates :name, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: { job_seeker: 0, recruiter: 1 }

  def recruiter?
    role == 'recruiter'
  end

  def job_seeker?
    role == 'job_seeker'
  end

  def find_match(offer)
    Match.find_by(user_job_search: self.user_job_search, offer: offer)
  end
end
