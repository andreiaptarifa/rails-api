class ArticlesController < ApplicationController
  def index
    render json: Article.all
  end

  def show
  end
end
