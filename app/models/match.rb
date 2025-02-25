class Match < ApplicationRecord
  belongs_to :offer
  belongs_to :user_job_search
  after_create :set_level

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
  #faire une methode qui va def le scoring
  #set_level match.find(1)
  #prendre l'instance avec un self.scoring if == 6 = legendaire
  # if == 5 = epiqu, if == 4 = rare, if == 4 = commun ect..
  #self.update (nomdecolumn =  legendaire)

  def set_level
    levels = {
      6 => "Légendaire",
      5 => "Epique",
      4 => "Rare"
    }
    self.update(level: levels[self.scoring] || "Commun")
  end
end
