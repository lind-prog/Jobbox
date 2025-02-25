class Candidacy < ApplicationRecord
  belongs_to :job_seeker, class_name: "User"
  belongs_to :offer
  has_one :chatroom
  enum :status, { pending: 0, validated: 1, declined: 2 }
  # validates :match_level, presence: true

  def translated_status
    case status
    when "pending"
      "En cours"
    when "validated"
      "Validée"
    when "declined"
      "Déclinée"
    else
      "En cours"
    end
  end
end
