class Question < ApplicationRecord
  belongs_to :user
  belongs_to :author, class_name: 'User', optional: true

  has_many :question_hash_tags
  has_many :hash_tags, through: :question_hash_tags

  validates :text, length: { maximum: 255 }, presence: true

  after_commit :create_hash_tags, on: %i[create update destroy]

  def create_hash_tags
    extract_name_hash_tags.each do |name|
      hash_tags.create(name: name)
    end
  end

  def extract_name_hash_tags(description)
    description.scan(/#\w+/).map{ |name| name.gsub("#", "") }
  end
end
