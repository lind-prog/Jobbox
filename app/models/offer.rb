class Offer < ApplicationRecord
  belongs_to :recruiter, class_name: "User"
  has_many :candidacies
  has_many :matches
end
