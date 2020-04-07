class HashTag < ApplicationRecord
  has_many :question_hash_tags
  has_many :questions, through: :question_hash_tags

  scope :having_questions, -> { joins(:question_hash_tags).distinct }
end
