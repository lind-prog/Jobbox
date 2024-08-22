class Message < ApplicationRecord
  belongs_to :user
  belongs_to :chatroom
  validates :content, presence: true, length: { minimum: 500, message: 'Votre message doit contenir un minimum de 500 caractères'}
end
