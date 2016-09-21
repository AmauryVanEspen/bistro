require 'rails_helper'

RSpec.describe "requests/edit", type: :view do
  before(:each) do
    @request = assign(:request, Request.create!(
      :latitude => 1.5,
      :longitude => 1.5,
      :name => "MyString",
      :address => "MyString",
      :item => "MyString"
    ))
  end

  it "renders the edit request form" do
    render

    assert_select "form[action=?][method=?]", request_path(@request), "post" do

      assert_select "input#request_latitude[name=?]", "request[latitude]"

      assert_select "input#request_longitude[name=?]", "request[longitude]"

      assert_select "input#request_name[name=?]", "request[name]"

      assert_select "input#request_address[name=?]", "request[address]"

      assert_select "input#request_item[name=?]", "request[item]"
    end
  end
end
