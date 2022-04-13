class ArticlesController < ApplicationController
  include Paginable
  def index
    @paginated = paginate(Article.recent)
    render_collection(@paginated)
  end

  def serializer
    ArticleSerializer
  end

  def show
    @article = Article.find(params[:id])
    render json: serializer.new(@article)
  end
end
