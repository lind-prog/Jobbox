class Offer < ApplicationRecord
  belongs_to :recruiter, class_name: "User"
  has_many :candidacies
  has_many :matches
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
