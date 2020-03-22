class HashTagsController < ApplicationController

  def index
    @hash_tags = HashTags.all
  end
end