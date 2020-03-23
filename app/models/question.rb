class Question < ApplicationRecord
  belongs_to :user
  belongs_to :author, class_name: 'User', optional: true

  has_many :question_hash_tags
  has_many :hash_tags, through: :question_hash_tags

  validates :text, length: { maximum: 255 }, presence: true

  after_commit :create_hash_tags, on: %i[create update]

  def create_hash_tags
    text.scan(/#[[:word:]-]+/).map do |str|
      str.gsub("#", "")
      hash_tags.create(name: str)
    end
  end
end
