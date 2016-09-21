require 'rails_helper'

RSpec.describe "requests/new", type: :view do
  before(:each) do
    assign(:request, Request.new(
      :latitude => 1.5,
      :longitude => 1.5,
      :name => "MyString",
      :address => "MyString",
      :item => "MyString"
    ))
  end

  it "renders new request form" do
    render

    assert_select "form[action=?][method=?]", requests_path, "post" do

      assert_select "input#request_latitude[name=?]", "request[latitude]"

      assert_select "input#request_longitude[name=?]", "request[longitude]"

      assert_select "input#request_name[name=?]", "request[name]"

      assert_select "input#request_address[name=?]", "request[address]"

      assert_select "input#request_item[name=?]", "request[item]"
    end
  end
end
