require 'rails_helper'

RSpec.describe ProductNew, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
describe "price"  do

  before do
    @productNew = ProductNew.new(:title =>"My Book Title",
    :description =>"yyy",:image_url=>"zzz.jpg")
  end

  it  "should invalid  if product price less then 0.01" do
    @productNew.price = 0
    #@productNew.invalid?.should be_true
    expect(true).to @productNew.invalid?
  end
  it  "should valid  if product price greater then 0.01" do
    @productNew.price = 1
    #@productNew.valid?.should be_true
    expect(true).to @productNew.valid?
  end
end
