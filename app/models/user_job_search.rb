class UserJobSearch < ApplicationRecord
 # belongs_to :job_seeker, class_name: "User"
  has_many :matches
  geocoded_by :city
  after_validation :geocode, if: :will_save_change_to_city?
  belongs_to :user
end
