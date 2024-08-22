class Match < ApplicationRecord
  belongs_to :offer
  belongs_to :user_job_search

  def scoring
    score = 0
    score += 1 if offer.experience_level == user_job_search.experience_level
    score += 1 if offer.contrat_type == user_job_search.contrat_type
    score += 1 if offer.study_level == user_job_search.study_level
    score += 1 if offer.sector == user_job_search.sector
    score += 1 if offer.salary == user_job_search.salary
    score += 1 if Offer.near(user_job_search.city, 10).include?(offer)
    score
  end
end
