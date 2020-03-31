class HashTag < ApplicationController

  before_action :load_hashtag, only: %i[show]

  def index
    @hashtags = HashTag.all
  end

  private

  def load_hashtag
    @hashtags ||= HashTag.find params[:id]
  end
end