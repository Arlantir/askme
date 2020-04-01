class HashTag < ApplicationController

  before_action :load_hashtag, onli: %i[show]

  def show
    @questions = @hashtag.question.name
  end

  private

  def load_question
    @hashtag = HashTag.find(params[:id])
  end
end