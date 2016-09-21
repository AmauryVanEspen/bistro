require 'rails_helper'

RSpec.describe "requests/show", type: :view do
  before(:each) do
    @request = assign(:request, Request.create!(
      :latitude => 2.5,
      :longitude => 3.5,
      :name => "Name",
      :address => "Address",
      :item => "Item"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3.5/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Item/)
  end
end
