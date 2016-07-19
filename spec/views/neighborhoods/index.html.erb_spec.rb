require 'rails_helper'

RSpec.describe "neighborhoods/index", type: :view do
  before(:each) do
    assign(:neighborhoods, [
      Neighborhood.create!(
        :name => "Name"
      ),
      Neighborhood.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of neighborhoods" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
