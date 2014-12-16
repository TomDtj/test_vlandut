require 'rails_helper'

RSpec.describe "product_news/edit", :type => :view do
  before(:each) do
    @product_new = assign(:product_new, ProductNew.create!(
      :title => "MyString",
      :description => "MyText",
      :image_url => "MyString",
      :price => "9.99"
    ))
  end

  it "renders the edit product_new form" do
    render

    assert_select "form[action=?][method=?]", product_new_path(@product_new), "post" do

      assert_select "input#product_new_title[name=?]", "product_new[title]"

      assert_select "textarea#product_new_description[name=?]", "product_new[description]"

      assert_select "input#product_new_image_url[name=?]", "product_new[image_url]"

      assert_select "input#product_new_price[name=?]", "product_new[price]"
    end
  end
end
