require 'rails_helper'

RSpec.describe "requests/index", type: :view do
  before(:each) do
    assign(:requests, [
      Request.create!(
        :latitude => 2.5,
        :longitude => 3.5,
        :name => "Name",
        :address => "Address",
        :item => "Item"
      ),
      Request.create!(
        :latitude => 2.5,
        :longitude => 3.5,
        :name => "Name",
        :address => "Address",
        :item => "Item"
      )
    ])
  end

  it "renders a list of requests" do
    render
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => 3.5.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Item".to_s, :count => 2
  end
end
