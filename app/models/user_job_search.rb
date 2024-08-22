class UserJobSearch < ApplicationRecord
  belongs_to :job_seeker, class_name: "User", foreign_key: :job_seeker_id
  has_many :matches, dependent: :destroy
  geocoded_by :city
  after_validation :geocode, if: :will_save_change_to_city?
  validates :title, :contrat_type, :address, :experience_level, :salary, :study_level, :sector, presence: true
end
