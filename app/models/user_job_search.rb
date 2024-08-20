class UserJobSearch < ApplicationRecord
  belongs_to :job_seeker, class_name: "User"
  has_many :matches
end
