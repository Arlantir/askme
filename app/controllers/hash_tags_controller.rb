class HashTagsController < ApplicationController
  before_action :load_hashtag, only: %i[show]

  def show
    @hashtag_questions = @hashtags.questions
  end

  private

  def load_hashtag
    @hashtags = HashTag.find(params[:id])
  end
end