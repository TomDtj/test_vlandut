require 'rails_helper'

RSpec.describe "product_news/index", :type => :view do
  before(:each) do
    assign(:product_news, [
      ProductNew.create!(
        :title => "Title",
        :description => "MyText",
        :image_url => "Image Url",
        :price => "9.99"
      ),
      ProductNew.create!(
        :title => "Title",
        :description => "MyText",
        :image_url => "Image Url",
        :price => "9.99"
      )
    ])
  end

  it "renders a list of product_news" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Image Url".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
