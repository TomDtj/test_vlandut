require 'rails_helper'

RSpec.describe "ProductNews", :type => :request do
  describe "GET /product_news" do
    it "works! (now write some real specs)" do
      get product_news_path
      expect(response).to have_http_status(200)
    end
  end
end
