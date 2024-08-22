class Offer < ApplicationRecord
  belongs_to :recruiter, class_name: "User", foreign_key: 'recruiter_id'
  has_many :candidacies, dependent: :destroy
  has_many :matches, dependent: :destroy
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
