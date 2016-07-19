require 'rails_helper'

RSpec.describe "neighborhoods/show", type: :view do
  before(:each) do
    @neighborhood = assign(:neighborhood, Neighborhood.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
