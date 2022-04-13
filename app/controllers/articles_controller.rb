class ArticlesController < ApplicationController
  include Paginable
  def index
    paginated = paginate(Article.recent)

    options = { meta: paginated.meta.to_h, links: paginated.links.to_h }
    render json: serializer.new(paginated.items, options)
  end

  def serializer
    ArticleSerializer
  end

  def show
  end
end
