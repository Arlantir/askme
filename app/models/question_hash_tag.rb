class QuestionHashTag < ApplicationRecord
  belongs_to :question
  belongs_to :hash_tag, dependent: :destroy
end
