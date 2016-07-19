require 'rails_helper'

RSpec.describe "neighborhoods/edit", type: :view do
  before(:each) do
    @neighborhood = assign(:neighborhood, Neighborhood.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit neighborhood form" do
    render

    assert_select "form[action=?][method=?]", neighborhood_path(@neighborhood), "post" do

      assert_select "input#neighborhood_name[name=?]", "neighborhood[name]"
    end
  end
end
