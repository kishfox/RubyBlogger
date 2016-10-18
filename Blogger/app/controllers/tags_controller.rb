class TagsController < ApplicationController
  before_filter :require_login, only: [:destroy]

  def show
    @tag = Tag.find(params[:id])
  end
  def index
    @tags = Tag.all
  end
  def destroy
    @tag = Tag.find(params[:id]).destroy
    redirect_to '/tags'
  end
end
