class HashTagsController < ApplicationController

  before_action :load_hashtag, only: %i[show]

  def show
    @hashtag_questions = @hashtag.questions.name
  end

  private

  def load_question
    @hashtag = HashTag.find(params[:name])
  end
end