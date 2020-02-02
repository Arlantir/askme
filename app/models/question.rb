class Question < ApplicationRecord

  belongs_to :user

  validates :text, :user, length: { maximum: 255 }, presence: true
end
