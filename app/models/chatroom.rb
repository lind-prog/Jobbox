class Chatroom < ApplicationRecord
  belongs_to :candidacy
  has_many :messages
end
