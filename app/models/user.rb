class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :user_job_searches_as_job_seeker, class_name: "UserJobSearch", foreign_key: :job_seeker_id
  has_many :offers_as_recruiter, class_name: "Offer", foreign_key: :recruiter_id
  has_many :candidacies_as_job_seeker, class_name: "Candidacy", foreign_key: :job_seeker_id
  has_many :messages

  def last_user_job_search
    user_job_searches_as_job_seeker.last
  end
end
