require 'rails_helper'

RSpec.describe ArticlesController, type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/articles"
      expect(response).to have_http_status(:success)
    end

    it 'returns a proper JSON' do
      article = create :article
      get '/articles'
      body = JSON.parse(response.body)
      expect(body).to eq(
        data: [
          {
            id: article.id,
            type: 'articles',
            attributes: {
              title: article.title,
              slug: article.slug,
              content: article.content
            }
          }
        ]
      )
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/articles/show"
      expect(response).to have_http_status(:success)
    end
  end

end
